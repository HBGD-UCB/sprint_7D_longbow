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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** impfloor

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        impfloor    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ---------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                     0       12     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                     1        7     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                     0      173     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                     1       50     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                     0        2     209
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                     1        0     209
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                     0      195     209
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                     1       12     209
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                     0        8     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                     1        7     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                     0      136     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                     1       80     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                     0      103     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                     1       23     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                     0       86     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                     1       17     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                     0      197     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                     1       16     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                     0       55     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                     1        4     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0       18     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        3     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0      196     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       40     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      205     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       29     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       13     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        1     248
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0     258
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0     258
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0      145     258
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1      113     258
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                     0        0     305
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                     1        0     305
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                     0      135     305
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                     1      170     305
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                     0       42     599
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                     1       25     599
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                     0      380     599
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                     1      152     599
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                     0       42     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                     1       19     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                     0      523     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                     1      103     687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      148     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       30     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      498     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       78     754
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                     0      350     928
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                     1      408     928
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                     0       82     928
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                     1       88     928
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                     0       14     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                     1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                     0      194     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                     1        7     215
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                     0    40389   52884
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                     1     8330   52884
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     3537   52884
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      628   52884
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                     0     6720   10469
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                     1     2484   10469
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     1025   10469
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      240   10469
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                     0       15     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                     1        4     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                     0      208     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                     1       14     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                     0        2     209
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                     1        0     209
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                     0      200     209
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                     1        7     209
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                     0       14     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                     1        1     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                     0      180     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                     1       35     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                     0      119     227
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                     1        6     227
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                     0       94     227
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                     1        8     227
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                     0      209     272
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                     1        4     272
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                     0       58     272
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                     1        1     272
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0       20     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        1     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0      225     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       10     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      226     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        8     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       14     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0     248
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0     246
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0     246
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0      173     246
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       73     246
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                     0        0     291
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                     1        0     291
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                     0      179     291
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                     1      112     291
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                     0       57     581
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                     1        5     581
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                     0      478     581
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                     1       41     581
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                     0       55     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                     1        6     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                     0      592     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                     1       30     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      170     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        7     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      559     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       13     749
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                     0      620     894
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                     1      114     894
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                     0      132     894
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                     1       28     894
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                     0       14     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                     1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                     0      198     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                     1        3     215
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                     0    44748   52350
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                     1     3476   52350
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                     0     3848   52350
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                     1      278   52350
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                     0     8466    9890
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                     1      222    9890
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                     0     1174    9890
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                     1       28    9890
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                     0       14     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                     1        5     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                     0      182     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                     1       39     240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                     0        2     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                     1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                     0      199     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                     1        6     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                     0        8     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                     1        7     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                     0      163     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                     1       57     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                     0      107     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                     1       19     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                     0       89     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                     1       13     228
6-24 months                   ki0047075b-MAL-ED          PERU                           0                     0      199     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0                     1       13     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                     0       54     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                     1        4     270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0       19     255
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2     255
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0      200     255
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       34     255
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      206     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       25     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       11     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        1     243
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0     261
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0     261
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0      196     261
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       65     261
6-24 months                   ki1000108-IRC              INDIA                          0                     0        0     306
6-24 months                   ki1000108-IRC              INDIA                          0                     1        0     306
6-24 months                   ki1000108-IRC              INDIA                          1                     0      207     306
6-24 months                   ki1000108-IRC              INDIA                          1                     1       99     306
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                     0       37     538
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                     1       23     538
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                     0      343     538
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                     1      135     538
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                     0       34     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                     1       16     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                     0      482     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                     1       83     615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      153     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       25     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      481     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       71     730
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                     0      398     926
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                     1      362     926
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                     0       92     926
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                     1       74     926
6-24 months                   ki1114097-CONTENT          PERU                           0                     0       14     215
6-24 months                   ki1114097-CONTENT          PERU                           0                     1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           1                     0      197     215
6-24 months                   ki1114097-CONTENT          PERU                           1                     1        4     215
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                     0    26191   34460
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                     1     5265   34460
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     2623   34460
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      381   34460
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                     0     6885   10540
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                     1     2394   10540
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     1041   10540
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      220   10540


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/30914a6a-4a3e-4fef-af2b-5da5940f0c28/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/30914a6a-4a3e-4fef-af2b-5da5940f0c28/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/30914a6a-4a3e-4fef-af2b-5da5940f0c28/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/30914a6a-4a3e-4fef-af2b-5da5940f0c28/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.3684211   0.1510726   0.5857695
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.2242152   0.1693625   0.2790679
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        0                    NA                0.4666667   0.2136511   0.7196823
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        1                    NA                0.3703704   0.3058311   0.4349096
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        0                    NA                0.1825397   0.1149430   0.2501363
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        1                    NA                0.1650485   0.0932003   0.2368968
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.3731343   0.2572317   0.4890370
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.2857143   0.2472943   0.3241343
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.3114754   0.1951777   0.4277731
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.1645367   0.1354716   0.1936019
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.1685393   0.1135095   0.2235691
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1354167   0.1074549   0.1633784
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.5382586   0.4880137   0.5885035
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.5176471   0.4113047   0.6239895
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.1709805   0.1654672   0.1764938
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.1507803   0.1321677   0.1693929
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.2698827   0.2552101   0.2845553
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1897233   0.1532023   0.2262443
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        0                    NA                0.0480000   0.0104430   0.0855570
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        1                    NA                0.0784314   0.0261418   0.1307210
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.0806452   0.0128097   0.1484807
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0789981   0.0557719   0.1022242
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.0983607   0.0235732   0.1731481
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.0482315   0.0313814   0.0650816
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0395480   0.0108170   0.0682791
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0227273   0.0105059   0.0349487
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        0                    NA                0.1553134   0.1182151   0.1924116
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1750000   0.0916443   0.2583557
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0720803   0.0682862   0.0758744
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0673776   0.0550082   0.0797470
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0255525   0.0205926   0.0305124
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0232945   0.0085868   0.0380022
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.2631579   0.0647434   0.4615724
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.1764706   0.1261049   0.2268362
6-24 months                   ki0047075b-MAL-ED       INDIA        0                    NA                0.4666667   0.2136604   0.7196729
6-24 months                   ki0047075b-MAL-ED       INDIA        1                    NA                0.2590909   0.2010718   0.3171101
6-24 months                   ki0047075b-MAL-ED       NEPAL        0                    NA                0.1507937   0.0881733   0.2134140
6-24 months                   ki0047075b-MAL-ED       NEPAL        1                    NA                0.1274510   0.0625922   0.1923098
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.3833333   0.2601959   0.5064707
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.2824268   0.2420321   0.3228215
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.3200000   0.1905965   0.4494035
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.1469027   0.1176886   0.1761167
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.1404494   0.0893717   0.1915272
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1286232   0.1006760   0.1565704
6-24 months                   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.4763158   0.4260459   0.5265857
6-24 months                   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.4457831   0.3387347   0.5528315
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.1673767   0.1609244   0.1738289
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.1268309   0.1074639   0.1461979
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.2580019   0.2433795   0.2726244
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1744647   0.1388654   0.2100640


