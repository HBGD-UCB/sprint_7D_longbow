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

**Outcome Variable:** sstunted

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

agecat      studyid                 country        hfoodsec                sstunted   n_cell       n
----------  ----------------------  -------------  ---------------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                    0      153     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                    1        4     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure           0        3     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure           1        1     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure                  0       26     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure                  1        1     188
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                    0        0     105
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                    1        0     105
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure           0       11     105
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure           1        0     105
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure                  0       90     105
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure                  1        4     105
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                    0      150     170
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                    1        4     170
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure           0        2     170
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure           1        0     170
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                  0       13     170
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                  1        1     170
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                    0       76      98
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                    1        0      98
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure           0        9      98
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure           1        0      98
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                  0       11      98
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                  1        2      98
Birth       ki0047075b-MAL-ED       PERU           Food Secure                    0       27     107
Birth       ki0047075b-MAL-ED       PERU           Food Secure                    1        0     107
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure           0       25     107
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure           1        0     107
Birth       ki0047075b-MAL-ED       PERU           Food Insecure                  0       55     107
Birth       ki0047075b-MAL-ED       PERU           Food Insecure                  1        0     107
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                    0      107     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                    1        0     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure           0       17     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure           1        0     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                  0       70     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                  1        1     195
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                    0        3      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                    1        0      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure           0       21      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure           1        0      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                  0        4      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                  1        0      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                    0       14      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                    1        0      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure           0        9      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure           1        0      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                  0        3      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                  1        1      27
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    0    10962   25210
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    1     1032   25210
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           0     7826   25210
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           1      844   25210
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  0     4074   25210
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  1      472   25210
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    0      734    1638
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    1       58    1638
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           0      560    1638
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           1       58    1638
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  0      216    1638
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  1       12    1638
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                    0      155     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                    1        5     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure           0        4     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure           1        0     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                  0       29     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                  1        0     193
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                    0        3     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                    1        0     129
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure           0       11     129
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure           1        0     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                  0      115     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                  1        0     129
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                    0      183     212
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                    1        7     212
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure           0        5     212
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure           1        0     212
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                  0       16     212
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                  1        1     212
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                    0       94     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                    1        0     128
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure           0       15     128
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure           1        0     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                  0       19     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                  1        0     128
6 months    ki0047075b-MAL-ED       PERU           Food Secure                    0       24     111
6 months    ki0047075b-MAL-ED       PERU           Food Secure                    1        3     111
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure           0       27     111
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure           1        1     111
6 months    ki0047075b-MAL-ED       PERU           Food Insecure                  0       52     111
6 months    ki0047075b-MAL-ED       PERU           Food Insecure                  1        4     111
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                    0      127     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                    1        2     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure           0       17     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure           1        1     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                  0       78     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                  1        3     228
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                    0       77     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                    1        3     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure           0      391     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure           1       26     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                  0       34     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                  1        6     537
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                    0      416     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                    1       11     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure           0      196     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure           1        8     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                  0       80     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                  1        4     715
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                    0      770    1090
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                    1       20    1090
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure           0      144    1090
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure           1        8    1090
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                  0      142    1090
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                  1        6    1090
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    0    15938   33537
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    1      871   33537
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           0    10481   33537
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           1      707   33537
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  0     5083   33537
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  1      457   33537
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    0     4522    9380
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    1      260    9380
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           0     3188    9380
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           1      188    9380
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  0     1149    9380
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  1       73    9380
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                    0      144     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                    1       17     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure           0        2     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure           1        2     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                  0       23     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                  1        6     194
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                    0        3     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                    1        0     129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure           0       11     129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure           1        0     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                  0      115     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                  1        0     129
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                    0      166     212
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                    1       24     212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure           0        5     212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure           1        0     212
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                  0       14     212
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                  1        3     212
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                    0       91     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                    1        3     128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure           0       15     128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure           1        0     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                  0       16     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                  1        3     128
24 months   ki0047075b-MAL-ED       PERU           Food Secure                    0       23     107
24 months   ki0047075b-MAL-ED       PERU           Food Secure                    1        3     107
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure           0       25     107
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure           1        2     107
24 months   ki0047075b-MAL-ED       PERU           Food Insecure                  0       50     107
24 months   ki0047075b-MAL-ED       PERU           Food Insecure                  1        4     107
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                    0      117     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                    1       12     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure           0       14     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure           1        4     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                  0       73     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                  1        8     228
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                    0       61     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                    1        7     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure           0      258     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure           1       70     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                  0       17     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                  1       16     429
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                    0      314     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                    1       20     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure           0      114     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure           1       10     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                  0       51     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                  1        5     514
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                    0      632     976
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                    1       66     976
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure           0      122     976
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure           1       16     976
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                  0      120     976
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                  1       20     976
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    0     6710   16405
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    1     1031   16405
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           0     4658   16405
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           1      858   16405
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  0     2475   16405
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  1      673   16405
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    0     4242    9204
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    1      444    9204
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           0     3018    9204
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           1      302    9204
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  0     1099    9204
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  1       99    9204


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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/13b9a11c-db93-4558-abc6-4116d649319d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/13b9a11c-db93-4558-abc6-4116d649319d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/13b9a11c-db93-4558-abc6-4116d649319d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/13b9a11c-db93-4558-abc6-4116d649319d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level     baseline_level     estimate     ci_lower    ci_upper
----------  ----------------------  -----------  ---------------------  ---------------  ----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0860430    0.0783644   0.0937216
Birth       kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0973472    0.0879279   0.1067664
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1038275    0.0897986   0.1178565
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0732323    0.0396415   0.1068232
Birth       kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0938511    0.0574751   0.1302272
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0526316    0.0149521   0.0903111
6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.0253165    0.0098111   0.0408218
6 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.0526316    0.0023831   0.1028800
6 months    ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.0405405   -0.0044363   0.0855174
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0518175    0.0469578   0.0566771
6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0631927    0.0565297   0.0698558
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.0824910    0.0717703   0.0932116
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0543706    0.0454105   0.0633306
6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0556872    0.0428787   0.0684957
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0597381    0.0413147   0.0781616
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.1029412    0.0306300   0.1752524
24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.2134146    0.1690228   0.2578065
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.4848485    0.3141348   0.6555622
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.0598802    0.0344101   0.0853504
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0806452    0.0326728   0.1286175
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.0892857    0.0145275   0.1640439
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.0945559    0.0638263   0.1252854
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.1159420    0.0403232   0.1915608
24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.1428571    0.0607989   0.2249154
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.1331869    0.1209449   0.1454289
24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.1555475    0.1403928   0.1707022
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.2137865    0.1921467   0.2354263
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0947503    0.0810375   0.1084631
24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0909639    0.0755716   0.1063561
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0826377    0.0573167   0.1079587


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0931376   0.0875494   0.0987258
Birth       kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0781441   0.0560930   0.1001951
6 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.0311927   0.0165846   0.0458008
6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0606792   0.0568149   0.0645436
6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0555437   0.0486186   0.0624688
24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2167832   0.1777459   0.2558205
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0680934   0.0462948   0.0898920
24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1045082   0.0773382   0.1316782
24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1561719   0.1470652   0.1652786
24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0918079   0.0822976   0.1013182


