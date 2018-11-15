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
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    0     5481   12605
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    1      516   12605
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           0     3913   12605
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           1      422   12605
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  0     2037   12605
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  1      236   12605
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    0      367     819
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    1       29     819
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           0      280     819
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           1       29     819
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  0      108     819
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  1        6     819
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
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                    0      385     545
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                    1       10     545
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure           0       72     545
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure           1        4     545
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                  0       71     545
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                  1        3     545
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    0     7979   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    1      436   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           0     5248   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           1      354   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  0     2545   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  1      229   16791
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    0     2308    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    1      134    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           0     1633    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           1       96    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  0      585    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  1       37    4793
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
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                    0      316     488
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                    1       33     488
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure           0       61     488
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure           1        8     488
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                  0       60     488
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                  1       10     488
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    0     3359    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    1      516    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           0     2332    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           1      429    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  0     1240    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  1      338    8214
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    0     2173    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    1      226    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           0     1549    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           1      156    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  0      559    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  1       50    4713


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
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
![](/tmp/5d342fb4-89e4-4030-9b85-a0b69b52a638/a697a163-706f-4b48-8d2c-8a0c3257d1ee/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5d342fb4-89e4-4030-9b85-a0b69b52a638/a697a163-706f-4b48-8d2c-8a0c3257d1ee/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5d342fb4-89e4-4030-9b85-a0b69b52a638/a697a163-706f-4b48-8d2c-8a0c3257d1ee/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5d342fb4-89e4-4030-9b85-a0b69b52a638/a697a163-706f-4b48-8d2c-8a0c3257d1ee/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0860430   0.0783644   0.0937216
Birth       kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0973472   0.0879279   0.1067664
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1038275   0.0897986   0.1178565
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0732323   0.0396415   0.1068232
Birth       kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0938511   0.0574751   0.1302272
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0526316   0.0149521   0.0903111
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0518122   0.0469616   0.0566629
6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0631917   0.0565245   0.0698589
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.0825523   0.0718451   0.0932594
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0548731   0.0459034   0.0638427
6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0555234   0.0433035   0.0677434
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0594855   0.0410416   0.0779295
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.1029412   0.0306300   0.1752524
24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.2134146   0.1690228   0.2578065
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.4848485   0.3141348   0.6555622
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.0598802   0.0344101   0.0853504
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0806452   0.0326728   0.1286175
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.0892857   0.0145275   0.1640439
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.0945559   0.0638263   0.1252854
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.1159420   0.0403232   0.1915608
24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.1428571   0.0607989   0.2249154
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.1331613   0.1209224   0.1454002
24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.1553785   0.1402208   0.1705362
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.2141952   0.1926103   0.2357801
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0942059   0.0806131   0.1077987
24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0914956   0.0761348   0.1068564
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0821018   0.0573061   0.1068975


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0931376   0.0875494   0.0987258
Birth       kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0781441   0.0560930   0.1001951
6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0606873   0.0568242   0.0645503
6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0557062   0.0489296   0.0624829
24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2167832   0.1777459   0.2558205
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0680934   0.0462948   0.0898920
24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1045082   0.0773382   0.1316782
24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1561967   0.1470936   0.1652999
24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0916614   0.0822542   0.1010685


### Parameter: RR


agecat      studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1313779   0.9941605    1.287535
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.2066933   1.0263883    1.418672
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.2815534   0.7048114    2.330239
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.7186933   0.3087008    1.673206
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.2196291   1.0642499    1.397694
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.5932967   1.3587045    1.868393
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0118522   0.7699992    1.329670
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.0840572   0.7610886    1.544078
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
24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1668443   1.0236842    1.330025
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.6085394   1.4083425    1.837195
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       0.9712299   0.7793756    1.210312
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8715143   0.6235759    1.218035


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0070946    0.0014216   0.0127676
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0049118   -0.0177090   0.0275325
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0088750    0.0052395   0.0125105
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0008332   -0.0058553   0.0075216
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.1138420    0.0424616   0.1852225
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0082131   -0.0085443   0.0249706
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0099523   -0.0082644   0.0281690
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0230354    0.0140899   0.0319810
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0025446   -0.0116783   0.0065892


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0761735    0.0133704   0.1349789
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0628551   -0.2801939   0.3139785
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.1462421    0.0850540   0.2033381
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0149567   -0.1125180   0.1278251
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.5251423    0.0701575   0.7574968
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.1206159   -0.1598580   0.3332663
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0952301   -0.0953148   0.2526271
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.1474771    0.0882885   0.2028232
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0277604   -0.1322078   0.0670516