### Parameter: E(Y)


agecat                        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.2355372   0.1819640   0.2891104
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        NA                   NA                0.3766234   0.3140034   0.4392434
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        NA                   NA                0.1746725   0.1253885   0.2239565
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2954925   0.2589234   0.3320615
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5344828   0.4890476   0.5799179
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1693896   0.1640842   0.1746950
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2601968   0.2464353   0.2739582
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        NA                   NA                0.0616740   0.0303107   0.0930373
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0791738   0.0571996   0.1011481
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1588367   0.1249135   0.1927598
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0717096   0.0680527   0.0753666
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0252781   0.0205710   0.0299851
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.1833333   0.1342773   0.2323893
6-24 months                   ki0047075b-MAL-ED       INDIA        NA                   NA                0.2723404   0.2153029   0.3293779
6-24 months                   ki0047075b-MAL-ED       NEPAL        NA                   NA                0.1403509   0.0951649   0.1855368
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2936803   0.2551592   0.3322014
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.4708423   0.4253270   0.5163576
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1638421   0.1577192   0.1699650
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2480076   0.2343842   0.2616310


### Parameter: RR


agecat                        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   1                    0                 0.6085842   0.3213323   1.1526224
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        1                    0                 0.7936508   0.4490581   1.4026727
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        1                    0                 0.9041790   0.5105614   1.6012562
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   1                    0                 0.7657143   0.5458436   1.0741508
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   1                    0                 0.5282495   0.3495034   0.7984116
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 0.8034722   0.5460002   1.1823577
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        1                    0                 0.9617070   0.7674414   1.2051479
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.8818567   0.7767555   1.0011788
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   1                    0                 0.7029845   0.5762329   0.8576171
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        1                    0                 1.6339869   0.5845400   4.5675458
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   1                    0                 0.9795761   0.4018415   2.3879299
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   1                    0                 0.4903537   0.2123780   1.1321642
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 0.5746753   0.2327473   1.4189284
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        1                    0                 1.1267544   0.6613229   1.9197512
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.9347577   0.7735385   1.1295778
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   1                    0                 0.9116338   0.4708242   1.7651518
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   1                    0                 0.6705882   0.2994568   1.5016811
6-24 months                   ki0047075b-MAL-ED       INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       INDIA        1                    0                 0.5551948   0.3088131   0.9981485
6-24 months                   ki0047075b-MAL-ED       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       NEPAL        1                    0                 0.8452012   0.4382316   1.6301086
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   1                    0                 0.7367655   0.5183439   1.0472264
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   1                    0                 0.4590708   0.2925294   0.7204268
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 0.9157971   0.5995367   1.3988874
6-24 months                   ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal     NEPAL        1                    0                 0.9358983   0.7199648   1.2165950
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.7577574   0.6472932   0.8870728
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   1                    0                 0.6762147   0.5473134   0.8354744


