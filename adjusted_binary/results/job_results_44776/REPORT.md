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

**Intervention Variable:** predfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        predfeed36    ever_swasted   n_cell      n
----------------------------  -------------------------  -----------------------------  -----------  -------------  -------  -----
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                        0      124    251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                        1        7    251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                        0      115    251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                        1        5    251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                        0       37    224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                        1        0    224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                        0      184    224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                        1        3    224
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                        0       19    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                        1        1    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                        0      209    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                        1        9    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                        0       32    237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                        1        0    237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                        0      202    237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                        1        3    237
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                        0      125    287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                        1        2    287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                        0      159    287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                        1        1    287
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        3    281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0    281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      267    281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1       11    281
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        2    256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0    256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      248    256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1        6    256
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                        0      194    371
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                        1       30    371
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                        0      126    371
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                        1       21    371
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     44
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     44
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       40     44
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        1        4     44
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                        0      337    519
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                        1       81    519
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                        0       75    519
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                        1       26    519
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                        0       46    271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                        1        1    271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                        0      222    271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                        1        2    271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                        0     7167   9505
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                        1      269   9505
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                        0     1947   9505
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                        1      122   9505
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                        0      888   1166
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                        1       41   1166
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                        0      227   1166
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                        1       10   1166
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                        0      126    250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                        1        5    250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                        0      117    250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                        1        2    250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                        0       37    224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                        1        0    224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                        0      185    224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                        1        2    224
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                        0       20    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                        1        0    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                        0      212    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                        1        5    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                        0       32    235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                        1        0    235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                        0      202    235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                        1        1    235
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                        0      126    287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                        1        1    287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                        0      160    287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                        1        0    287
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        3    280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0    280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      274    280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1        3    280
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        2    256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0    256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      252    256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1        2    256
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                        0      217    367
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                        1        7    367
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                        0      134    367
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                        1        9    367
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     36
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     36
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       36     36
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        1        0     36
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                        0      395    502
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                        1       12    502
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                        0       91    502
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                        1        4    502
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                        0       47    268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                        1        0    268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                        0      221    268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                        1        0    268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                        0     7272   9433
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                        1      117   9433
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                        0     1985   9433
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                        1       59   9433
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                        0      916   1142
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                        1        3   1142
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                        0      222   1142
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                        1        1   1142
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                        0      128    239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                        1        2    239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                        0      106    239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                        1        3    239
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                        0       36    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                        1        1    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                        0      169    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                        1        1    207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                        0       18    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                        1        1    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                        0      212    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                        1        4    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                        0       32    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                        1        0    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                        0      201    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                        1        2    235
6-24 months                   ki0047075b-MAL-ED          PERU                           1                        0      124    269
6-24 months                   ki0047075b-MAL-ED          PERU                           1                        1        1    269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                        0      143    269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                        1        1    269
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        3    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      247    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1        9    259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        2    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      239    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1        4    245
6-24 months                   ki1000109-EE               PAKISTAN                       1                        0      198    370
6-24 months                   ki1000109-EE               PAKISTAN                       1                        1       25    370
6-24 months                   ki1000109-EE               PAKISTAN                       0                        0      133    370
6-24 months                   ki1000109-EE               PAKISTAN                       0                        1       14    370
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     46
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     46
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       39     46
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                        1        7     46
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                        0      349    526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                        1       75    526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                        0       75    526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                        1       27    526
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                        0       44    258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                        1        1    258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                        0      211    258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                        1        2    258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                        0     5212   6820
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                        1      167   6820
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                        0     1374   6820
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                        1       67   6820
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                        0      894   1173
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                        1       40   1173
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                        0      229   1173
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                        1       10   1173


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/dc39c97d-d1ae-4f7b-a76c-6ce661c9ae97/aea6c9b6-a4a0-4010-8b3f-bc9473db89fa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dc39c97d-d1ae-4f7b-a76c-6ce661c9ae97/aea6c9b6-a4a0-4010-8b3f-bc9473db89fa/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dc39c97d-d1ae-4f7b-a76c-6ce661c9ae97/aea6c9b6-a4a0-4010-8b3f-bc9473db89fa/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dc39c97d-d1ae-4f7b-a76c-6ce661c9ae97/aea6c9b6-a4a0-4010-8b3f-bc9473db89fa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0534351   0.0148457   0.0920245
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0416667   0.0058424   0.0774909
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                0.1339286   0.0892681   0.1785891
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                0.1428571   0.0862132   0.1995010
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1937799   0.1558519   0.2317079
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2574257   0.1720760   0.3427755
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0361754   0.0315110   0.0408397
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0589657   0.0473067   0.0706247
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0441335   0.0287751   0.0594918
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0421941   0.0144446   0.0699436
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                0.0312500   0.0084336   0.0540664
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                0.0629371   0.0230796   0.1027946
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0158343   0.0127631   0.0189056
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0288650   0.0208803   0.0368496
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                0.1121076   0.0706427   0.1535726
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                0.0952381   0.0477210   0.1427552
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1768868   0.1405325   0.2132411
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2647059   0.1790073   0.3504045
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0310467   0.0260183   0.0360750
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0464955   0.0341991   0.0587919
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0428266   0.0295698   0.0560833
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0418410   0.0199548   0.0637272


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0478088   0.0213607   0.0742568
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     NA                   NA                0.1374663   0.1023803   0.1725523
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2061657   0.1713275   0.2410040
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0411362   0.0366397   0.0456328
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0437393   0.0299776   0.0575010
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     NA                   NA                0.0435967   0.0226771   0.0645164
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0186579   0.0156486   0.0216672
6-24 months                   ki1000109-EE          PAKISTAN     NA                   NA                0.1054054   0.0740740   0.1367368
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1939163   0.1600970   0.2277357
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0343109   0.0293225   0.0392992
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0426257   0.0309387   0.0543128


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.7797620   0.2537003   2.396641
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    1                 1.0666667   0.6353678   1.790739
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3284440   0.9039287   1.952326
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.6299956   1.2927085   2.055286
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9560564   0.4622717   1.977287
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    1                 2.0139860   0.7661372   5.294273
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.8229339   1.3063719   2.543753
6-24 months                   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE          PAKISTAN     0                    1                 0.8495238   0.4565064   1.580900
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4964706   1.0198274   2.195886
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.4976002   1.1184013   2.005368
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9769874   0.5398776   1.768002


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0056263   -0.0308105   0.0195578
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0035377   -0.0250465   0.0321220
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0123858   -0.0059189   0.0306905
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0049609    0.0022783   0.0076434
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0003942   -0.0066844   0.0058960
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                 0.0123467   -0.0056181   0.0303115
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0028236    0.0009896   0.0046575
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                -0.0067022   -0.0317720   0.0183675
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0170296   -0.0012649   0.0353241
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0032642    0.0005889   0.0059395
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0002008   -0.0052887   0.0048870


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1176844   -0.7848871   0.3001134
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0257353   -0.2059690   0.2129220
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0600769   -0.0327112   0.1445281
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1205964    0.0548261   0.1817900
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0090124   -0.1634785   0.1249463
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                 0.2832031   -0.2360371   0.5843185
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1513329    0.0512023   0.2408963
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                -0.0635851   -0.3294136   0.1490885
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0878191   -0.0107982   0.1768149
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0951357    0.0162197   0.1677213
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0047109   -0.1312967   0.1077106
