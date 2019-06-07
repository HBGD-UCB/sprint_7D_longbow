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
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                     0      173     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                     1       50     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                     0       12     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                     1        7     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                     0      195     209
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                     1       12     209
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                     0        2     209
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                     1        0     209
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                     0      136     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                     1       80     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                     0        8     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                     1        7     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                     0       86     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                     1       17     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                     0      103     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                     1       23     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                     0       55     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                     1        4     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                     0      197     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                     1       16     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0      196     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       40     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0       18     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        3     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       13     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        1     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      205     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       29     248
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0      145     258
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1      113     258
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0     258
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0     258
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                     0      135     305
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                     1      170     305
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                     0        0     305
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                     1        0     305
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                     0      376     595
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                     1      152     595
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                     0       42     595
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                     1       25     595
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                     0      523     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                     1      103     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                     0       42     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                     1       19     687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      498     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       78     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      148     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       30     754
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                     0       41     464
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                     1       44     464
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                     0      175     464
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                     1      204     464
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                     0      194     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                     1        7     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                     0       14     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                     1        0     215
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                     0      859   12974
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      156   12974
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     9858   12974
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                     1     2101   12974
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                     0      127    1418
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                     1       33    1418
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                     0      909    1418
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      349    1418
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                     0      208     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                     1       14     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                     0       15     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                     1        4     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                     0      200     209
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                     1        7     209
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                     0        2     209
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                     1        0     209
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                     0      180     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                     1       35     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                     0       14     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                     1        1     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                     0       94     227
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                     1        8     227
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                     0      119     227
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                     1        6     227
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                     0       58     272
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                     1        1     272
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                     0      209     272
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                     1        4     272
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0      225     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       10     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0       20     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        1     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       14     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      226     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        8     248
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0      173     246
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       73     246
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0     246
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0     246
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                     0      179     291
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                     1      112     291
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                     0        0     291
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                     1        0     291
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                     0      474     577
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                     1       41     577
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                     0       57     577
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                     1        5     577
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                     0      592     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                     1       30     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                     0       55     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                     1        6     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      559     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       13     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      170     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        7     749
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                     0       66     447
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                     1       14     447
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                     0      310     447
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                     1       57     447
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                     0      198     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                     1        3     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                     0       14     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                     1        0     215
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                     0      941   12800
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                     1       64   12800
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                     0    10895   12800
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                     1      900   12800
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                     0      144    1274
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                     1        4    1274
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                     0     1099    1274
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                     1       27    1274
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                     0      182     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                     1       39     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                     0       14     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                     1        5     240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                     0      199     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                     1        6     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                     0        2     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                     1        0     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                     0      163     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                     1       57     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                     0        8     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                     1        7     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                     0       89     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                     1       13     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                     0      107     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                     1       19     228
6-24 months                   ki0047075b-MAL-ED          PERU                           1                     0       54     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                     1        4     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0                     0      199     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0                     1       13     270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0      200     255
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       34     255
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0       19     255
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2     255
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       11     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        1     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      206     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       25     243
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0      196     261
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       65     261
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0     261
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0     261
6-24 months                   ki1000108-IRC              INDIA                          1                     0      207     306
6-24 months                   ki1000108-IRC              INDIA                          1                     1       99     306
6-24 months                   ki1000108-IRC              INDIA                          0                     0        0     306
6-24 months                   ki1000108-IRC              INDIA                          0                     1        0     306
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                     0      343     538
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                     1      135     538
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                     0       37     538
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                     1       23     538
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                     0      482     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                     1       83     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                     0       34     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                     1       16     615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      481     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       71     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      153     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       25     730
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                     0       46     463
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                     1       37     463
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                     0      199     463
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                     1      181     463
6-24 months                   ki1114097-CONTENT          PERU                           1                     0      197     215
6-24 months                   ki1114097-CONTENT          PERU                           1                     1        4     215
6-24 months                   ki1114097-CONTENT          PERU                           0                     0       14     215
6-24 months                   ki1114097-CONTENT          PERU                           0                     1        0     215
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                     0      619    8530
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                     1       98    8530
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     6505    8530
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                     1     1308    8530
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                     0      130    1430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                     1       30    1430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                     0      932    1430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      338    1430


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
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/309561ce-1732-428a-ad3b-cc03550b0507/4b15648f-c2fa-4df8-a73c-11b1c354aca3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/309561ce-1732-428a-ad3b-cc03550b0507/4b15648f-c2fa-4df8-a73c-11b1c354aca3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/309561ce-1732-428a-ad3b-cc03550b0507/4b15648f-c2fa-4df8-a73c-11b1c354aca3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/309561ce-1732-428a-ad3b-cc03550b0507/4b15648f-c2fa-4df8-a73c-11b1c354aca3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.2242152   0.1693625   0.2790679
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.3684211   0.1510726   0.5857695
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        1                    NA                0.3703704   0.3058311   0.4349096
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        0                    NA                0.4666667   0.2136511   0.7196823
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        1                    NA                0.1650485   0.0932003   0.2368968
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        0                    NA                0.1825397   0.1149430   0.2501363
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.2878788   0.2492262   0.3265313
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.3731343   0.2572310   0.4890376
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.1645367   0.1354716   0.1936019
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.3114754   0.1951777   0.4277731
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1354167   0.1074549   0.1633784
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.1685393   0.1135095   0.2235691
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.5176471   0.4113047   0.6239895
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.5382586   0.4880137   0.5885035
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.1536946   0.1255774   0.1818118
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.1756836   0.1675827   0.1837845
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.2062500   0.1146916   0.2978084
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.2774245   0.2499309   0.3049180
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        1                    NA                0.0784314   0.0261418   0.1307210
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        0                    NA                0.0480000   0.0104430   0.0855570
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0796117   0.0562128   0.1030105
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.0806452   0.0128093   0.1484811
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.0482315   0.0313814   0.0650816
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.0983607   0.0235732   0.1731481
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0227273   0.0105059   0.0349487
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0395480   0.0108170   0.0682791
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1750000   0.0916443   0.2583557
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        0                    NA                0.1553134   0.1182151   0.1924116
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0636816   0.0471199   0.0802433
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0763035   0.0707418   0.0818652
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.1764706   0.1261049   0.2268362
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.2631579   0.0647434   0.4615724
6-24 months                   ki0047075b-MAL-ED       INDIA        1                    NA                0.2590909   0.2010718   0.3171101
6-24 months                   ki0047075b-MAL-ED       INDIA        0                    NA                0.4666667   0.2136604   0.7196729
6-24 months                   ki0047075b-MAL-ED       NEPAL        1                    NA                0.1274510   0.0625922   0.1923098
6-24 months                   ki0047075b-MAL-ED       NEPAL        0                    NA                0.1507937   0.0881733   0.2134140
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.2824268   0.2420321   0.3228215
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.3833333   0.2601959   0.5064707
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.1469027   0.1176886   0.1761167
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.3200000   0.1905965   0.4494035
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1286232   0.1006760   0.1565704
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.1404494   0.0893717   0.1915272
6-24 months                   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.4457831   0.3387347   0.5528315
6-24 months                   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.4763158   0.4260459   0.5265857
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.1366806   0.1057092   0.1676521
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.1674133   0.1577955   0.1770310
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1875000   0.0962754   0.2787246
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.2661417   0.2392769   0.2930066


