---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
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
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** impfloor

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_nchldlt5
* W_parity
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

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







# Results Detail

## Results Plots
![](/tmp/06ff9e2e-4e6a-47bf-b87f-c92a7c1ede2e/41b2212d-b4c0-4de7-9276-e897250c4790/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/06ff9e2e-4e6a-47bf-b87f-c92a7c1ede2e/41b2212d-b4c0-4de7-9276-e897250c4790/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   optimal              NA                0.2246249   0.1696860   0.2795638
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        optimal              NA                0.4142892   0.2606559   0.5679226
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        optimal              NA                0.1953726   0.1185692   0.2721760
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                0.2698868   0.2025396   0.3372340
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   optimal              NA                0.1650695   0.1359987   0.1941403
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                0.1203275   0.0906748   0.1499802
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        optimal              NA                0.5199668   0.4281497   0.6117838
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                0.1644893   0.1427843   0.1861943
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                0.2300151   0.1438373   0.3161929
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        optimal              NA                0.0487157   0.0104826   0.0869489
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   optimal              NA                0.1639500   0.1045301   0.2233698
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   optimal              NA                0.0482762   0.0314069   0.0651455
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                0.0228425   0.0105846   0.0351004
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        optimal              NA                0.1812793   0.1318244   0.2307342
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                0.0788065   0.0606927   0.0969202
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   optimal              NA                0.1763824   0.1259961   0.2267688
6-24 months                   ki0047075b-MAL-ED       INDIA        optimal              NA                0.2588200   0.2007898   0.3168502
6-24 months                   ki0047075b-MAL-ED       NEPAL        optimal              NA                0.1370288   0.0706951   0.2033626
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                0.2779370   0.2033474   0.3525266
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   optimal              NA                0.1477892   0.1185552   0.1770232
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                0.1191891   0.0810344   0.1573438
6-24 months                   ki1113344-GMS-Nepal     NEPAL        optimal              NA                0.4492416   0.3589679   0.5395153
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                0.1464331   0.1160831   0.1767832
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                0.1909883   0.1008362   0.2811405


### Parameter: E(Y)


agecat                        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   observed             NA                0.2355372   0.1819640   0.2891104
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        observed             NA                0.3766234   0.3140034   0.4392434
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        observed             NA                0.1746725   0.1253885   0.2239565
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   observed             NA                0.2974790   0.2607158   0.3342421
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   observed             NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   observed             NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        observed             NA                0.5344828   0.4890476   0.5799179
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   observed             NA                0.1739633   0.1661499   0.1817768
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   observed             NA                0.2693935   0.2426940   0.2960930
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        observed             NA                0.0616740   0.0303107   0.0930373
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   observed             NA                0.0797227   0.0576026   0.1018428
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   observed             NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   observed             NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        observed             NA                0.1588367   0.1249135   0.1927598
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   observed             NA                0.0753125   0.0700151   0.0806099
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   observed             NA                0.1833333   0.1342773   0.2323893
6-24 months                   ki0047075b-MAL-ED       INDIA        observed             NA                0.2723404   0.2153029   0.3293779
6-24 months                   ki0047075b-MAL-ED       NEPAL        observed             NA                0.1403509   0.0951649   0.1855368
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   observed             NA                0.2936803   0.2551592   0.3322014
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   observed             NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   observed             NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1113344-GMS-Nepal     NEPAL        observed             NA                0.4708423   0.4253270   0.5163576
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   observed             NA                0.1648300   0.1556593   0.1740008
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   observed             NA                0.2573427   0.2311603   0.2835250


### Parameter: RR


agecat                        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   observed             optimal           1.0485801   0.9668861   1.1371766
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        observed             optimal           0.9090832   0.6545864   1.2625257
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        observed             optimal           0.8940480   0.6831328   1.1700827
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   observed             optimal           1.1022361   0.8898693   1.3652841
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   observed             optimal           1.0758118   1.0067507   1.1496103
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   observed             optimal           1.1903853   0.9904134   1.4307330
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        observed             optimal           1.0279172   0.8813543   1.1988524
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   observed             optimal           1.0575965   0.9298758   1.2028598
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   observed             optimal           1.1711992   0.8168216   1.6793235
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        observed             optimal           1.2659975   0.7012815   2.2854583
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   observed             optimal           0.4862624   0.3527134   0.6703776
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   observed             optimal           1.0918133   0.9481655   1.2572239
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   observed             optimal           1.1689736   0.8517458   1.6043511
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        observed             optimal           0.8761989   0.7306953   1.0506767
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   observed             optimal           0.9556636   0.7635020   1.1961893
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   observed             optimal           1.0394083   0.9471238   1.1406846
6-24 months                   ki0047075b-MAL-ED       INDIA        observed             optimal           1.0522388   0.9823693   1.1270776
6-24 months                   ki0047075b-MAL-ED       NEPAL        observed             optimal           1.0242435   0.7125975   1.4721840
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   observed             optimal           1.0566435   0.8366346   1.3345077
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   observed             optimal           1.0892246   1.0098850   1.1747973
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   observed             optimal           1.1033466   0.8494239   1.4331759
6-24 months                   ki1113344-GMS-Nepal     NEPAL        observed             optimal           1.0480827   0.8846829   1.2416622
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   observed             optimal           1.1256333   0.9260589   1.3682179
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   observed             optimal           1.3474261   0.8500769   2.1357564


### Parameter: PAR


agecat                        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   optimal              NA                 0.0109123   -0.0073749    0.0291996
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        optimal              NA                -0.0376659   -0.1739910    0.0986593
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        optimal              NA                -0.0207001   -0.0736891    0.0322889
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                 0.0275922   -0.0301933    0.0853776
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   optimal              NA                 0.0125142    0.0014417    0.0235868
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                 0.0229086    0.0002002    0.0456170
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        optimal              NA                 0.0145160   -0.0654663    0.0944983
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                 0.0094740   -0.0117436    0.0306916
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                 0.0393784   -0.0435648    0.1223216
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        optimal              NA                 0.0129583   -0.0164733    0.0423898
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   optimal              NA                -0.0842273   -0.1356519   -0.0328026
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   optimal              NA                 0.0044324   -0.0025072    0.0113721
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                 0.0038598   -0.0035591    0.0112786
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        optimal              NA                -0.0224426   -0.0554537    0.0105686
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                -0.0034940   -0.0211674    0.0141794
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   optimal              NA                 0.0069509   -0.0095031    0.0234049
6-24 months                   ki0047075b-MAL-ED       INDIA        optimal              NA                 0.0135204   -0.0043219    0.0313628
6-24 months                   ki0047075b-MAL-ED       NEPAL        optimal              NA                 0.0033221   -0.0464068    0.0530509
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                 0.0157433   -0.0491677    0.0806543
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   optimal              NA                 0.0131864    0.0018267    0.0245462
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                 0.0123178   -0.0189572    0.0435928
6-24 months                   ki1113344-GMS-Nepal     NEPAL        optimal              NA                 0.0216007   -0.0544219    0.0976234
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                 0.0183969   -0.0101162    0.0469099
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                 0.0663543   -0.0218577    0.1545664


### Parameter: PAF


agecat                        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   optimal              NA                 0.0463294   -0.0342479    0.1206291
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        optimal              NA                -0.1000094   -0.5276822    0.2079369
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        optimal              NA                -0.1185082   -0.4638443    0.1453596
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                 0.0927534   -0.1237605    0.2675517
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   optimal              NA                 0.0704693    0.0067054    0.1301400
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                 0.1599358   -0.0096794    0.3010576
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        optimal              NA                 0.0271590   -0.1346175    0.1658689
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                 0.0544598   -0.0754124    0.1686479
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                 0.1461743   -0.2242576    0.4045221
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        optimal              NA                 0.2101090   -0.4259609    0.5624510
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   optimal              NA                -1.0565027   -1.8351634   -0.4916966
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   optimal              NA                 0.0840925   -0.0546682    0.2045967
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                 0.1445487   -0.1740592    0.3766951
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        optimal              NA                -0.1412934   -0.3685595    0.0482324
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                -0.0463933   -0.3097543    0.1640119
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   optimal              NA                 0.0379141   -0.0558282    0.1233335
6-24 months                   ki0047075b-MAL-ED       INDIA        optimal              NA                 0.0496454   -0.0179471    0.1127497
6-24 months                   ki0047075b-MAL-ED       NEPAL        optimal              NA                 0.0236696   -0.4033167    0.3207371
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                 0.0536070   -0.1952649    0.2506600
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   optimal              NA                 0.0819157    0.0097883    0.1487894
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                 0.0936665   -0.1772685    0.3022489
6-24 months                   ki1113344-GMS-Nepal     NEPAL        optimal              NA                 0.0458768   -0.1303485    0.1946279
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                 0.1116112   -0.0798449    0.2691223
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                 0.2578443   -0.1763642    0.5317818
