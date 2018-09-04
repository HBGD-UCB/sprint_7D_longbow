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

**Outcome Variable:** stunted

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

agecat      studyid                 country        hfoodsec                stunted   n_cell       n
----------  ----------------------  -------------  ---------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0      133     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1       24     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          0        3     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          1        1     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 0       23     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 1        4     188
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                   0        0     105
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                   1        0     105
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          0       10     105
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          1        1     105
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0       84     105
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1       10     105
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                   0      133     170
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                   1       21     170
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        2     170
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        0     170
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                 0       11     170
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                 1        3     170
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                   0       70      98
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                   1        6      98
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0        9      98
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        0      98
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                 0       10      98
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                 1        3      98
Birth       ki0047075b-MAL-ED       PERU           Food Secure                   0       22     107
Birth       ki0047075b-MAL-ED       PERU           Food Secure                   1        5     107
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure          0       22     107
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure          1        3     107
Birth       ki0047075b-MAL-ED       PERU           Food Insecure                 0       50     107
Birth       ki0047075b-MAL-ED       PERU           Food Insecure                 1        5     107
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0       94     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1       13     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       17     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 0       65     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 1        6     195
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                   0        3      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                   1        0      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          0       21      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          1        0      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 0        3      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 1        1      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   0       14      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   1        0      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          0        5      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          1        4      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 0        3      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 1        1      27
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     8466   25210
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1     3528   25210
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     5944   25210
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1     2726   25210
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     3054   25210
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1     1492   25210
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0      552    1638
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1      240    1638
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0      428    1638
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1      190    1638
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0      164    1638
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1       64    1638
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0      128     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1       32     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          0        2     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          1        2     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 0       25     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 1        4     193
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                   0        3     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                   1        0     129
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0      113     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1        2     129
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                   0      152     212
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                   1       38     212
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        5     212
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        0     212
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                 0       14     212
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                 1        3     212
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                   0       91     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                   1        3     128
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0       15     128
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        0     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                 0       15     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                 1        4     128
6 months    ki0047075b-MAL-ED       PERU           Food Secure                   0       19     111
6 months    ki0047075b-MAL-ED       PERU           Food Secure                   1        8     111
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure          0       22     111
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure          1        6     111
6 months    ki0047075b-MAL-ED       PERU           Food Insecure                 0       41     111
6 months    ki0047075b-MAL-ED       PERU           Food Insecure                 1       15     111
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0      104     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1       25     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       15     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        3     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 0       65     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 1       16     228
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                   0       60     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                   1       20     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          0      308     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          1      109     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 0       25     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 1       15     537
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   0      342     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   1       85     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      158     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          1       46     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 0       65     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 1       19     715
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                   0      628    1090
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                   1      162    1090
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          0      112    1090
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          1       40    1090
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                 0      120    1090
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                 1       28    1090
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0    13034   33537
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1     3775   33537
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     8238   33537
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1     2950   33537
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     3831   33537
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1     1709   33537
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0     3578    9380
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1     1204    9380
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0     2493    9380
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1      883    9380
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0      935    9380
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1      287    9380
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0       90     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1       71     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          0        1     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          1        3     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 0       12     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 1       17     194
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                   0        3     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                   1        0     129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0      113     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1        2     129
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                   0      108     212
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                   1       82     212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        5     212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        0     212
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                 0       10     212
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                 1        7     212
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                   0       77     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                   1       17     128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0       13     128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        2     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                 0        9     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                 1       10     128
24 months   ki0047075b-MAL-ED       PERU           Food Secure                   0       14     107
24 months   ki0047075b-MAL-ED       PERU           Food Secure                   1       12     107
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure          0       20     107
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure          1        7     107
24 months   ki0047075b-MAL-ED       PERU           Food Insecure                 0       33     107
24 months   ki0047075b-MAL-ED       PERU           Food Insecure                 1       21     107
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0       88     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1       41     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       12     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        6     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 0       49     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 1       32     228
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                   0       46     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                   1       22     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          0      136     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          1      192     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 0        9     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 1       24     429
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   0      254     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   1       80     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          0       91     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          1       33     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 0       37     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 1       19     514
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   0      412     976
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   1      286     976
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          0       60     976
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          1       78     976
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                 0       76     976
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                 1       64     976
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     4300   16405
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1     3441   16405
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     2738   16405
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1     2778   16405
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     1353   16405
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1     1795   16405
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0     2841    9204
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1     1845    9204
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0     1984    9204
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1     1336    9204
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0      762    9204
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1      436    9204


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/eb827e2d-12e8-40f0-9800-7a7ad979ac25/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/eb827e2d-12e8-40f0-9800-7a7ad979ac25/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/eb827e2d-12e8-40f0-9800-7a7ad979ac25/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/eb827e2d-12e8-40f0-9800-7a7ad979ac25/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.2968981   0.2844175   0.3093787
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.3101137   0.2954712   0.3247562
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.3435783   0.3238655   0.3632910
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.2997512   0.2469019   0.3526005
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.3024767   0.2468164   0.3581370
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.2612533   0.1793546   0.3431520
6 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                0.2962963   0.1232791   0.4693135
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.2142857   0.0616124   0.3669590
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.2678571   0.1513457   0.3843686
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.2713852   0.1778150   0.3649553
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.2623078   0.2201117   0.3045039
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.4131777   0.2639037   0.5624518
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.1980056   0.1602289   0.2357824
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.2276027   0.1705888   0.2846167
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.2308892   0.1441527   0.3176258
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.2014247   0.1624034   0.2404459
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.2509129   0.1638019   0.3380239
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.1613634   0.0864626   0.2362641
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.2346609   0.2242660   0.2450559
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.2590621   0.2468400   0.2712842
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.3108830   0.2921444   0.3296216
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.2521038   0.2322041   0.2720036
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.2626027   0.2390664   0.2861390
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.2363430   0.2007690   0.2719171
24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.4615385   0.2690159   0.6540610
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.2592593   0.0931838   0.4253347
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.3888889   0.2582528   0.5195249
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.3178295   0.2373006   0.3983583
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.3333333   0.1150804   0.5515863
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.3950617   0.2883657   0.5017577
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.3235294   0.2122072   0.4348516
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.5853659   0.5319876   0.6387441
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.7272727   0.5751441   0.8794013
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.2411786   0.1952897   0.2870676
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.2692553   0.1915961   0.3469146
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.3462898   0.2246332   0.4679464
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.4145419   0.3657160   0.4633679
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.6001108   0.5262371   0.6739846
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.4248432   0.3502325   0.4994539
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.4658872   0.4481085   0.4836658
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.4986966   0.4784309   0.5189622
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.5736354   0.5490321   0.5982386
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.3937947   0.3703184   0.4172709
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.4012306   0.3742295   0.4282317
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.3596990   0.3179195   0.4014785


