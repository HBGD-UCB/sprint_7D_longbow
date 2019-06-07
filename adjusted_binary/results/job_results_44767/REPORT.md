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

**Outcome Variable:** ever_swasted

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

agecat                        studyid                    country                        impfloor    ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      0      212     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      1       11     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      0       18     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      1        1     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      0      204     209
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      1        3     209
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      0        2     209
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      1        0     209
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      0      206     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      1       10     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      0       15     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      1        0     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      0      100     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      1        3     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      0      126     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      1        0     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      0       59     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      1        0     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      0      210     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      1        3     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0      225     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1       11     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       21     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1        0     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       14     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      228     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        6     248
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0      224     258
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1       34     258
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0     258
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0     258
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                      0      246     305
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                      1       59     305
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                      0        0     305
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                      1        0     305
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                      0      483     595
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                      1       45     595
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                      0       58     595
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                      1        9     595
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                      0      612     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                      1       14     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                      0       56     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                      1        5     687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      559     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       17     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                      0      175     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                      1        3     754
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      0       72     464
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      1       13     464
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      0      294     464
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      1       85     464
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                      0      201     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                      1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                      0       14     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                      1        0     215
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      0      990   12974
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      1       25   12974
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      0    11491   12974
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      468   12974
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      157    1418
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      1        3    1418
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      0     1202    1418
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      1       56    1418
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      0      215     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      1        7     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      0       19     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      1        0     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      0      205     209
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      1        2     209
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      0        2     209
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      1        0     209
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      0      210     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      1        5     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      0       15     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      1        0     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      0      101     227
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      1        1     227
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      0      125     227
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      1        0     227
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      0       59     272
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      1        0     272
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      0      212     272
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      1        1     272
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0      232     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        3     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       21     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1        0     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       14     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      232     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        2     248
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0      224     246
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1       22     246
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0     246
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0     246
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                      0      244     291
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                      1       47     291
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                      0        0     291
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                      1        0     291
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                      0      508     577
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                      1        7     577
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                      0       60     577
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                      1        2     577
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                      0      619     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                      1        3     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                      0       58     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                      1        3     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      571     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                      1        1     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                      0      177     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                      1        0     749
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      0       78     447
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      1        2     447
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      0      354     447
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      1       13     447
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                      0      201     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                      1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                      0       14     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                      1        0     215
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      0      991   12800
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      1       14   12800
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      0    11574   12800
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      221   12800
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      148    1274
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      1        0    1274
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      0     1122    1274
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      1        4    1274
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      0      217     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      1        4     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      0       18     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      1        1     240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      0      203     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      1        2     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      0        2     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      1        0     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      0      215     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      1        5     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      0       15     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      0      100     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      1        2     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      0      126     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      1        0     228
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      0       58     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      0      210     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      1        2     270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0      225     255
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        9     255
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       21     255
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1        0     255
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       12     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      227     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        4     243
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0      245     261
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1       16     261
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0     261
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0     261
6-24 months                   ki1000108-IRC              INDIA                          1                      0      289     306
6-24 months                   ki1000108-IRC              INDIA                          1                      1       17     306
6-24 months                   ki1000108-IRC              INDIA                          0                      0        0     306
6-24 months                   ki1000108-IRC              INDIA                          0                      1        0     306
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                      0      439     538
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                      1       39     538
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                      0       52     538
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                      1        8     538
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                      0      554     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                      1       11     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                      0       48     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                      1        2     615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      535     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       17     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                      0      175     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                      1        3     730
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      0       70     463
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      1       13     463
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      0      301     463
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      1       79     463
6-24 months                   ki1114097-CONTENT          PERU                           1                      0      201     215
6-24 months                   ki1114097-CONTENT          PERU                           1                      1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           0                      0       14     215
6-24 months                   ki1114097-CONTENT          PERU                           0                      1        0     215
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      0      705    8530
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      1       12    8530
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     7545    8530
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      268    8530
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      157    1430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      1        3    1430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      0     1210    1430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      1       60    1430


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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/9bad4024-6299-46c2-93c2-e7b168c2d9d0/2df0158b-4e72-41ba-83e1-9fae5943aed7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9bad4024-6299-46c2-93c2-e7b168c2d9d0/2df0158b-4e72-41ba-83e1-9fae5943aed7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9bad4024-6299-46c2-93c2-e7b168c2d9d0/2df0158b-4e72-41ba-83e1-9fae5943aed7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9bad4024-6299-46c2-93c2-e7b168c2d9d0/2df0158b-4e72-41ba-83e1-9fae5943aed7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   1                    NA                0.0852273   0.0613908   0.1090638
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   0                    NA                0.1343284   0.0526068   0.2160499
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0223642   0.0107726   0.0339558
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0819672   0.0130784   0.1508560
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1529412   0.0763416   0.2295407
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2242744   0.1822365   0.2663123
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0246305   0.0122745   0.0369866
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0391337   0.0351530   0.0431144
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0139303   0.0069963   0.0208644
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0187368   0.0157968   0.0216767
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   1                    NA                0.0815900   0.0570273   0.1061526
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   0                    NA                0.1333333   0.0472395   0.2194271
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1566265   0.0783519   0.2349012
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2078947   0.1670497   0.2487397
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0167364   0.0039479   0.0295249
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0343018   0.0298886   0.0387150


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   NA                   NA                0.0907563   0.0676552   0.1138574
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0276565   0.0153851   0.0399279
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2112069   0.1740283   0.2483855
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0379991   0.0341811   0.0418171
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0183594   0.0155895   0.0211293
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   NA                   NA                0.0873606   0.0634787   0.1112425
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1987041   0.1623187   0.2350895
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0328253   0.0285477   0.0371029


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   0                    1                 1.576119   0.8068527   3.078818
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    1                 3.665105   1.3653919   9.838199
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.466410   0.8590299   2.503239
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.588828   0.9547628   2.643982
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.345031   0.7995104   2.262771
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   0                    1                 1.634188   0.8014849   3.332028
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.327328   0.7758329   2.270849
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 2.049533   0.9553195   4.397047


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   1                    NA                0.0055290   -0.0041376   0.0151957
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0052923   -0.0010389   0.0116234
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0582657   -0.0131486   0.1296801
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0133685    0.0014898   0.0252472
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0044290   -0.0024789   0.0113369
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   1                    NA                0.0057706   -0.0043086   0.0158499
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0420776   -0.0304077   0.1145629
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0160889    0.0040285   0.0281493


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   1                    NA                0.0609217   -0.0508344   0.1607926
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1913570   -0.0528139   0.3788993
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2758703   -0.1516523   0.5446857
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.3518121   -0.0512434   0.6003327
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2412406   -0.2372929   0.5346972
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   1                    NA                0.0660554   -0.0554302   0.1735573
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2117601   -0.2501244   0.5029917
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4901374   -0.0592458   0.7545803
