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
![](/tmp/efa11b21-ff6a-4492-9413-969c9888f05a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/efa11b21-ff6a-4492-9413-969c9888f05a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/efa11b21-ff6a-4492-9413-969c9888f05a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/efa11b21-ff6a-4492-9413-969c9888f05a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0842365   0.0754010   0.0930719
Birth       kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0930235   0.0819808   0.1040663
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1037331   0.0902100   0.1172561
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0508761   0.0212630   0.0804892
Birth       kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0559219   0.0264483   0.0853954
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0518006   0.0049202   0.0986810
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0797936   0.0731297   0.0864576
6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0847874   0.0773199   0.0922550
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.0917792   0.0815121   0.1020462
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0568598   0.0452161   0.0685034
6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0599150   0.0459992   0.0738308
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0434030   0.0104843   0.0763217
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.0958084   0.0642126   0.1274042
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0645161   0.0212336   0.1077986
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.0892857   0.0145275   0.1640439
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.1833759   0.1437845   0.2229674
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.1391193   0.0711033   0.2071354
24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.2062386   0.1316156   0.2808616
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.2010935   0.1873319   0.2148551
24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.2283620   0.2119832   0.2447409
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.2361809   0.2159725   0.2563893
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1892161   0.1705691   0.2078632
24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.2074413   0.1851216   0.2297610
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1971406   0.1567841   0.2374971


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
Birth       kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1043144   0.9408646   1.296159
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.2314509   1.0439424   1.452639
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0991774   0.4998486   2.417114
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.0181718   0.3454041   3.001336
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0625842   0.9429207   1.197434
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.1502070   1.0029302   1.319111
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0537321   0.7743892   1.433841
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.7633337   0.3506154   1.661873
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.6733871   0.3188651   1.422075
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       0.9319196   0.3789294   2.291916
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.7586565   0.4444776   1.294912
24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.1246765   0.7379344   1.714105
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1356013   1.0289564   1.253299
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.1744832   1.0567077   1.305386
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0963195   0.9487132   1.266891
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.0418808   0.8298346   1.308111


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0080951    0.0014823   0.0147079
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0020651   -0.0177079   0.0218381
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0049359    0.0003188   0.0095531
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0005938   -0.0091115   0.0079239
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0082597   -0.0255539   0.0090344
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0014290   -0.0197223   0.0225803
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0168560    0.0065897   0.0271223
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0074909   -0.0056816   0.0206634


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0876747    0.0132439   0.1564912
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0390069   -0.4211194   0.3501548
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0582553    0.0020432   0.1113011
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0105534   -0.1740960   0.1302090
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0943446   -0.3091652   0.0852260
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0077324   -0.1135133   0.1157762
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0773392    0.0291378   0.1231474
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0380815   -0.0312449   0.1027474
