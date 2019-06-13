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
![](/tmp/b772f2ed-1468-48df-93eb-5e0e3bc1540c/f50f46b9-029a-440a-8b68-8ab74bcce6c6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b772f2ed-1468-48df-93eb-5e0e3bc1540c/f50f46b9-029a-440a-8b68-8ab74bcce6c6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   optimal              NA                0.2242150   0.1693393   0.2790908
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        optimal              NA                0.3700372   0.3054629   0.4346114
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        optimal              NA                0.1932789   0.1167130   0.2698447
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                0.2736034   0.2088046   0.3384022
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   optimal              NA                0.1652973   0.1362142   0.1943804
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                0.1110300   0.0828462   0.1392139
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        optimal              NA                0.5554568   0.4630250   0.6478885
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                0.1703909   0.1455503   0.1952314
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                0.2452546   0.1585690   0.3319402
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        optimal              NA                0.0465737   0.0093159   0.0838316
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   optimal              NA                0.1250910   0.0582561   0.1919260
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   optimal              NA                0.0483178   0.0314481   0.0651874
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                0.0225973   0.0104000   0.0347946
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        optimal              NA                0.2412777   0.1781300   0.3044255
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                0.0754804   0.0581268   0.0928341
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   optimal              NA                0.1766604   0.1262346   0.2270863
6-24 months                   ki0047075b-MAL-ED       INDIA        optimal              NA                0.2591787   0.2011329   0.3172244
6-24 months                   ki0047075b-MAL-ED       NEPAL        optimal              NA                0.1628449   0.0903285   0.2353613
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                0.3035499   0.2363010   0.3707988
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   optimal              NA                0.1486873   0.1194286   0.1779460
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                0.0946825   0.0609266   0.1284385
6-24 months                   ki1113344-GMS-Nepal     NEPAL        optimal              NA                0.4951285   0.3985006   0.5917564
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                0.1580086   0.1271184   0.1888988
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                0.1894789   0.1005413   0.2784165


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
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   observed             optimal           1.0504970   0.9687001   1.1392007
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        observed             optimal           1.0177987   0.9712807   1.0665447
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        observed             optimal           0.9037330   0.6892414   1.1849742
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   observed             optimal           1.0872633   0.8877845   1.3315637
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   observed             optimal           1.0743294   1.0058332   1.1474901
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   observed             optimal           1.2900659   1.0618419   1.5673425
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        observed             optimal           0.9622401   0.8330581   1.1114542
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   observed             optimal           1.0209662   0.8864818   1.1758525
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   observed             optimal           1.0984241   0.7816590   1.5435574
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        observed             optimal           1.3242226   0.7250490   2.4185475
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   observed             optimal           0.6373175   0.4035659   1.0064616
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   observed             optimal           1.0908752   0.9474924   1.2559559
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   observed             optimal           1.1816558   0.8592517   1.6250307
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        observed             optimal           0.6583147   0.5342767   0.8111495
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   observed             optimal           0.9977749   0.7969914   1.2491413
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   observed             optimal           1.0377725   0.9451869   1.1394274
6-24 months                   ki0047075b-MAL-ED       INDIA        observed             optimal           1.0507826   0.9812598   1.1252312
6-24 months                   ki0047075b-MAL-ED       NEPAL        observed             optimal           0.8618684   0.6372030   1.1657463
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   observed             optimal           0.9674861   0.8109418   1.1542497
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   observed             optimal           1.0826453   1.0038598   1.1676141
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   observed             optimal           1.3889239   1.0250375   1.8819893
6-24 months                   ki1113344-GMS-Nepal     NEPAL        observed             optimal           0.9509498   0.8079773   1.1192214
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   observed             optimal           1.0431713   0.8669299   1.2552414
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   observed             optimal           1.3581600   0.8594398   2.1462803


### Parameter: PAR


agecat                        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   optimal              NA                 0.0113222   -0.0069244    0.0295687
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        optimal              NA                 0.0065862   -0.0107159    0.0238883
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        optimal              NA                -0.0186064   -0.0713697    0.0341569
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                 0.0238756   -0.0316752    0.0794263
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   optimal              NA                 0.0122864    0.0012811    0.0232918
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                 0.0322060    0.0095530    0.0548590
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        optimal              NA                -0.0209740   -0.1010457    0.0590977
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                 0.0035724   -0.0205038    0.0276487
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                 0.0241390   -0.0593569    0.1076348
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        optimal              NA                 0.0151003   -0.0137600    0.0439605
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   optimal              NA                -0.0453683   -0.1038810    0.0131443
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   optimal              NA                 0.0043909   -0.0025474    0.0113291
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                 0.0041049   -0.0032941    0.0115040
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        optimal              NA                -0.0824411   -0.1317924   -0.0330897
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                -0.0001679   -0.0171262    0.0167903
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   optimal              NA                 0.0066729   -0.0098915    0.0232373
6-24 months                   ki0047075b-MAL-ED       INDIA        optimal              NA                 0.0131618   -0.0046392    0.0309627
6-24 months                   ki0047075b-MAL-ED       NEPAL        optimal              NA                -0.0224940   -0.0723323    0.0273442
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                -0.0098696   -0.0634834    0.0437442
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   optimal              NA                 0.0122883    0.0008695    0.0237071
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                 0.0368243    0.0072514    0.0663972
6-24 months                   ki1113344-GMS-Nepal     NEPAL        optimal              NA                -0.0242861   -0.1051537    0.0565814
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                 0.0068214   -0.0224064    0.0360492
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                 0.0678638   -0.0190756    0.1548031


### Parameter: PAF


agecat                        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   optimal              NA                 0.0480696   -0.0323112    0.1221915
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        optimal              NA                 0.0174875   -0.0295685    0.0623928
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        optimal              NA                -0.1065216   -0.4508706    0.1560998
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                 0.0802596   -0.1263995    0.2490033
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   optimal              NA                 0.0691868    0.0057994    0.1285328
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                 0.2248458    0.0582402    0.3619774
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        optimal              NA                -0.0392417   -0.2003964    0.1002778
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                 0.0205356   -0.1280547    0.1495532
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                 0.0896048   -0.2793303    0.3521459
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        optimal              NA                 0.2448400   -0.3792171    0.5865287
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   optimal              NA                -0.5690767   -1.4779102    0.0064201
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   optimal              NA                 0.0833048   -0.0554174    0.2037937
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                 0.1537299   -0.1638033    0.3846270
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        optimal              NA                -0.5190303   -0.8716895   -0.2328183
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                -0.0022300   -0.2547187    0.1994500
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   optimal              NA                 0.0363977   -0.0579919    0.1223662
6-24 months                   ki0047075b-MAL-ED       INDIA        optimal              NA                 0.0483284   -0.0190981    0.1112937
6-24 months                   ki0047075b-MAL-ED       NEPAL        optimal              NA                -0.1602700   -0.5693585    0.1421804
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                -0.0336066   -0.2331342    0.1336363
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   optimal              NA                 0.0763365    0.0038450    0.1435526
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                 0.2800181    0.0244259    0.4686474
6-24 months                   ki1113344-GMS-Nepal     NEPAL        optimal              NA                -0.0515802   -0.2376585    0.1065218
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                 0.0413847   -0.1534958    0.2033405
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                 0.2637097   -0.1635486    0.5340776
