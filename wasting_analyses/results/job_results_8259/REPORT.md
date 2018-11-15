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

**Outcome Variable:** wasted

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

agecat      studyid                 country        hfoodsec                wasted   n_cell       n
----------  ----------------------  -------------  ---------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                  0      125     178
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                  1       26     178
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         0        3     178
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         1        0     178
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure                0       19     178
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure                1        5     178
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                  0        0     102
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                  1        0     102
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         0       11     102
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         1        0     102
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure                0       87     102
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure                1        4     102
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                  0      128     167
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                  1       23     167
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         0        1     167
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         1        1     167
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                0       10     167
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                1        4     167
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                  0       63      96
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                  1       12      96
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         0        8      96
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         1        1      96
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                0       11      96
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                1        1      96
Birth       ki0047075b-MAL-ED       PERU           Food Secure                  0       25     105
Birth       ki0047075b-MAL-ED       PERU           Food Secure                  1        1     105
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure         0       24     105
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure         1        0     105
Birth       ki0047075b-MAL-ED       PERU           Food Insecure                0       53     105
Birth       ki0047075b-MAL-ED       PERU           Food Insecure                1        2     105
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  0       99     193
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  1        7     193
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         0       16     193
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         1        1     193
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                0       66     193
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                1        4     193
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                  0        3      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                  1        0      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         0       16      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         1        5      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                0        2      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                1        2      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  0       11      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  1        3      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         0        6      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         1        0      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                0        3      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                1        0      23
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                  0     9098   20578
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                  1      850   20578
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure         0     6334   20578
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure         1      670   20578
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                0     3246   20578
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                1      380   20578
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                  0      634    1360
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                  1       34    1360
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure         0      472    1360
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure         1       28    1360
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                0      182    1360
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                1       10    1360
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                  0      155     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                  1        5     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         0        4     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         1        0     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                0       27     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                1        2     193
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                  0        3     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                  1        0     129
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         0       11     129
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         1        0     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                0      115     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                1        0     129
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                  0      175     212
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                  1       15     212
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         0        3     212
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         1        2     212
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                0       16     212
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                1        1     212
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                  0       93     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                  1        1     128
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         0       14     128
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         1        1     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                0       19     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                1        0     128
6 months    ki0047075b-MAL-ED       PERU           Food Secure                  0       27     111
6 months    ki0047075b-MAL-ED       PERU           Food Secure                  1        0     111
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure         0       28     111
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure         1        0     111
6 months    ki0047075b-MAL-ED       PERU           Food Insecure                0       56     111
6 months    ki0047075b-MAL-ED       PERU           Food Insecure                1        0     111
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  0      126     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  1        3     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         0       17     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         1        1     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                0       78     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                1        3     228
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                  0       78     536
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                  1        2     536
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         0      388     536
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         1       28     536
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                0       36     536
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                1        4     536
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  0      419     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  1        8     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         0      194     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         1       10     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                0       81     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                1        3     715
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                  0      718    1090
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                  1       72    1090
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         0      148    1090
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         1        4    1090
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                0      128    1090
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                1       20    1090
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                  0    15448   33483
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                  1     1323   33483
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure         0    10210   33483
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure         1      954   33483
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                0     4988   33483
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                1      560   33483
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                  0     4515    9384
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                  1      273    9384
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure         0     3172    9384
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure         1      202    9384
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                0     1169    9384
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                1       53    9384
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                  0      142     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                  1       19     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         0        4     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         1        0     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                0       27     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                1        2     194
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  0        3     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  1        0     129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         0       11     129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         1        0     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                0      114     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                1        1     129
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                  0      170     212
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                  1       20     212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         0        2     212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         1        3     212
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                0       14     212
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                1        3     212
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                  0       93     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                  1        1     128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         0       15     128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         1        0     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                0       19     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                1        0     128
24 months   ki0047075b-MAL-ED       PERU           Food Secure                  0       25     107
24 months   ki0047075b-MAL-ED       PERU           Food Secure                  1        1     107
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure         0       27     107
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure         1        0     107
24 months   ki0047075b-MAL-ED       PERU           Food Insecure                0       52     107
24 months   ki0047075b-MAL-ED       PERU           Food Insecure                1        2     107
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  0      129     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  1        0     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         0       17     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         1        1     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                0       81     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                1        0     228
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                  0       63     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                  1        5     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         0      281     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         1       46     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                0       31     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                1        2     428
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  0      302     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  1       32     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         0      116     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         1        8     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                0       51     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                1        5     514
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                  0      566     974
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                  1      130     974
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         0      116     974
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         1       22     974
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                0      112     974
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                1       28     974
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                  0     6160   16357
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                  1     1545   16357
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure         0     4223   16357
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure         1     1277   16357
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                0     2409   16357
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                1      743   16357
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                  0     3781    9171
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                  1      885    9171
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure         0     2625    9171
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure         1      684    9171
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                0      961    9171
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                1      235    9171


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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/223cb332-4bd4-4daa-b782-dea69e52df1d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/223cb332-4bd4-4daa-b782-dea69e52df1d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/223cb332-4bd4-4daa-b782-dea69e52df1d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/223cb332-4bd4-4daa-b782-dea69e52df1d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0854443   0.0766388   0.0942498
Birth       kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0956596   0.0843622   0.1069570
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1047987   0.0906815   0.1189158
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0508982   0.0212854   0.0805110
Birth       kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0560000   0.0265243   0.0854757
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0520833   0.0052358   0.0989309
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0788862   0.0721633   0.0856091
6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0854532   0.0779083   0.0929982
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1009373   0.0893888   0.1124857
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0570175   0.0453604   0.0686747
6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0598696   0.0459253   0.0738138
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0433715   0.0104067   0.0763364
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.0958084   0.0642126   0.1274042
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0645161   0.0212336   0.1077986
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.0892857   0.0145275   0.1640439
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.1867816   0.1457918   0.2277714
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.1594203   0.0729571   0.2458835
24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.2000000   0.1061994   0.2938006
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.2005191   0.1866385   0.2143998
24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.2321818   0.2151429   0.2492208
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.2357234   0.2143353   0.2571114
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1896700   0.1710138   0.2083261
24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.2067090   0.1841911   0.2292268
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1964883   0.1553906   0.2375860


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0923316   0.0861106   0.0985527
Birth       kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0529412   0.0337951   0.0720872
6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0847296   0.0799320   0.0895271
6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0562660   0.0473007   0.0652313
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1848049   0.1502971   0.2193127
24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.2179495   0.2080242   0.2278748
24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1967070   0.1831292   0.2102848


