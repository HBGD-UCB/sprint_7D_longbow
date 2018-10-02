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
![](/tmp/7b9cfc0f-fa01-49c2-b9ad-d601e5f25879/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7b9cfc0f-fa01-49c2-b9ad-d601e5f25879/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7b9cfc0f-fa01-49c2-b9ad-d601e5f25879/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7b9cfc0f-fa01-49c2-b9ad-d601e5f25879/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0842337   0.0753953   0.0930721
Birth       kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0930198   0.0819736   0.1040660
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1037235   0.0901923   0.1172547
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0508982   0.0212854   0.0805110
Birth       kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0560000   0.0265243   0.0854757
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0520833   0.0052358   0.0989309
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0797959   0.0731332   0.0864585
6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0847878   0.0773221   0.0922534
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.0917996   0.0815359   0.1020632
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0568478   0.0452037   0.0684919
6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0598811   0.0460061   0.0737561
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0432730   0.0103825   0.0761634
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.0958084   0.0642126   0.1274042
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0645161   0.0212336   0.1077986
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.0892857   0.0145275   0.1640439
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.1830556   0.1435411   0.2225701
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.1376411   0.0703777   0.2049044
24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.2071304   0.1328236   0.2814371
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.2010593   0.1872751   0.2148435
24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.2282903   0.2119073   0.2446733
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.2363124   0.2160528   0.2565720
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1891927   0.1705442   0.2078411
24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.2073675   0.1850834   0.2296516
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1969490   0.1568659   0.2370320


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
Birth       kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1043061   0.9408041   1.296223
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.2313781   1.0437822   1.452690
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.1002353   0.5007140   2.417583
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.0232843   0.3487644   3.002344
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0625587   0.9429269   1.197369
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.1504303   1.0031840   1.319289
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0533577   0.7744322   1.432743
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.7612071   0.3490941   1.659828
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.6733871   0.3188651   1.422075
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       0.9319196   0.3789294   2.291916
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.7519083   0.4406096   1.283145
24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.1315158   0.7444049   1.719935
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1354375   1.0286870   1.253266
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.1753366   1.0572907   1.306562
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0960652   0.9485600   1.266508
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.0409968   0.8299825   1.305659


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0080979    0.0014822   0.0147136
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0020430   -0.0177303   0.0218162
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0049337    0.0003180   0.0095494
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0005818   -0.0090992   0.0079356
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0082597   -0.0255539   0.0090344
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0017493   -0.0193981   0.0228967
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0168902    0.0065980   0.0271824
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0075143   -0.0056637   0.0206924


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0877048    0.0132389   0.1565511
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0385895   -0.4214583   0.3497451
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0582288    0.0020359   0.1112577
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0103405   -0.1738736   0.1304107
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0943446   -0.3091652   0.0852260
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0094656   -0.1117485   0.1174637
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0774959    0.0291675   0.1234185
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0382007   -0.0311556   0.1028920
