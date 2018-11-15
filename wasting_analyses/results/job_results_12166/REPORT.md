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
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                  0     4549   10289
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                  1      425   10289
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure         0     3167   10289
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure         1      335   10289
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                0     1623   10289
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                1      190   10289
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                  0      317     680
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                  1       17     680
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure         0      236     680
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure         1       14     680
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                0       91     680
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                1        5     680
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
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                  0      359     545
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                  1       36     545
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         0       74     545
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         1        2     545
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                0       64     545
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                1       10     545
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                  0     7734   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                  1      662   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure         0     5113   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure         1      477   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                0     2498   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                1      280   16764
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                  0     2304    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                  1      141    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure         0     1623    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure         1      105    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                0      595    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                1       27    4795
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
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                  0      283     487
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                  1       65     487
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         0       58     487
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         1       11     487
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                0       56     487
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                1       14     487
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                  0     3084    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                  1      773    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure         0     2114    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure         1      639    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                0     1208    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                1      372    8190
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                  0     1939    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                  1      450    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure         0     1352    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure         1      347    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                0      490    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                1      118    4696


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
![](/tmp/61132da5-f606-41f5-a49a-1941dbff2a04/7f4bc983-88ef-4f15-8d45-506865be4bd1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/61132da5-f606-41f5-a49a-1941dbff2a04/7f4bc983-88ef-4f15-8d45-506865be4bd1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/61132da5-f606-41f5-a49a-1941dbff2a04/7f4bc983-88ef-4f15-8d45-506865be4bd1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/61132da5-f606-41f5-a49a-1941dbff2a04/7f4bc983-88ef-4f15-8d45-506865be4bd1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0788471   0.0721168   0.0855773
6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0853309   0.0777954   0.0928665
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1007919   0.0892531   0.1123308
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0576687   0.0460356   0.0693018
6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0607639   0.0473306   0.0741972
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0434084   0.0104539   0.0763628
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.0958084   0.0642126   0.1274042
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0645161   0.0212336   0.1077986
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.0892857   0.0145275   0.1640439
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.1867816   0.1457918   0.2277714
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.1594203   0.0729571   0.2458835
24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.2000000   0.1061994   0.2938006
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.2004148   0.1865436   0.2142860
24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.2321104   0.2150817   0.2491391
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.2354430   0.2141082   0.2567779
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1883633   0.1700380   0.2066886
24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.2042378   0.1819555   0.2265200
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1940789   0.1534371   0.2347208


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0923316   0.0861106   0.0985527
Birth       kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0529412   0.0337951   0.0720872
6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0846457   0.0798459   0.0894454
6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0569343   0.0480657   0.0658029
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1848049   0.1502971   0.2193127
24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.2178266   0.2079286   0.2277246
24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1948467   0.1815077   0.2081857


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
6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0822336   0.9593723   1.220829
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.2783219   1.1113581   1.470369
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0536717   0.7823741   1.419045
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.7527195   0.3460734   1.637186
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.6733871   0.3188651   1.422075
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       0.9319196   0.3789294   2.291916
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.8535117   0.4754603   1.532162
24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.0707692   0.6379924   1.797117
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1581499   1.0471476   1.280919
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.1747785   1.0509335   1.313218
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0842757   0.9374459   1.254103
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.0303436   0.8172833   1.298947


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0068873    0.0003566   0.0134180
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0020430   -0.0177303   0.0218162
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0057986    0.0012328   0.0103644
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0007344   -0.0091289   0.0076601
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0082597   -0.0255539   0.0090344
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0019767   -0.0236500   0.0196967
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0174118    0.0072086   0.0276149
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0064833   -0.0065888   0.0195555


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0745931    0.0011509   0.1426354
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0385895   -0.4214583   0.3497451
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0685044    0.0126916   0.1211620
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0128992   -0.1718428   0.1244860
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0943446   -0.3091652   0.0852260
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0106960   -0.1350378   0.1000243
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0799342    0.0319153   0.1255712
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0332741   -0.0361486   0.0980454