### Parameter: E(Y)


agecat                        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.2355372   0.1819640   0.2891104
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        NA                   NA                0.3766234   0.3140034   0.4392434
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        NA                   NA                0.1746725   0.1253885   0.2239565
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2974790   0.2607158   0.3342421
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5344828   0.4890476   0.5799179
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1739633   0.1661499   0.1817768
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2693935   0.2426940   0.2960930
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        NA                   NA                0.0616740   0.0303107   0.0930373
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0797227   0.0576026   0.1018428
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1588367   0.1249135   0.1927598
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0753125   0.0700151   0.0806099
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.1833333   0.1342773   0.2323893
6-24 months                   ki0047075b-MAL-ED       INDIA        NA                   NA                0.2723404   0.2153029   0.3293779
6-24 months                   ki0047075b-MAL-ED       NEPAL        NA                   NA                0.1403509   0.0951649   0.1855368
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2936803   0.2551592   0.3322014
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.4708423   0.4253270   0.5163576
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1648300   0.1556593   0.1740008
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2573427   0.2311603   0.2835250


### Parameter: RR


agecat                        studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   0                    1                 1.6431579   0.8675868   3.112044
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        0                    1                 1.2600000   0.7129247   2.226883
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        0                    1                 1.1059757   0.6245097   1.958628
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.2961508   0.9240413   1.818108
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   0                    1                 1.8930447   1.2524868   2.861203
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.2445981   0.8457677   1.831501
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        0                    1                 1.0398177   0.8297737   1.303031
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.1430695   0.9473121   1.379279
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 1.3450884   0.8563490   2.112763
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        0                    1                 0.6120000   0.2189360   1.710747
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.0129819   0.4155564   2.469297
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   0                    1                 2.0393442   0.8832641   4.708586
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.7401130   0.7047572   4.296506
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        0                    1                 0.8875048   0.5209008   1.512120
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.1982037   0.9151951   1.568728
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   0                    1                 1.4912281   0.6659204   3.339380
6-24 months                   ki0047075b-MAL-ED       INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED       INDIA        0                    1                 1.8011696   1.0018550   3.238205
6-24 months                   ki0047075b-MAL-ED       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED       NEPAL        0                    1                 1.1831502   0.6134561   2.281898
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.3572840   0.9549034   1.929221
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   0                    1                 2.1783133   1.3880661   3.418460
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.0919449   0.7148538   1.667955
6-24 months                   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal     NEPAL        0                    1                 1.0684922   0.8219663   1.388957
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.2248503   0.9691282   1.548049
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 1.4194226   0.8668683   2.324183


