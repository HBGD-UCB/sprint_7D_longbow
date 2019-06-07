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

**Outcome Variable:** swasted

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

agecat      studyid                 country        hfoodsec                swasted   n_cell       n
----------  ----------------------  -------------  ---------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0      146     178
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1        5     178
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          0        3     178
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          1        0     178
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 0       22     178
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 1        2     178
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                   0        0     102
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                   1        0     102
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          0       11     102
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          1        0     102
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0       91     102
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1        0     102
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                   0      146     167
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                   1        5     167
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        1     167
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        1     167
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                 0       14     167
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                 1        0     167
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                   0       74      96
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                   1        1      96
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0        9      96
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        0      96
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                 0       11      96
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                 1        1      96
Birth       ki0047075b-MAL-ED       PERU           Food Secure                   0       26     105
Birth       ki0047075b-MAL-ED       PERU           Food Secure                   1        0     105
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure          0       24     105
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure          1        0     105
Birth       ki0047075b-MAL-ED       PERU           Food Insecure                 0       55     105
Birth       ki0047075b-MAL-ED       PERU           Food Insecure                 1        0     105
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0      105     193
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1        1     193
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       17     193
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0     193
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 0       70     193
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 1        0     193
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                   0        3      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                   1        0      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          0       21      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          1        0      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 0        2      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 1        2      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   0       13      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   1        1      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          0        6      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          1        0      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 0        3      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 1        0      23
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     4917   10289
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1       57   10289
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     3442   10289
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1       60   10289
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     1788   10289
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1       25   10289
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0      332     680
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1        2     680
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0      248     680
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1        2     680
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0       95     680
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1        1     680
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0      158     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1        2     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          0        4     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          1        0     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 0       29     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 1        0     193
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                   0        3     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                   1        0     129
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0      115     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1        0     129
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                   0      186     212
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                   1        4     212
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        5     212
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        0     212
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                 0       16     212
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                 1        1     212
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                   0       94     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                   1        0     128
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0       15     128
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        0     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                 0       19     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                 1        0     128
6 months    ki0047075b-MAL-ED       PERU           Food Secure                   0       27     111
6 months    ki0047075b-MAL-ED       PERU           Food Secure                   1        0     111
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure          0       28     111
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure          1        0     111
6 months    ki0047075b-MAL-ED       PERU           Food Insecure                 0       56     111
6 months    ki0047075b-MAL-ED       PERU           Food Insecure                 1        0     111
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0      128     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1        1     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       18     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 0       79     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 1        2     228
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                   0       80     536
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                   1        0     536
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          0      412     536
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          1        4     536
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 0       39     536
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 1        1     536
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   0      427     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   1        0     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      204     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          1        0     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 0       84     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 1        0     715
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                   0      389     545
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                   1        6     545
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          0       76     545
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          1        0     545
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                 0       73     545
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                 1        1     545
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     8282   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1      114   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     5515   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1       75   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     2737   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1       41   16764
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0     2429    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1       16    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0     1713    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1       15    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0      620    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1        2    4795
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0      161     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1        0     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          0        4     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          1        0     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 0       29     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 1        0     194
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                   0        3     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                   1        0     129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0      115     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1        0     129
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                   0      190     212
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                   1        0     212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        3     212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        2     212
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                 0       17     212
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                 1        0     212
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                   0       94     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                   1        0     128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0       15     128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        0     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                 0       19     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                 1        0     128
24 months   ki0047075b-MAL-ED       PERU           Food Secure                   0       26     107
24 months   ki0047075b-MAL-ED       PERU           Food Secure                   1        0     107
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure          0       27     107
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure          1        0     107
24 months   ki0047075b-MAL-ED       PERU           Food Insecure                 0       53     107
24 months   ki0047075b-MAL-ED       PERU           Food Insecure                 1        1     107
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0      129     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1        0     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       18     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 0       81     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 1        0     228
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                   0       67     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                   1        1     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          0      319     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          1        8     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 0       32     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 1        1     428
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   0      330     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   1        4     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      124     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          1        0     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 0       56     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 1        0     514
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   0      338     487
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   1       10     487
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          0       67     487
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          1        2     487
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                 0       68     487
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                 1        2     487
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     3699    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1      158    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     2657    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1       96    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     1512    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1       68    8190
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0     2319    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1       70    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0     1659    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1       40    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0      589    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1       19    4696


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
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/573505f5-6646-4769-a00b-414a266154af/8d223d09-d6ef-41d3-9c2e-81e07b015aad/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/573505f5-6646-4769-a00b-414a266154af/8d223d09-d6ef-41d3-9c2e-81e07b015aad/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/573505f5-6646-4769-a00b-414a266154af/8d223d09-d6ef-41d3-9c2e-81e07b015aad/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/573505f5-6646-4769-a00b-414a266154af/8d223d09-d6ef-41d3-9c2e-81e07b015aad/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   Food Secure            NA                0.0114596   0.0073774   0.0155418
Birth       kiGH5241-JiVitA-3   BANGLADESH   Mildly Food Insecure   NA                0.0171331   0.0121396   0.0221265
Birth       kiGH5241-JiVitA-3   BANGLADESH   Food Insecure          NA                0.0137893   0.0090637   0.0185149
6 months    kiGH5241-JiVitA-3   BANGLADESH   Food Secure            NA                0.0135779   0.0106108   0.0165450
6 months    kiGH5241-JiVitA-3   BANGLADESH   Mildly Food Insecure   NA                0.0134168   0.0102814   0.0165522
6 months    kiGH5241-JiVitA-3   BANGLADESH   Food Insecure          NA                0.0147588   0.0101790   0.0193387
24 months   kiGH5241-JiVitA-3   BANGLADESH   Food Secure            NA                0.0409645   0.0340828   0.0478461
24 months   kiGH5241-JiVitA-3   BANGLADESH   Mildly Food Insecure   NA                0.0348710   0.0269758   0.0427663
24 months   kiGH5241-JiVitA-3   BANGLADESH   Food Insecure          NA                0.0430380   0.0327848   0.0532912
24 months   kiGH5241-JiVitA-4   BANGLADESH   Food Secure            NA                0.0293010   0.0216063   0.0369956
24 months   kiGH5241-JiVitA-4   BANGLADESH   Mildly Food Insecure   NA                0.0235433   0.0149709   0.0321156
24 months   kiGH5241-JiVitA-4   BANGLADESH   Food Insecure          NA                0.0312500   0.0180453   0.0444547


