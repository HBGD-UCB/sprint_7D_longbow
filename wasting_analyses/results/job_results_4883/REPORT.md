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
![](/tmp/6fca9bdb-fd57-4c95-9706-00447cb2123a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6fca9bdb-fd57-4c95-9706-00447cb2123a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6fca9bdb-fd57-4c95-9706-00447cb2123a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6fca9bdb-fd57-4c95-9706-00447cb2123a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.3684211   0.1510726   0.5857695
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.2242152   0.1693625   0.2790679
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        0                    NA                0.4666667   0.2136511   0.7196823
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        1                    NA                0.3703704   0.3058311   0.4349096
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        0                    NA                0.1834356   0.1157414   0.2511298
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        1                    NA                0.1649465   0.0931231   0.2367700
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.3653778   0.2868680   0.4438875
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.2866851   0.2486693   0.3247008
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.3012736   0.1853532   0.4171939
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.1651798   0.1361227   0.1942369
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0917824   0.0446424   0.1389224
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1278233   0.1001394   0.1555072
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.5355165   0.4861283   0.5849047
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.4969625   0.4165791   0.5773458
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.1700429   0.1645263   0.1755595
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.1561945   0.1375224   0.1748666
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.2691529   0.2541076   0.2841982
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.2165707   0.1723803   0.2607610
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        0                    NA                0.0480000   0.0104430   0.0855570
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        1                    NA                0.0784314   0.0261418   0.1307210
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.0806452   0.0128097   0.1484807
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0789981   0.0557719   0.1022242
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.0983607   0.0235732   0.1731481
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.0482315   0.0313814   0.0650816
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0395480   0.0108170   0.0682791
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0227273   0.0105059   0.0349487
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        0                    NA                0.1553098   0.1182117   0.1924079
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1750178   0.0916710   0.2583647
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0717393   0.0679638   0.0755149
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0631542   0.0525666   0.0737418
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0255400   0.0205787   0.0305012
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0233787   0.0088498   0.0379076
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.2631579   0.0647434   0.4615724
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.1764706   0.1261049   0.2268362
6-24 months                   ki0047075b-MAL-ED       INDIA        0                    NA                0.4666667   0.2136604   0.7196729
6-24 months                   ki0047075b-MAL-ED       INDIA        1                    NA                0.2590909   0.2010718   0.3171101
6-24 months                   ki0047075b-MAL-ED       NEPAL        0                    NA                0.1512606   0.0884988   0.2140225
6-24 months                   ki0047075b-MAL-ED       NEPAL        1                    NA                0.1269444   0.0623209   0.1915678
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.2952026   0.2150586   0.3753467
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.2833179   0.2433907   0.3232450
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.3508106   0.2217440   0.4798773
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.1480565   0.1188559   0.1772572
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0972675   0.0507260   0.1438089
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1245354   0.0967924   0.1522783
6-24 months                   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.4803709   0.4308394   0.5299023
6-24 months                   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.5525478   0.4694150   0.6356806
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.1656412   0.1592642   0.1720183
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.1510846   0.1318769   0.1702923
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.2580796   0.2431057   0.2730535
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.2049026   0.1615289   0.2482762


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
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        1                    0                 0.8992067   0.5079949   1.5916946
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   1                    0                 0.7846265   0.6113376   1.0070354
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   1                    0                 0.5482717   0.3592541   0.8367389
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 1.3926775   0.7970373   2.4334504
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        1                    0                 0.9280060   0.7705105   1.1176942
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.9185595   0.8124423   1.0385371
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   1                    0                 0.8046382   0.6500632   0.9959687
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        1                    0                 1.6339869   0.5845400   4.5675458
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   1                    0                 0.9795761   0.4018415   2.3879299
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   1                    0                 0.4903537   0.2123780   1.1321642
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 0.5746753   0.2327473   1.4189284
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        1                    0                 1.1268949   0.6614708   1.9198004
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.8803294   0.7392558   1.0483244
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   1                    0                 0.9153764   0.4771102   1.7562275
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   1                    0                 0.6705882   0.2994568   1.5016811
6-24 months                   ki0047075b-MAL-ED       INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       INDIA        1                    0                 0.5551948   0.3088131   0.9981485
6-24 months                   ki0047075b-MAL-ED       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       NEPAL        1                    0                 0.8392427   0.4351818   1.6184693
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   1                    0                 0.9597403   0.7100905   1.2971606
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   1                    0                 0.4220412   0.2781209   0.6404365
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 1.2803392   0.7553207   2.1702945
6-24 months                   ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal     NEPAL        1                    0                 1.1502525   0.9587059   1.3800695
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.9121196   0.8006394   1.0391223
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   1                    0                 0.7939510   0.6358244   0.9914030


### Parameter: PAR


agecat                        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   0                    NA                -0.1328839   -0.3395055    0.0737378
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        0                    NA                -0.0900433   -0.3342241    0.1541375
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        0                    NA                -0.0087631   -0.0531914    0.0356652
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0698853   -0.1435748    0.0038042
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.1236899   -0.2325672   -0.0148125
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.0514537    0.0110159    0.0918915
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0010337   -0.0222091    0.0201417
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0006533   -0.0023093    0.0010027
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0089561   -0.0146599   -0.0032523
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        0                    NA                 0.0136740   -0.0153215    0.0426695
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0014713   -0.0655214    0.0625788
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.0456520   -0.1154756    0.0241715
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0128458   -0.0366953    0.0110038
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        0                    NA                 0.0035269   -0.0128155    0.0198693
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0000297   -0.0011343    0.0010750
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0002619   -0.0021512    0.0016274
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   0                    NA                -0.0798246   -0.2683491    0.1086999
6-24 months                   ki0047075b-MAL-ED       INDIA        0                    NA                -0.1943262   -0.4374181    0.0487656
6-24 months                   ki0047075b-MAL-ED       NEPAL        0                    NA                -0.0109098   -0.0513665    0.0295470
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0015223   -0.0768514    0.0738067
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.1898350   -0.3114521   -0.0682180
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.0342394   -0.0060390    0.0745178
6-24 months                   ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0095285   -0.0306337    0.0115766
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0017991   -0.0037014    0.0001032
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0100720   -0.0156400   -0.0045040


### Parameter: PAF


agecat                        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   0                    NA                -0.5641736   -1.7400360    0.1070778
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        0                    NA                -0.2390805   -1.0919632    0.2660863
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        0                    NA                -0.0501689   -0.3377295    0.1755773
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.2365045   -0.5188742   -0.0066293
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.6965158   -1.4299784   -0.1844410
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.3592229   -0.0044208    0.5912119
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0019340   -0.0423532    0.0369178
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0038566   -0.0136845    0.0058760
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0344205   -0.0566001   -0.0127065
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        0                    NA                 0.2217143   -0.4015953    0.5678291
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0185835   -1.2538067    0.5396623
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.8661202   -2.7488834    0.0710822
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.4810734   -1.6660123    0.1772061
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        0                    NA                 0.0222044   -0.0862157    0.1198025
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0004138   -0.0159381    0.0148733
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0103608   -0.0880902    0.0618158
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   0                    NA                -0.4354067   -1.9335249    0.2976394
6-24 months                   ki0047075b-MAL-ED       INDIA        0                    NA                -0.7135417   -1.8907991   -0.0157140
6-24 months                   ki0047075b-MAL-ED       NEPAL        0                    NA                -0.0777321   -0.4073029    0.1746578
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0051837   -0.2974935    0.2212722
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   0                    NA                -1.1792782   -2.0811680   -0.5413809
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.2603619   -0.1227362    0.5127400
6-24 months                   ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0202372   -0.0661730    0.0237194
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0109807   -0.0226737    0.0005785
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0406117   -0.0633054   -0.0184025