### Parameter: RR


agecat      studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1313779   0.9941605    1.287535
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.2066933   1.0263883    1.418672
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.2815534   0.7048114    2.330239
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.7186933   0.3087008    1.673206
6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000    1.000000
6 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       2.0789474   0.6686982    6.463338
6 months    ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.6013514   0.4509450    5.686560
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.2195249   1.0640752    1.397684
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.5919527   1.3570833    1.867471
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0242162   0.7728935    1.357262
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.0987221   0.7721123    1.563491
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       2.0731707   0.9964838    4.313203
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       4.7099567   2.1466835   10.333937
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.3467742   0.6481889    2.798260
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.4910714   0.5829558    3.813829
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.2261748   0.5916757    2.541096
24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.5108225   0.7808936    2.923042
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1678886   1.0246880    1.331102
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.6051615   1.4049695    1.833879
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       0.9600374   0.7697670    1.197339
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8721631   0.6218765    1.223183


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0070946    0.0014216   0.0127676
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0049118   -0.0177090   0.0275325
6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0058762   -0.0043863   0.0161387
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0088618    0.0052234   0.0125002
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0011732   -0.0056389   0.0079852
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.1138420    0.0424616   0.1852225
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0082131   -0.0085443   0.0249706
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0099523   -0.0082644   0.0281690
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0229850    0.0140414   0.0319285
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0029424   -0.0121161   0.0062313


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0761735    0.0133704   0.1349789
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0628551   -0.2801939   0.3139785
6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.1883842   -0.2003166   0.4512113
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.1460429    0.0847738   0.2032103
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0211213   -0.1091225   0.1360705
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.5251423    0.0701575   0.7574968
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.1206159   -0.1598580   0.3332663
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0952301   -0.0953148   0.2526271
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.1471774    0.0879912   0.2025226
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0320496   -0.1367483   0.0630059