### Parameter: E(Y)


agecat      studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.3072590   0.2982359   0.3162822
Birth       kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.3015873   0.2659035   0.3372711
6 months    ki0047075b-MAL-ED       PERU           NA                   NA                0.2612613   0.1791629   0.3433597
6 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.2110092   0.1767217   0.2452966
6 months    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.2514834   0.2433398   0.2596271
6 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.2530917   0.2387859   0.2673974
24 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.3738318   0.2817277   0.4659358
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.3464912   0.2845889   0.4083936
24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.4385246   0.3944543   0.4825949
24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.4885096   0.4750791   0.5019401
24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.3929813   0.3757719   0.4101908


### Parameter: RR


agecat      studyid                 country        intervention_level     baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  ----------  ----------  ---------
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.0445123   0.9823713   1.110584
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.1572262   1.0776212   1.242712
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       1.0090924   0.7825701   1.301184
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       0.8715670   0.6094559   1.246405
6 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       0.7232143   0.2878706   1.816924
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       0.9040179   0.4364671   1.872417
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       0.9665516   0.6605552   1.414298
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       1.5224773   0.9245365   2.507134
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.1494761   0.8394804   1.573944
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.1660741   0.7655382   1.776174
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       1.2456911   0.8370661   1.853792
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       0.8011102   0.4843949   1.324906
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.1039849   1.0401609   1.171725
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.3248178   1.2305552   1.426301
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       1.0416451   0.9239232   1.174367
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       0.9374830   0.7924801   1.109018
24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       0.5617284   0.2615430   1.206451
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       0.8425926   0.4931961   1.439513
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       1.0487805   0.5197306   2.116366
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       1.2429991   0.8583073   1.800109
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       1.8093126   1.2674186   2.582897
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       2.2479339   1.5028032   3.362521
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.1164145   0.7908943   1.575914
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.4358228   0.9628839   2.141055
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       1.4476481   1.2225954   1.714128
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       1.0248498   0.8307506   1.264299
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.0704235   1.0165634   1.127137
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.2312753   1.1655656   1.300689
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       1.0188827   0.9338926   1.111608
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       0.9134177   0.8038082   1.037974


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0103609    0.0011592   0.0195627
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0018361   -0.0342284   0.0379006
6 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0350350   -0.1837366   0.1136665
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0032287   -0.0899583   0.0835008
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0117846   -0.0128289   0.0363981
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0095845   -0.0115511   0.0307201
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0168225    0.0094518   0.0241932
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0009879   -0.0129011   0.0148768
24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0877067   -0.2536441   0.0782307
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0286618   -0.0259150   0.0832385
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.2312491    0.1279008   0.3345975
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0156307   -0.0126278   0.0438892
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0239827   -0.0028212   0.0507865
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0226224    0.0105110   0.0347338
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0008133   -0.0164174   0.0147907


### Parameter: PAF


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0337205    0.0033504   0.0631651
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0060880   -0.1210569   0.1188128
6 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.1340996   -0.8728000   0.3132305
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0120405   -0.3931929   0.2648355
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0561732   -0.0686285   0.1663997
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0454222   -0.0599241   0.1402981
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0668931    0.0372713   0.0956035
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0039032   -0.0525132   0.0572956
24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.2346154   -0.7713345   0.1394764
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0827200   -0.0891025   0.2274349
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.4168314    0.1952617   0.5773961
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0608650   -0.0557129   0.1645697
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0546895   -0.0080284   0.1135051
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0463091    0.0212020   0.0707721
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0020697   -0.0425718   0.0368589
