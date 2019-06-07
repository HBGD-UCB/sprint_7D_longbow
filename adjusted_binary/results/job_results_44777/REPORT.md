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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        exclfeed36    ever_swasted   n_cell      n
----------------------------  -------------------------  -----------------------------  -----------  -------------  -------  -----
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                        0       60    251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                        1        4    251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                        0      179    251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                        1        8    251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                        0       18    224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                        1        0    224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                        0      203    224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                        1        3    224
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                        0        6    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                        1        1    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                        0      222    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                        1        9    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                        0       15    237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                        1        0    237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                        0      219    237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                        1        3    237
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                        0       16    287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                        1        0    287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                        0      268    287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                        1        3    287
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        0    281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0    281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      270    281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1       11    281
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        1    256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0    256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      249    256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1        6    256
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                        0        9      9
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                        1        0      9
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                        0        0      9
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                        1        0      9
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                        0        0      4
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                        1        0      4
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                        0        3      4
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                        1        1      4
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                        0      194    371
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                        1       30    371
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                        0      126    371
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                        1       21    371
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     44
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     44
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       40     44
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        1        4     44
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                        0      168    635
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                        1        3    635
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                        0      450    635
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                        1       14    635
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                        0      543   1976
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                        1       80   1976
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                        0     1113   1976
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                        1      240   1976
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                        0      337    519
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                        1       81    519
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                        0       75    519
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                        1       26    519
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                        0       46    271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                        1        1    271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                        0      222    271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                        1        2    271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                        0     7157   9505
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                        1      268   9505
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                        0     1957   9505
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                        1      123   9505
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                        0      882   1166
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                        1       41   1166
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                        0      233   1166
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                        1       10   1166
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                        0       61    250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                        1        3    250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                        0      182    250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                        1        4    250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                        0       18    224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                        1        0    224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                        0      204    224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                        1        2    224
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                        0        7    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                        1        0    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                        0      225    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                        1        5    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                        0       15    235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                        1        0    235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                        0      219    235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                        1        1    235
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                        0       16    287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                        1        0    287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                        0      270    287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                        1        1    287
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        0    280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0    280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      277    280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1        3    280
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        1    256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0    256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      253    256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1        2    256
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                        0        8      8
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                        1        0      8
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                        0        0      8
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                        1        0      8
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                        0        0      4
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                        1        0      4
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                        0        4      4
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                        1        0      4
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                        0      217    367
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                        1        7    367
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                        0      134    367
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                        1        9    367
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     36
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     36
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       36     36
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        1        0     36
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                        0      171    631
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                        1        0    631
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                        0      456    631
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                        1        4    631
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                        0      601   1967
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                        1       21   1967
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                        0     1277   1967
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                        1       68   1967
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                        0      395    502
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                        1       12    502
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                        0       91    502
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                        1        4    502
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                        0       47    268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                        1        0    268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                        0      221    268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                        1        0    268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                        0     7261   9433
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                        1      117   9433
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                        0     1996   9433
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                        1       59   9433
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                        0      910   1142
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                        1        3   1142
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                        0      228   1142
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                        1        1   1142
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                        0       62    239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                        1        1    239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                        0      172    239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                        1        4    239
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                        0       17    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                        1        0    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                        0      188    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                        1        2    207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                        0        6    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                        1        1    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                        0      224    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                        1        4    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                        0       15    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                        1        0    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                        0      218    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                        1        2    235
6-24 months                   ki0047075b-MAL-ED          PERU                           1                        0       16    269
6-24 months                   ki0047075b-MAL-ED          PERU                           1                        1        0    269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                        0      251    269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                        1        2    269
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        0    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      250    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1        9    259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        1    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      240    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1        4    245
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                        0        9      9
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                        1        0      9
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                        0        0      9
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                        1        0      9
6-24 months                   ki1000108-IRC              INDIA                          1                        0        0      4
6-24 months                   ki1000108-IRC              INDIA                          1                        1        0      4
6-24 months                   ki1000108-IRC              INDIA                          0                        0        3      4
6-24 months                   ki1000108-IRC              INDIA                          0                        1        1      4
6-24 months                   ki1000109-EE               PAKISTAN                       1                        0      198    370
6-24 months                   ki1000109-EE               PAKISTAN                       1                        1       25    370
6-24 months                   ki1000109-EE               PAKISTAN                       0                        0      133    370
6-24 months                   ki1000109-EE               PAKISTAN                       0                        1       14    370
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0     46
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0     46
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       39     46
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                        1        7     46
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                        0      157    613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                        1        3    613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                        0      443    613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                        1       10    613
6-24 months                   ki1101329-Keneba           GAMBIA                         1                        0      517   1904
6-24 months                   ki1101329-Keneba           GAMBIA                         1                        1       62   1904
6-24 months                   ki1101329-Keneba           GAMBIA                         0                        0     1148   1904
6-24 months                   ki1101329-Keneba           GAMBIA                         0                        1      177   1904
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                        0      349    526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                        1       75    526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                        0       75    526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                        1       27    526
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                        0       44    258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                        1        1    258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                        0      211    258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                        1        2    258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                        0     5205   6820
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                        1      166   6820
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                        0     1381   6820
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                        1       68   6820
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                        0      888   1173
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                        1       40   1173
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                        0      235   1173
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                        1       10   1173


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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
![](/tmp/7c5893c0-04f7-4e47-bcc4-4ff6626b8039/acf01d03-9765-4b0d-9f3b-b55286e243ac/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7c5893c0-04f7-4e47-bcc4-4ff6626b8039/acf01d03-9765-4b0d-9f3b-b55286e243ac/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7c5893c0-04f7-4e47-bcc4-4ff6626b8039/acf01d03-9765-4b0d-9f3b-b55286e243ac/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7c5893c0-04f7-4e47-bcc4-4ff6626b8039/acf01d03-9765-4b0d-9f3b-b55286e243ac/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                0.1339286   0.0892681   0.1785891
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                0.1428571   0.0862132   0.1995010
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                0.1284109   0.1021342   0.1546876
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    NA                0.1773836   0.1570242   0.1977430
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1937799   0.1558519   0.2317079
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2574257   0.1720760   0.3427755
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0360943   0.0314362   0.0407524
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0591346   0.0475453   0.0707240
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0444204   0.0289812   0.0598596
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0411523   0.0140252   0.0682793
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                0.0312500   0.0084336   0.0540664
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                0.0629371   0.0230796   0.1027946
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                0.0337621   0.0195643   0.0479598
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    NA                0.0505576   0.0388458   0.0622695
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0158580   0.0127826   0.0189333
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0287105   0.0207659   0.0366550
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                0.1121076   0.0706427   0.1535726
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                0.0952381   0.0477210   0.1427552
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                0.1070812   0.0818879   0.1322745
6-24 months                   ki1101329-Keneba      GAMBIA       0                    NA                0.1335849   0.1152619   0.1519079
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1768868   0.1405325   0.2132411
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2647059   0.1790073   0.3504045
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0309067   0.0259017   0.0359117
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0469289   0.0346683   0.0591895
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0431034   0.0297788   0.0564281
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0408163   0.0196960   0.0619367


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     NA                   NA                0.1374663   0.1023803   0.1725523
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       NA                   NA                0.1619433   0.1456960   0.1781907
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2061657   0.1713275   0.2410040
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0411362   0.0366397   0.0456328
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0437393   0.0299776   0.0575010
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     NA                   NA                0.0435967   0.0226771   0.0645164
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       NA                   NA                0.0452466   0.0360591   0.0544340
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0186579   0.0156486   0.0216672
6-24 months                   ki1000109-EE          PAKISTAN     NA                   NA                0.1054054   0.0740740   0.1367368
6-24 months                   ki1101329-Keneba      GAMBIA       NA                   NA                0.1255252   0.1106396   0.1404109
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1939163   0.1600970   0.2277357
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0343109   0.0293225   0.0392992
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0426257   0.0309387   0.0543128


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    1                 1.0666667   0.6353678   1.790739
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    1                 1.3813747   1.0924889   1.746650
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3284440   0.9039287   1.952326
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.6383378   1.3017835   2.061902
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9264278   0.4475253   1.917810
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    1                 2.0139860   0.7661372   5.294273
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    1                 1.4974686   0.9265086   2.420282
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.8104768   1.2974252   2.526409
6-24 months                   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE          PAKISTAN     0                    1                 0.8495238   0.4565064   1.580900
6-24 months                   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba      GAMBIA       0                    1                 1.2475106   0.9501014   1.638018
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4964706   1.0198274   2.195886
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.5184049   1.1383454   2.025355
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9469388   0.5268066   1.702130


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0035377   -0.0250465   0.0321220
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.0335324    0.0107496   0.0563152
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0123858   -0.0059189   0.0306905
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0050420    0.0023624   0.0077216
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0006811   -0.0070233   0.0056612
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                 0.0123467   -0.0056181   0.0303115
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.0114845   -0.0011052   0.0240742
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0027999    0.0009642   0.0046357
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                -0.0067022   -0.0317720   0.0183675
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.0184440   -0.0032415   0.0401296
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0170296   -0.0012649   0.0353241
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0034041    0.0007297   0.0060785
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0004777   -0.0055498   0.0045944


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0257353   -0.2059690   0.2129220
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.2070626    0.0544007   0.3350781
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0600769   -0.0327112   0.1445281
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1225675    0.0569042   0.1836590
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0155716   -0.1712467   0.1194122
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                 0.2832031   -0.2360371   0.5843185
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.2538206   -0.0769299   0.4829898
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1500676    0.0497788   0.2397717
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                -0.0635851   -0.3294136   0.1490885
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.1469349   -0.0437463   0.3027807
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0878191   -0.0107982   0.1768149
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0992144    0.0204985   0.1716043
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0112069   -0.1370829   0.1007345
