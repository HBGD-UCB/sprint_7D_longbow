---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
params:
  roles:
    value:
      - exclude
      - strata
      - id
      - W
      - A
      - Y
  data: 
    value: 
      type: 'web'
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
  nodes:
    value:
      strata: ['study_id', 'mrace']
      id: ['subjid']
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
  script_params:
    value:
      parallelize:
        input: checkbox
        value: FALSE
      count_A:
        input: checkbox
        value: TRUE
      count_Y:
        input: checkbox
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** hfoodsec

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                 country        hfoodsec                wast_rec90d   n_cell       n
------------  ----------------------  -------------  ---------------------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0       31     100
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       48     100
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        1     100
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        2     100
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     0        7     100
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     1       11     100
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       0        0      14
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       1        0      14
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0        0      14
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        0      14
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     0        3      14
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     1       11      14
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       0       54     159
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       1       88     159
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        3     159
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        2     159
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     0        6     159
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     1        6     159
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       0        9      62
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       1       35      62
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0        1      62
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        5      62
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     0        1      62
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     1       11      62
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       0        2      18
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       1        6      18
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0        0      18
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        0      18
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     0        2      18
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     1        8      18
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0        6      70
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       38      70
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0        2      70
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        1      70
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0        4      70
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1       19      70
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0       21     421
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1       26     421
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0      161     421
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1      186     421
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     0       20     421
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     1        7     421
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0       65     311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1      116     311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0       37     311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       50     311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     0       15     311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     1       28     311
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      364    1088
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      412    1088
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0       64    1088
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       80    1088
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       90    1088
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1       78    1088
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0     3209   11290
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1     2064   11290
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0     2365   11290
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1     1432   11290
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0     1458   11290
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1      762   11290
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0     1490    4030
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      528    4030
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0     1091    4030
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1      405    4030
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0      397    4030
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1      119    4030
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0        8      47
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       30      47
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        0      47
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        1      47
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     0        2      47
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     1        6      47
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                       0        0       8
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                       1        0       8
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0        0       8
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        0       8
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                     0        0       8
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                     1        8       8
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                       0       19      71
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                       1       45      71
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        2      71
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        1      71
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                     0        1      71
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                     1        3      71
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                       0        4      26
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                       1       15      26
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0        1      26
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        2      26
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                     0        0      26
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                     1        4      26
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                       0        0       6
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                       1        2       6
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0        0       6
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        0       6
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                     0        0       6
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                     1        4       6
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0        1      24
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       11      24
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0        1      24
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        0      24
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0        1      24
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1       10      24
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0        7     223
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1       20     223
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0       51     223
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1      133     223
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     0        6     223
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     1        6     223
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0       10     198
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1      105     198
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0        8     198
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       47     198
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     0        3     198
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     1       25     198
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      114     346
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      156     346
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0        8     346
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       26     346
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       24     346
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1       18     346
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0      602    5644
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1     2064    5644
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0      464    5644
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1     1432    5644
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0      320    5644
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1      762    5644
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0      240    1098
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      286    1098
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0      178    1098
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1      256    1098
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0       70    1098
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1       68    1098
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0       23      53
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       18      53
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        1      53
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        1      53
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     0        5      53
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     1        5      53
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       0        0       6
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       1        0       6
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0        0       6
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        0       6
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     0        3       6
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     1        3       6
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       0       35      88
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       1       43      88
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        1      88
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        1      88
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     0        5      88
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     1        3      88
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       0        5      36
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       1       20      36
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0        0      36
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        3      36
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     0        1      36
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     1        7      36
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       0        2      12
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       1        4      12
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0        0      12
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        0      12
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     0        2      12
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     1        4      12
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0        5      46
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       27      46
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0        1      46
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        1      46
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0        3      46
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1        9      46
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0       14     198
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1        6     198
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0      110     198
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1       53     198
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     0       14     198
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     1        1     198
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0       55     113
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1       11     113
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0       29     113
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1        3     113
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     0       12     113
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     1        3     113
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      250     742
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      256     742
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0       56     742
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       54     742
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       66     742
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1       60     742
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0     2607    5646
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1        0    5646
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0     1901    5646
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1        0    5646
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0     1138    5646
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1        0    5646
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0     1250    2932
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      242    2932
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0      913    2932
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1      149    2932
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0      327    2932
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1       51    2932


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/191d6f49-5770-48fb-aaa4-5a8ec9de363e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/191d6f49-5770-48fb-aaa4-5a8ec9de363e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/191d6f49-5770-48fb-aaa4-5a8ec9de363e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/191d6f49-5770-48fb-aaa4-5a8ec9de363e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.5531915   0.3813656   0.7250173
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.5360231   0.4817521   0.5902940
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.2592593   0.0762417   0.4422768
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.6493505   0.5800097   0.7186913
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.5893326   0.4824369   0.6962284
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.7339492   0.5989161   0.8689824
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.5322633   0.4803068   0.5842198
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.5471337   0.4606770   0.6335903
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.4669644   0.3868642   0.5470646
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.3856901   0.3674433   0.4039369
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.3749423   0.3541986   0.3956861
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.3393424   0.3145384   0.3641465
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.2620060   0.2342957   0.2897164
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.2726601   0.2413676   0.3039527
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.2277879   0.1784112   0.2771645
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.7407407   0.5743234   0.9071581
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.7228261   0.6582010   0.7874512
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.5000000   0.2151871   0.7848129
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.5777778   0.4941229   0.6614327
0-6 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.7647059   0.5601085   0.9693032
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.4285714   0.2138108   0.6433320
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.7786248   0.7569490   0.8003006
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.7615240   0.7361042   0.7869438
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.7164950   0.6840106   0.7489795
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.5438234   0.4841572   0.6034896
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.5872430   0.5229547   0.6515312
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.4926639   0.3810733   0.6042545
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.5046984   0.4400876   0.5693091
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.4387022   0.3345273   0.5428771
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.4586766   0.3621572   0.5551961
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1609854   0.1356111   0.1863597
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.1381440   0.1103450   0.1659430
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1269511   0.0813294   0.1725728


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5238971   0.4781525   0.5696416
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.3771479   0.3646213   0.3896745
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2610422   0.2416447   0.2804396
0-6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5780347   0.5039701   0.6520993
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.7544295   0.7385490   0.7703099
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.5555556   0.5139520   0.5971591
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.4986523   0.4432451   0.5540595
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1507503   0.1330825   0.1684182


