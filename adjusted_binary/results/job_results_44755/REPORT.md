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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        exclfeed36    ever_wasted   n_cell      n
----------------------------  -------------------------  -----------------------------  -----------  ------------  -------  -----
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       47    251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       17    251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       0      147    251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       40    251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       0       18    224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       1        0    224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       0      194    224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       1       12    224
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       0        5    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       1        2    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       0      145    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       1       86    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       0       14    237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       1        1    237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       0      178    237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       1       44    237
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       0       16    287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       1        0    287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       0      252    287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       1       19    287
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0    281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0    281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      237    281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       44    281
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1    256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0    256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      225    256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       30    256
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        7      9
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        2      9
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      9
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      9
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                       0        0      4
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                       1        0      4
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                       0        1      4
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                       1        3      4
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       0      129    371
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       1       95    371
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       0       78    371
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       1       69    371
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     44
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     44
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       30     44
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       14     44
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                       0      146    635
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                       1       25    635
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                       0      369    635
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                       1       95    635
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                       0      405   1976
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                       1      218   1976
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                       0      776   1976
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                       1      577   1976
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       0      190    519
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       1      228    519
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       0       48    519
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       1       53    519
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       0       42    271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       1        5    271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       0      204    271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       1       20    271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     6158   9505
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1267   9505
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1588   9505
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      492   9505
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0      664   1166
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      259   1166
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      179   1166
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       64   1166
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       0       59    250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        5    250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       0      173    250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       1       13    250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       0       18    224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       1        0    224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       0      199    224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       1        7    224
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       0        6    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       1        1    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       0      194    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       1       36    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       0       15    235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       1        0    235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       0      205    235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       1       15    235
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       0       16    287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       1        0    287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       0      266    287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       1        5    287
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0    280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0    280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      268    280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       12    280
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1    256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0    256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      247    256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        8    256
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        7      8
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        1      8
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      8
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      8
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                       0        0      4
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                       1        0      4
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                       0        3      4
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                       1        1      4
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       0      188    367
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       1       36    367
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       0      108    367
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       1       35    367
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     36
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     36
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       36     36
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0     36
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                       0      167    631
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                       1        4    631
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                       0      430    631
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                       1       30    631
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                       0      553   1967
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                       1       69   1967
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                       0     1138   1967
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                       1      207   1967
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       0      346    502
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       1       61    502
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       0       78    502
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       1       17    502
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       0       47    268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       1        0    268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       0      221    268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       1        0    268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0     6876   9433
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1      502   9433
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1838   9433
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      217   9433
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0      891   1142
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1       22   1142
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      223   1142
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1        6   1142
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       0       47    239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       1       16    239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       0      148    239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       1       28    239
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       0       17    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       1        0    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       0      184    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       1        6    207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       0        5    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       1        2    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       0      166    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       1       62    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       0       14    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       1        1    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       0      185    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       1       35    235
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       0       16    269
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       1        0    269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       0      237    269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       1       16    269
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      223    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       36    259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      218    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       26    245
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        8      9
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        1      9
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      9
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      9
6-24 months                   ki1000108-IRC              INDIA                          1                       0        0      4
6-24 months                   ki1000108-IRC              INDIA                          1                       1        0      4
6-24 months                   ki1000108-IRC              INDIA                          0                       0        2      4
6-24 months                   ki1000108-IRC              INDIA                          0                       1        2      4
6-24 months                   ki1000109-EE               PAKISTAN                       1                       0      149    370
6-24 months                   ki1000109-EE               PAKISTAN                       1                       1       74    370
6-24 months                   ki1000109-EE               PAKISTAN                       0                       0       98    370
6-24 months                   ki1000109-EE               PAKISTAN                       0                       1       49    370
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     46
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     46
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       32     46
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       14     46
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                       0      138    613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                       1       22    613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                       0      376    613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                       1       77    613
6-24 months                   ki1101329-Keneba           GAMBIA                         1                       0      397   1904
6-24 months                   ki1101329-Keneba           GAMBIA                         1                       1      182   1904
6-24 months                   ki1101329-Keneba           GAMBIA                         0                       0      863   1904
6-24 months                   ki1101329-Keneba           GAMBIA                         0                       1      462   1904
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       0      222    526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       1      202    526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       0       55    526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       1       47    526
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       0       40    258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       1        5    258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       0      193    258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       1       20    258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     4534   6820
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       1      837   6820
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1148   6820
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      301   6820
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       0      680   1173
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      248   1173
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      185   1173
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       60   1173


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
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/1b848da6-006a-4cdf-a58c-31206af2c7c5/301c5d13-fc6c-430c-a14c-59da2b7ffb84/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1b848da6-006a-4cdf-a58c-31206af2c7c5/301c5d13-fc6c-430c-a14c-59da2b7ffb84/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1b848da6-006a-4cdf-a58c-31206af2c7c5/301c5d13-fc6c-430c-a14c-59da2b7ffb84/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1b848da6-006a-4cdf-a58c-31206af2c7c5/301c5d13-fc6c-430c-a14c-59da2b7ffb84/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2656250   0.1572028   0.3740472
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2139037   0.1550138   0.2727937
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                0.4241071   0.3593006   0.4889137
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                0.4693878   0.3886029   0.5501726
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1461988   0.0932029   0.1991948
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.2047414   0.1679972   0.2414855
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                0.3499197   0.3124585   0.3873809
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    NA                0.4264597   0.4001006   0.4528188
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5454545   0.4976745   0.5932346
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5247525   0.4272662   0.6222387
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1706397   0.1610022   0.1802773
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2365385   0.2164374   0.2566395
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2806067   0.2459132   0.3153002
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2633745   0.2038970   0.3228520
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0781250   0.0122441   0.1440059
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0698925   0.0331775   0.1066075
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                0.1607143   0.1125529   0.2088756
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                0.2447552   0.1741914   0.3153191
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                0.1109325   0.0862459   0.1356190
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    NA                0.1539033   0.1346134   0.1731933
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1498771   0.1151641   0.1845902
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1789474   0.1017918   0.2561030
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0680401   0.0617111   0.0743691
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1055961   0.0917355   0.1194567
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0240964   0.0113195   0.0368733
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0262009   0.0001791   0.0522227
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2539683   0.1462581   0.3616784
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1590909   0.1049408   0.2132410
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                0.3318386   0.2699533   0.3937239
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                0.3333333   0.2570252   0.4096415
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1375000   0.0840960   0.1909040
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1699779   0.1353605   0.2045953
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                0.3143351   0.2765104   0.3521597
6-24 months                   ki1101329-Keneba      GAMBIA       0                    NA                0.3486792   0.3230129   0.3743456
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4764151   0.4288307   0.5239995
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4607843   0.3639585   0.5576102
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1558369   0.1448064   0.1668674
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2077295   0.1853700   0.2300889
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2672414   0.2329585   0.3015242
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2448980   0.1857511   0.3040448


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.2270916   0.1751587   0.2790245
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     NA                   NA                0.4420485   0.3914450   0.4926520
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1889764   0.1585028   0.2194500
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       NA                   NA                0.4023279   0.3807014   0.4239544
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5414258   0.4985159   0.5843357
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       NA                   NA                0.0922509   0.0577338   0.1267680
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1850605   0.1758355   0.1942855
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2770154   0.2466624   0.3073685
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0720000   0.0398938   0.1041062
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     NA                   NA                0.1934605   0.1529920   0.2339289
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       NA                   NA                0.1403152   0.1249627   0.1556677
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1553785   0.1236568   0.1871001
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0762218   0.0701778   0.0822658
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0245184   0.0133341   0.0357026
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1841004   0.1348619   0.2333390
6-24 months                   ki1000109-EE          PAKISTAN     NA                   NA                0.3324324   0.2843668   0.3804980
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1615008   0.1323459   0.1906557
6-24 months                   ki1101329-Keneba      GAMBIA       NA                   NA                0.3382353   0.3169789   0.3594917
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4733840   0.4306748   0.5160933
6-24 months                   ki1148112-LCNI-5      MALAWI       NA                   NA                0.0968992   0.0607324   0.1330660
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1668622   0.1564951   0.1772292
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2625746   0.2327873   0.2923619


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8052847   0.4921824   1.317567
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    1                 1.1067669   0.8792283   1.393191
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.4004310   0.9345355   2.098590
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    1                 1.2187358   1.0770177   1.379102
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9620462   0.7834213   1.181399
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    1                 0.8392857   0.3311837   2.126918
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.3861863   1.2606472   1.524227
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9385894   0.7274034   1.211089
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8946237   0.3312567   2.416106
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    1                 1.5229215   1.0048036   2.308202
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    1                 1.3873606   1.0746523   1.791062
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1939603   0.7318660   1.947817
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.5519683   1.3305012   1.810299
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0873362   0.3426616   3.450343
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.6264205   0.3636599   1.079037
6-24 months                   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE          PAKISTAN     0                    1                 1.0045045   0.7476817   1.349544
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.2362031   0.7973157   1.916679
6-24 months                   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba      GAMBIA       0                    1                 1.1092598   0.9633210   1.277308
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9671908   0.7664224   1.220552
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    1                 0.8450704   0.3342527   2.136539
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.3329928   1.1797016   1.506203
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9163924   0.6970925   1.204682


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0385334   -0.1304988   0.0534320
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0179414   -0.0231565   0.0590393
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0427775   -0.0043877   0.0899428
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.0524082    0.0210052   0.0838112
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0040287   -0.0251679   0.0171105
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0141321   -0.0934107   0.0651466
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0144208    0.0097738   0.0190677
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0035913   -0.0178773   0.0106948
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0061250   -0.0622398   0.0499898
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                 0.0327462   -0.0008061   0.0662985
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.0293827    0.0079421   0.0508234
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0055013   -0.0105406   0.0215432
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0081817    0.0049487   0.0114146
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0004220   -0.0055338   0.0063778
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0698678   -0.1588041   0.0190684
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                 0.0005939   -0.0384400   0.0396277
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0240008   -0.0230437   0.0710454
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.0239002   -0.0079179   0.0557184
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0030311   -0.0239587   0.0178966
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0142119   -0.0967920   0.0683682
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0110253    0.0058723   0.0161783
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0046668   -0.0190629   0.0097293


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1696820   -0.6527776   0.1722080
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0405869   -0.0571049   0.1292505
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.2263645   -0.0658174   0.4384480
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.1302624    0.0485410   0.2049647
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0074410   -0.0472574   0.0308616
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                -0.1531915   -1.4265796   0.4519650
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0779246    0.0528056   0.1023775
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0129642   -0.0657565   0.0372131
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0850694   -1.2237731   0.4705504
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                 0.1692656   -0.0209069   0.3240132
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.2094051    0.0423873   0.3472933
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0354060   -0.0733840   0.1331699
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1073401    0.0645922   0.1481345
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0172117   -0.2587210   0.2326554
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.3795094   -0.9522537   0.0252055
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                 0.0017864   -0.1228173   0.1125624
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.1486111   -0.1975518   0.3947126
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.0706616   -0.0283296   0.1601235
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0064030   -0.0516001   0.0368517
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                -0.1466667   -1.4083049   0.4540374
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0660741    0.0348855   0.0962548
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0177732   -0.0739421   0.0354580
