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
![](/tmp/900523b1-df45-4889-b503-121321bbba85/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/900523b1-df45-4889-b503-121321bbba85/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/900523b1-df45-4889-b503-121321bbba85/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/900523b1-df45-4889-b503-121321bbba85/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.5531915   0.3813656   0.7250173
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.5360231   0.4817521   0.5902940
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.2592593   0.0762417   0.4422768
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.6408840   0.5711582   0.7106097
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.5747126   0.4686093   0.6808160
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.6511628   0.5086316   0.7936940
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.5321345   0.4798943   0.5843747
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.5527689   0.4625328   0.6430049
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.4648573   0.3816420   0.5480727
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.3856541   0.3674067   0.4039015
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.3749626   0.3542221   0.3957030
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.3394731   0.3146658   0.3642804
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.2654450   0.2377683   0.2931217
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.2779195   0.2467060   0.3091330
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.2487810   0.1999656   0.2975963
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.7407407   0.5743234   0.9071581
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.7228261   0.6582010   0.7874512
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.5000000   0.2151871   0.7848129
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.5777778   0.4941229   0.6614327
0-6 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.7647059   0.5601085   0.9693032
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.4285714   0.2138108   0.6433320
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.7783036   0.7566847   0.7999225
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.7613637   0.7360337   0.7866937
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.7171934   0.6849098   0.7494769
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.5437716   0.4837887   0.6037545
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.5886898   0.5237429   0.6536367
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.4927237   0.3775962   0.6078512
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.5044816   0.4396359   0.5693273
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.4411448   0.3338966   0.5483929
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.4570321   0.3584564   0.5556078
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1609754   0.1356121   0.1863388
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.1381001   0.1103188   0.1658814
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1269353   0.0814197   0.1724510


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
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.8967499   0.7235411   1.1114232
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.0160385   0.7954470   1.2978039
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.0387766   0.8585969   1.2567678
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       0.8735711   0.7122270   1.0714654
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       0.9722769   0.9041845   1.0454971
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       0.8802528   0.8069360   0.9602310
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0469948   0.8990400   1.2192986
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.9372222   0.7507267   1.1700470
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       0.9758152   0.7662232   1.2427389
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       0.6750000   0.3659085   1.2451884
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.3235294   0.9763709   1.7941236
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       0.7417582   0.4402829   1.2496630
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       0.9782348   0.9368085   1.0214930
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       0.9214827   0.8740610   0.9714774
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0826049   0.9263902   1.2651616
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.9061225   0.6999718   1.1729871
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.8744516   0.6642800   1.1511195
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       0.9059440   0.7048594   1.1643947
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       0.8578954   0.6643579   1.1078133
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.7885385   0.5330022   1.1665862


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                -0.0330015   -0.1926012    0.1265982
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0170898   -0.0631310    0.0289515
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0082374   -0.0366512    0.0201764
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                -0.0085062   -0.0219009    0.0048885
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0044028   -0.0235065    0.0147008
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                -0.0277363   -0.1843204    0.1288479
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0002569   -0.0392617    0.0397755
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                -0.0238741   -0.0403316   -0.0074167
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0117839   -0.0313391    0.0549070
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0058293   -0.0425265    0.0308679
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0102251   -0.0274466    0.0069965


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                -0.0634412   -0.4184141    0.2026961
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0273965   -0.1040492    0.0439343
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0157234   -0.0715464    0.0371915
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                -0.0225540   -0.0587098    0.0123670
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0168663   -0.0927127    0.0537156
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                -0.0389005   -0.2835555    0.1591214
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0004444   -0.0703146    0.0665256
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                -0.0316453   -0.0537746   -0.0099807
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0212111   -0.0595924    0.0958526
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0116901   -0.0881106    0.0593632
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0678279   -0.1882065    0.0403550