### Parameter: PAR


agecat                        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   0                    NA                -0.1328839   -0.3395055    0.0737378
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        0                    NA                -0.0900433   -0.3342241    0.1541375
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        0                    NA                -0.0078672   -0.0522517    0.0365174
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0776418   -0.1861111    0.0308274
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.1338917   -0.2431673   -0.0246162
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0253033   -0.0724683    0.0218618
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0037758   -0.0253339    0.0177822
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0015909   -0.0031122   -0.0000696
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0096859   -0.0144023   -0.0049695
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        0                    NA                 0.0136740   -0.0153215    0.0426695
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0014713   -0.0655214    0.0625788
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.0456520   -0.1154756    0.0241715
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0128458   -0.0366953    0.0110038
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        0                    NA                 0.0035233   -0.0128207    0.0198674
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0003706   -0.0013817    0.0006404
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0002744   -0.0021629    0.0016140
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   0                    NA                -0.0798246   -0.2683491    0.1086999
6-24 months                   ki0047075b-MAL-ED       INDIA        0                    NA                -0.1943262   -0.4374181    0.0487656
6-24 months                   ki0047075b-MAL-ED       NEPAL        0                    NA                -0.0104428   -0.0508036    0.0299181
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0896530   -0.2048253    0.0255193
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.1590244   -0.2809566   -0.0370922
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0089426   -0.0529707    0.0350855
6-24 months                   ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0054735   -0.0267011    0.0157541
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0035345   -0.0053168   -0.0017522
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0099943   -0.0145871   -0.0054016


### Parameter: PAF


agecat                        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   0                    NA                -0.5641736   -1.7400360    0.1070778
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        0                    NA                -0.2390805   -1.0919632    0.2660863
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        0                    NA                -0.0450397   -0.3324713    0.1803892
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.2627540   -0.6888710    0.0558499
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.7539640   -1.4869325   -0.2370218
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.1766542   -0.5554647    0.1099026
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0070644   -0.0482236    0.0324786
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0093920   -0.0184191   -0.0004450
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0372252   -0.0555630   -0.0192060
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        0                    NA                 0.2217143   -0.4015953    0.5678291
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0185835   -1.2538067    0.5396623
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.8661202   -2.7488834    0.0710822
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.4810734   -1.6660123    0.1772061
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        0                    NA                 0.0221821   -0.0862490    0.1197895
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0051687   -0.0193691    0.0088339
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0108564   -0.0885611    0.0613016
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   0                    NA                -0.4354067   -1.9335249    0.2976394
6-24 months                   ki0047075b-MAL-ED       INDIA        0                    NA                -0.7135417   -1.8907991   -0.0157140
6-24 months                   ki0047075b-MAL-ED       NEPAL        0                    NA                -0.0744048   -0.4032902    0.1774006
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.3052743   -0.7629639    0.0335928
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.9878788   -1.9025547   -0.3614428
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0680009   -0.4609932    0.2192804
6-24 months                   ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0116248   -0.0577405    0.0324803
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0215727   -0.0325030   -0.0107581
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0402986   -0.0589894   -0.0219376
