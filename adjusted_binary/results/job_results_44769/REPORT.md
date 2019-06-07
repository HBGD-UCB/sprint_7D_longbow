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

**Intervention Variable:** safeh20

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        safeh20    ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                     0        0     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                     1        0     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                     0      230     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                     1       12     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                     0        0     141
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                     1        0     141
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                     0      139     141
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                     1        2     141
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                     0        0     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                     1        0     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                     0      221     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                     1       10     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                     0        1     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                     1        0     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                     0      229     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                     1        3     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                     0       11     259
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                     1        0     259
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                     0      245     259
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                     1        3     259
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       35     254
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        3     254
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      208     254
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        8     254
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0      165     249
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        5     249
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0       78     249
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        1     249
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0       87     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1       13     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                     0        0     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                     1        0     100
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                     0      542     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                     1       54     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                     0        2     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                     1        0     598
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                     0      666     685
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                     1       19     685
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                     0        0     685
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                     1        0     685
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      734     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       20     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0        0     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        0     754
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                     0       54      57
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                     1        0      57
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                     0        3      57
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                     1        0      57
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                     0      668     814
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                     1        3     814
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                     0      138     814
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                     1        5     814
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    12490   12997
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      492   12997
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                     0       14   12997
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                     1        1   12997
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     1359    1418
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                     1       59    1418
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                     0        0    1418
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                     1        0    1418
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                     0        0     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                     1        0     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                     0      234     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                     1        7     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                     0        0     141
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                     1        0     141
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                     0      140     141
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                     1        1     141
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                     0        0     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                     1        0     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                     0      225     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                     1        5     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                     0        1     231
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                     1        0     231
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                     0      229     231
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                     1        1     231
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                     0       11     259
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                     1        0     259
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                     0      247     259
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                     1        1     259
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       37     253
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        1     253
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      213     253
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2     253
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0      168     249
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        2     249
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0       79     249
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        0     249
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                     0       89      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                     0        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                     1        0      89
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                     0      569     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                     1        9     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                     0        2     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                     1        0     580
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                     0      675     681
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                     1        6     681
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                     0        0     681
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                     1        0     681
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      748     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1        1     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     0        0     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        0     749
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                     0       54      57
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                     1        0      57
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                     0        3      57
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                     1        0      57
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                     0      210     265
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                     1        0     265
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                     0       55     265
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                     1        0     265
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                     0    12574   12823
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                     1      234   12823
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                     0       14   12823
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                     1        1   12823
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                     0     1270    1274
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                     1        4    1274
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                     0        0    1274
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                     1        0    1274
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                     0        0     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                     1        0     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                     0      235     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                     1        5     240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                     0        0     140
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                     1        0     140
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                     0      138     140
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                     1        2     140
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                     0        0     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                     1        0     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                     0      230     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                     1        5     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                     0        1     232
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                     1        0     232
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                     0      229     232
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                     1        2     232
6-24 months                   ki0047075b-MAL-ED          PERU                           1                     0       11     259
6-24 months                   ki0047075b-MAL-ED          PERU                           1                     1        0     259
6-24 months                   ki0047075b-MAL-ED          PERU                           0                     0      246     259
6-24 months                   ki0047075b-MAL-ED          PERU                           0                     1        2     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       36     254
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        2     254
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      209     254
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        7     254
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0      164     244
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        3     244
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0       76     244
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        1     244
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0       85     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1       18     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                     0        0     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                     1        0     103
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                     0      492     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                     1       47     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                     0        2     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                     1        0     541
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                     0      600     613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                     1       13     613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                     0        0     613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                     1        0     613
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      710     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       20     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0        0     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        0     730
6-24 months                   ki1114097-CONTENT          PERU                           1                     0       54      57
6-24 months                   ki1114097-CONTENT          PERU                           1                     1        0      57
6-24 months                   ki1114097-CONTENT          PERU                           0                     0        3      57
6-24 months                   ki1114097-CONTENT          PERU                           0                     1        0      57
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                     0      661     805
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                     1        3     805
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                     0      135     805
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                     1        6     805
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     8263    8549
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      280    8549
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                     0        6    8549
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                     1        0    8549
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     1367    1430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                     1       63    1430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                     0        0    1430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                     1        0    1430


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH


ALL STRATA DROPPED. JOB FINISHED
