### Parameter: RR


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       0.9689648   0.6988560   1.3434709
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       0.4686610   0.2166940   1.0136097
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.9075725   0.7349927   1.1206748
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.1302821   0.9134546   1.3985781
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.0279380   0.8537327   1.2376901
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       0.8773184   0.7201951   1.0687209
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       0.9721337   0.9040393   1.0453571
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       0.8798319   0.8065361   0.9597885
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0406636   0.8910553   1.2153911
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8693994   0.6833725   1.1060664
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       0.9758152   0.7662232   1.2427389
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       0.6750000   0.3659085   1.2451884
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.3235294   0.9763709   1.7941236
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       0.7417582   0.4402829   1.2496630
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       0.9780372   0.9364391   1.0214831
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       0.9202058   0.8725212   0.9704964
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0798413   0.9251579   1.2603872
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.9059262   0.7047418   1.1645433
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.8692364   0.6637841   1.1382796
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       0.9088134   0.7104731   1.1625236
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       0.8581150   0.6644712   1.1081916
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.7885875   0.5326370   1.1675312


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                -0.0330015   -0.1926012    0.1265982
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0255563   -0.0714347    0.0203221
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0083662   -0.0366627    0.0199303
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                -0.0085422   -0.0219363    0.0048519
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0009639   -0.0200746    0.0181469
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                -0.0277363   -0.1843204    0.1288479
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0002569   -0.0392617    0.0397755
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                -0.0241953   -0.0407259   -0.0076647
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0117321   -0.0310812    0.0545455
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0060461   -0.0426388    0.0305466
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0102350   -0.0274635    0.0069934


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                -0.0634412   -0.4184141    0.2026961
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0409691   -0.1174293    0.0302593
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0159692   -0.0715712    0.0367477
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                -0.0226494   -0.0588035    0.0122702
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0036923   -0.0796277    0.0669022
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                -0.0389005   -0.2835555    0.1591214
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0004444   -0.0703146    0.0665256
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                -0.0320710   -0.0543002   -0.0103105
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0211178   -0.0590766    0.0952399
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0121248   -0.0883308    0.0587451
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0678940   -0.1883191    0.0403271