### Parameter: RR


agecat      studyid                 country      intervention_level     baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ---------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1195552   0.9553054   1.312045
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.2265144   1.0364535   1.451428
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.1002353   0.5007140   2.417583
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.0232843   0.3487644   3.002344
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0832474   0.9604116   1.221794
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.2795306   1.1124025   1.471768
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0500205   0.7713622   1.429345
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.7606698   0.3488269   1.658755
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.6733871   0.3188651   1.422075
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       0.9319196   0.3789294   2.291916
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.8535117   0.4754603   1.532162
24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.0707692   0.6379924   1.797117
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1579035   1.0470540   1.280488
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.1755653   1.0516269   1.314110
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0898351   0.9421231   1.260706
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.0359485   0.8218588   1.305807


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0068873    0.0003566   0.0134180
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0020430   -0.0177303   0.0218162
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0058434    0.0012773   0.0104095
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0007516   -0.0092757   0.0077726
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0082597   -0.0255539   0.0090344
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0019767   -0.0236500   0.0196967
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0174304    0.0072358   0.0276249
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0070371   -0.0061684   0.0202426


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0745931    0.0011509   0.1426354
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0385895   -0.4214583   0.3497451
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0689652    0.0132099   0.1215703
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0133573   -0.1770594   0.1275777
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0943446   -0.3091652   0.0852260
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0106960   -0.1350378   0.1000243
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0799743    0.0320257   0.1255478
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0357743   -0.0337205   0.1005972
