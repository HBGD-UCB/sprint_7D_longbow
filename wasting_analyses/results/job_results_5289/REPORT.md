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
![](/tmp/a93a7171-a270-44c2-b948-4c604bdb1927/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a93a7171-a270-44c2-b948-4c604bdb1927/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a93a7171-a270-44c2-b948-4c604bdb1927/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a93a7171-a270-44c2-b948-4c604bdb1927/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.3684211   0.1510726   0.5857695
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.2242152   0.1693625   0.2790679
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        0                    NA                0.4666667   0.2136511   0.7196823
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        1                    NA                0.3703704   0.3058311   0.4349096
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        0                    NA                0.1835402   0.1158900   0.2511904
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        1                    NA                0.1648033   0.0930533   0.2365533
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.3688415   0.2949084   0.4427747
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.2863018   0.2482654   0.3243382
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.3001465   0.1842420   0.4160510
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.1652520   0.1361951   0.1943089
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0942043   0.0442174   0.1441911
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1282920   0.1004755   0.1561085
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.5349485   0.4857943   0.5841028
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.4954272   0.4200460   0.5708084
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.1700399   0.1645228   0.1755571
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.1562819   0.1375187   0.1750452
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.2699320   0.2548574   0.2850065
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.2159048   0.1706301   0.2611796
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        0                    NA                0.0480000   0.0104430   0.0855570
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        1                    NA                0.0784314   0.0261418   0.1307210
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.0806452   0.0128097   0.1484807
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0789981   0.0557719   0.1022242
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.0983607   0.0235732   0.1731481
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.0482315   0.0313814   0.0650816
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0395480   0.0108170   0.0682791
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0227273   0.0105059   0.0349487
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        0                    NA                0.1551997   0.1181059   0.1922935
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1755747   0.0924984   0.2586510
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0717411   0.0679674   0.0755148
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0635307   0.0530740   0.0739875
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0255400   0.0205787   0.0305012
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0233786   0.0088497   0.0379076
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.2631579   0.0647434   0.4615724
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.1764706   0.1261049   0.2268362
6-24 months                   ki0047075b-MAL-ED       INDIA        0                    NA                0.4666667   0.2136604   0.7196729
6-24 months                   ki0047075b-MAL-ED       INDIA        1                    NA                0.2590909   0.2010718   0.3171101
6-24 months                   ki0047075b-MAL-ED       NEPAL        0                    NA                0.1510199   0.0884521   0.2135877
6-24 months                   ki0047075b-MAL-ED       NEPAL        1                    NA                0.1272096   0.0624105   0.1920087
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.2939664   0.2118358   0.3760970
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.2830513   0.2430792   0.3230233
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.3606808   0.2426208   0.4787408
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.1481990   0.1189935   0.1774045
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0980326   0.0524044   0.1436608
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1245831   0.0969280   0.1522381
6-24 months                   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.4806268   0.4315169   0.5297368
6-24 months                   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.5725922   0.4976738   0.6475107
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.1656349   0.1592569   0.1720130
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.1513244   0.1319393   0.1707095
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.2589800   0.2439495   0.2740105
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.2039560   0.1594334   0.2484786


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
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        1                    0                 0.8979138   0.5076711   1.5881330
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   1                    0                 0.7762190   0.6105229   0.9868851
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   1                    0                 0.5505712   0.3603217   0.8412725
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 1.3618493   0.7672425   2.4172718
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        1                    0                 0.9261212   0.7754897   1.1060114
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.9190896   0.8125143   1.0396440
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   1                    0                 0.7998491   0.6425930   0.9955892
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        1                    0                 1.6339869   0.5845400   4.5675458
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   1                    0                 0.9795761   0.4018415   2.3879299
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   1                    0                 0.4903537   0.2123780   1.1321642
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 0.5746753   0.2327473   1.4189284
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        1                    0                 1.1312825   0.6660588   1.9214524
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.8855555   0.7458225   1.0514680
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   1                    0                 0.9153739   0.4771078   1.7562266
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   1                    0                 0.6705882   0.2994568   1.5016811
6-24 months                   ki0047075b-MAL-ED       INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       INDIA        1                    0                 0.5551948   0.3088131   0.9981485
6-24 months                   ki0047075b-MAL-ED       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       NEPAL        1                    0                 0.8423369   0.4370935   1.6232942
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   1                    0                 0.9628694   0.7066951   1.3119058
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   1                    0                 0.4108867   0.2804979   0.6018866
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 1.2708329   0.7597480   2.1257262
6-24 months                   ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal     NEPAL        1                    0                 1.1913447   1.0093520   1.4061518
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.9136020   0.8012098   1.0417604
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   1                    0                 0.7875358   0.6266585   0.9897138


### Parameter: PAR


agecat                        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   0                    NA                -0.1328839   -0.3395055    0.0737378
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        0                    NA                -0.0900433   -0.3342241    0.1541375
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        0                    NA                -0.0088677   -0.0532615    0.0355260
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0733490   -0.1436158   -0.0030822
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.1225628   -0.2314246   -0.0137011
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.0490318    0.0061781    0.0918856
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0004658   -0.0216052    0.0206736
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0006503   -0.0023075    0.0010068
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0097352   -0.0155155   -0.0039549
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        0                    NA                 0.0136740   -0.0153215    0.0426695
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0014713   -0.0655214    0.0625788
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.0456520   -0.1154756    0.0241715
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0128458   -0.0366953    0.0110038
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        0                    NA                 0.0036370   -0.0126557    0.0199296
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0000315   -0.0011304    0.0010675
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0002619   -0.0021512    0.0016274
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   0                    NA                -0.0798246   -0.2683491    0.1086999
6-24 months                   ki0047075b-MAL-ED       INDIA        0                    NA                -0.1943262   -0.4374181    0.0487656
6-24 months                   ki0047075b-MAL-ED       NEPAL        0                    NA                -0.0106690   -0.0509552    0.0296172
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0002861   -0.0774622    0.0768900
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.1997052   -0.3106983   -0.0887121
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.0334742   -0.0059840    0.0729325
6-24 months                   ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0097845   -0.0309108    0.0113418
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0017928   -0.0036990    0.0001134
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0109724   -0.0166519   -0.0052929


### Parameter: PAF


agecat                        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   0                    NA                -0.5641736   -1.7400360    0.1070778
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        0                    NA                -0.2390805   -1.0919632    0.2660863
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        0                    NA                -0.0507678   -0.3380713    0.1748475
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.2482264   -0.5183379   -0.0261675
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.6901694   -1.4239500   -0.1785196
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.3423147   -0.0474646    0.5870506
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0008715   -0.0412184    0.0379120
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0038392   -0.0136740    0.0059001
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0374147   -0.0599028   -0.0154038
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        0                    NA                 0.2217143   -0.4015953    0.5678291
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0185835   -1.2538067    0.5396623
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.8661202   -2.7488834    0.0710822
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.4810734   -1.6660123    0.1772061
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        0                    NA                 0.0228976   -0.0851864    0.1202165
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0004387   -0.0158822    0.0147700
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0103610   -0.0880903    0.0618157
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   0                    NA                -0.4354067   -1.9335249    0.2976394
6-24 months                   ki0047075b-MAL-ED       INDIA        0                    NA                -0.7135417   -1.8907991   -0.0157140
6-24 months                   ki0047075b-MAL-ED       NEPAL        0                    NA                -0.0760166   -0.4041526    0.1754374
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0009743   -0.3015065    0.2301617
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   0                    NA                -1.2405928   -2.0608690   -0.6401408
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.2545437   -0.1176702    0.5028004
6-24 months                   ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0207808   -0.0668134    0.0232655
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0109423   -0.0226589    0.0006400
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0442421   -0.0673981   -0.0215885