### Parameter: PAR


agecat                        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0113219   -0.0069463   0.0295901
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0062530   -0.0109777   0.0234837
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        1                    NA                 0.0096239   -0.0446659   0.0639138
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0096002   -0.0043274   0.0235278
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0130470    0.0019531   0.0241409
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0078194   -0.0067872   0.0224260
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0168357   -0.0792361   0.1129075
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0202687   -0.0065794   0.0471168
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0631435   -0.0214118   0.1476989
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        1                    NA                -0.0167574   -0.0522636   0.0187488
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0001111   -0.0075996   0.0078217
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0044771   -0.0024533   0.0114075
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0039750   -0.0034211   0.0113711
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.0161633   -0.0910760   0.0587494
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0116309   -0.0044224   0.0276842
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0068627   -0.0096127   0.0233381
6-24 months                   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0132495   -0.0045489   0.0310479
6-24 months                   ki0047075b-MAL-ED       NEPAL        1                    NA                 0.0128999   -0.0369456   0.0627454
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0112535   -0.0034469   0.0259539
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0140730    0.0026569   0.0254890
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0028837   -0.0113181   0.0170854
6-24 months                   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0250592   -0.0720102   0.1221286
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0281494   -0.0016402   0.0579390
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0698427   -0.0144037   0.1540890


### Parameter: PAF


agecat                        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0480686   -0.0323921   0.1222585
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0166028   -0.0302451   0.0613204
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        1                    NA                 0.0550971   -0.3126033   0.3197933
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0322719   -0.0156657   0.0779469
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0734693    0.0095663   0.1332493
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0545910   -0.0527474   0.1509852
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0314991   -0.1660391   0.1955723
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.1165115   -0.0523553   0.2582810
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.2343914   -0.1589053   0.4942153
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        1                    NA                -0.2717087   -0.9779745   0.1823742
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0013930   -0.1001629   0.0935743
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0849410   -0.0535558   0.2052316
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.1488636   -0.1685294   0.3800472
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.1017606   -0.6899798   0.2817214
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.1544353   -0.0874069   0.3424912
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0374332   -0.0564128   0.1229423
6-24 months                   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0486506   -0.0187547   0.1115960
6-24 months                   ki0047075b-MAL-ED       NEPAL        1                    NA                 0.0919118   -0.3414160   0.3852584
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0383189   -0.0130092   0.0870463
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0874229    0.0149201   0.1545894
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0219278   -0.0921913   0.1241231
6-24 months                   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0532221   -0.1771614   0.2385170
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.1707784   -0.0312031   0.3331978
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.2713995   -0.1489748   0.5379718
