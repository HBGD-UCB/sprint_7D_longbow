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

unadjusted

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
![](/tmp/d9f9860d-e7d8-44af-a202-af76f5925199/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d9f9860d-e7d8-44af-a202-af76f5925199/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d9f9860d-e7d8-44af-a202-af76f5925199/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d9f9860d-e7d8-44af-a202-af76f5925199/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.2941471   0.2814357   0.3068585
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.3144175   0.2991416   0.3296935
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.3282006   0.3079382   0.3484630
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.3030303   0.2493889   0.3566717
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.3074434   0.2507179   0.3641688
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.2807018   0.1944590   0.3669445
6 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                0.2962963   0.1232791   0.4693135
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.2142857   0.0616124   0.3669590
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.2678571   0.1513457   0.3843686
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.2500000   0.1550252   0.3449748
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.2613909   0.2191787   0.3036030
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.3750000   0.2248316   0.5251684
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.1990632   0.1611638   0.2369627
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.2254902   0.1681031   0.2828773
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.2261905   0.1366609   0.3157201
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.2050633   0.1652105   0.2449161
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.2631579   0.1640666   0.3622492
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.1891892   0.0998712   0.2785072
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.2245821   0.2144073   0.2347569
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.2636754   0.2510201   0.2763306
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.3084838   0.2886969   0.3282706
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.2517775   0.2318457   0.2717093
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.2615521   0.2377574   0.2853468
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.2348609   0.1983715   0.2713503
24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.4615385   0.2690159   0.6540610
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.2592593   0.0931838   0.4253347
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.3888889   0.2582528   0.5195249
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.3178295   0.2373006   0.3983583
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.3333333   0.1150804   0.5515863
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.3950617   0.2883657   0.5017577
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.3235294   0.2122072   0.4348516
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.5853659   0.5319876   0.6387441
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.7272727   0.5751441   0.8794013
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.2395210   0.1937054   0.2853365
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.2661290   0.1882687   0.3439893
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.3392857   0.2151586   0.4634128
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.4097421   0.3580937   0.4613905
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.5652174   0.4481293   0.6823055
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.4571429   0.3403239   0.5739618
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.4445162   0.4262619   0.4627705
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.5036258   0.4825350   0.5247166
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.5702033   0.5427585   0.5976481
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.3937260   0.3701576   0.4172944
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.4024096   0.3751603   0.4296590
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.3639399   0.3208751   0.4070047


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
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.0689127   1.0032397   1.138885
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.1157705   1.0339887   1.204021
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       1.0145631   0.7861440   1.309351
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       0.9263158   0.6510670   1.317930
6 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       0.7232143   0.2878706   1.816924
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       0.9040179   0.4364671   1.872417
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       1.0455635   0.6919493   1.579889
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       1.5000000   0.8637121   2.605035
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.1327566   0.8243345   1.556574
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.1362745   0.7323705   1.762933
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       1.2833008   0.8400396   1.960456
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       0.9225893   0.5537086   1.537218
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.1740713   1.1052888   1.247134
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.3735903   1.2704928   1.485054
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       1.0388225   0.9201591   1.172789
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       0.9328113   0.7849059   1.108587
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
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.1110887   0.7833260   1.575995
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.4165179   0.9374108   2.140495
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       1.3794466   1.0824103   1.757996
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       1.1156843   0.8390616   1.483504
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.1329751   1.0728794   1.196437
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.2827503   1.2067417   1.363546
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       1.0220550   0.9362365   1.115740
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       0.9243482   0.8115289   1.052852


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0131120    0.0038942   0.0223297
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0014430   -0.0380552   0.0351692
6 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0350350   -0.1837366   0.1136665
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.0181564   -0.0698159   0.1061287
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0107270   -0.0140254   0.0354794
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0059459   -0.0155401   0.0274319
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0269014    0.0198091   0.0339936
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0013142   -0.0126674   0.0152957
24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0877067   -0.2536441   0.0782307
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0286618   -0.0259150   0.0832385
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.2312491    0.1279008   0.3345975
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0172884   -0.0110010   0.0455777
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0287825    0.0005997   0.0569652
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0439934    0.0317295   0.0562573
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0007447   -0.0164625   0.0149732


### Parameter: PAF


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0426739    0.0122092   0.0721991
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0047847   -0.1337581   0.1095171
6 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.1340996   -0.8728000   0.3132305
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.0677083   -0.3254250   0.3442347
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0511319   -0.0743775   0.1619793
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0281783   -0.0791176   0.1248058
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.1069707    0.0785054   0.1345568
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0051925   -0.0516118   0.0589285
24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.2346154   -0.7713345   0.1394764
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0827200   -0.0891025   0.2274349
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.4168314    0.1952617   0.5773961
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0673199   -0.0494277   0.1710795
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0656348   -0.0010605   0.1278866
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0900563    0.0644582   0.1149541
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0018949   -0.0426986   0.0373120