### Parameter: E(Y)


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0138011   0.0109279   0.0166744
6 months    kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0137199   0.0116432   0.0157966
24 months   kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0393162   0.0348276   0.0438049
24 months   kiGH5241-JiVitA-4   BANGLADESH   NA                   NA                0.0274702   0.0222302   0.0327101


### Parameter: RR


agecat      studyid             country      intervention_level     baseline_level     estimate    ci_lower   ci_upper
----------  ------------------  -----------  ---------------------  ---------------  ----------  ----------  ---------
Birth       kiGH5241-JiVitA-3   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3   BANGLADESH   Mildly Food Insecure   Food Secure       1.4950855   0.9618923   2.323837
Birth       kiGH5241-JiVitA-3   BANGLADESH   Food Insecure          Food Secure       1.2032978   0.7375331   1.963201
6 months    kiGH5241-JiVitA-3   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3   BANGLADESH   Mildly Food Insecure   Food Secure       0.9881367   0.7301514   1.337276
6 months    kiGH5241-JiVitA-3   BANGLADESH   Food Insecure          Food Secure       1.0869741   0.7467942   1.582113
24 months   kiGH5241-JiVitA-3   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3   BANGLADESH   Mildly Food Insecure   Food Secure       0.8512509   0.6404880   1.131369
24 months   kiGH5241-JiVitA-3   BANGLADESH   Food Insecure          Food Secure       1.0506169   0.7824120   1.410760
24 months   kiGH5241-JiVitA-4   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4   BANGLADESH   Mildly Food Insecure   Food Secure       0.8034979   0.5071694   1.272965
24 months   kiGH5241-JiVitA-4   BANGLADESH   Food Insecure          Food Secure       1.0665179   0.6594729   1.724802


### Parameter: PAR


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   Food Secure          NA                 0.0023416   -0.0004079   0.0050910
6 months    kiGH5241-JiVitA-3   BANGLADESH   Food Secure          NA                 0.0001420   -0.0017401   0.0020240
24 months   kiGH5241-JiVitA-3   BANGLADESH   Food Secure          NA                -0.0016482   -0.0065671   0.0032706
24 months   kiGH5241-JiVitA-4   BANGLADESH   Food Secure          NA                -0.0018308   -0.0070251   0.0033635


### Parameter: PAF


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   Food Secure          NA                 0.1696639   -0.0618157   0.3506802
6 months    kiGH5241-JiVitA-3   BANGLADESH   Food Secure          NA                 0.0103486   -0.1370178   0.1386152
24 months   kiGH5241-JiVitA-3   BANGLADESH   Food Secure          NA                -0.0419226   -0.1745878   0.0757585
24 months   kiGH5241-JiVitA-4   BANGLADESH   Food Secure          NA                -0.0666459   -0.2727107   0.1060549
