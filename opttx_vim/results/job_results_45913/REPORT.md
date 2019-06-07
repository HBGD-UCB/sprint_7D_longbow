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

**Intervention Variable:** predfeed36

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        predfeed36    ever_wasted   n_cell      n
----------------------------  -------------------------  -----------------------------  -----------  ------------  -------  -----
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       96    251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       35    251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       98    251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       22    251
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       0       37    224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       1        0    224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       0      175    224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       1       12    224
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       0       15    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       1        5    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       0      135    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       1       83    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       0       28    237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       1        4    237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       0      164    237
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       1       41    237
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       0      123    287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       1        4    287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       0      145    287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       1       15    287
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3    281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0    281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      234    281
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       44    281
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2    256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0    256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      224    256
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       30    256
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       0      129    371
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       1       95    371
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       0       78    371
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       1       69    371
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     44
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     44
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       30     44
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       14     44
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       0      190    519
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       1      228    519
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       0       48    519
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       1       53    519
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       0       42    271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       1        5    271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       0      204    271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       1       20    271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     6166   9505
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1270   9505
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1580   9505
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      489   9505
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0      668   1166
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      261   1166
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      175   1166
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       62   1166
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       0      122    250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        9    250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       0      110    250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       1        9    250
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       0       37    224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       1        0    224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       0      180    224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       1        7    224
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       0       19    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       1        1    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       0      181    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       1       36    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       0       32    235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       1        0    235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       0      188    235
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       1       15    235
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       0      125    287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       1        2    287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       0      157    287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       1        3    287
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3    280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0    280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      265    280
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       12    280
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2    256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0    256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      246    256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        8    256
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       0      188    367
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       1       36    367
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       0      108    367
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       1       35    367
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     36
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     36
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       36     36
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0     36
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       0      346    502
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       1       61    502
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       0       78    502
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       1       17    502
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       0       47    268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       1        0    268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       0      221    268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       1        0    268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0     6887   9433
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1      502   9433
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1827   9433
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      217   9433
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0      897   1142
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1       22   1142
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      217   1142
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1        6   1142
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       0      100    239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       1       30    239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       0       95    239
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       1       14    239
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       0       37    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       1        0    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       0      164    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       1        6    207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       0       14    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       1        5    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       0      157    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       1       59    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       0       28    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       1        4    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       0      171    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       1       32    235
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       0      122    269
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       1        3    269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       0      131    269
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       1       13    269
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      220    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       36    259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      217    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       26    245
6-24 months                   ki1000109-EE               PAKISTAN                       1                       0      149    370
6-24 months                   ki1000109-EE               PAKISTAN                       1                       1       74    370
6-24 months                   ki1000109-EE               PAKISTAN                       0                       0       98    370
6-24 months                   ki1000109-EE               PAKISTAN                       0                       1       49    370
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     46
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     46
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       32     46
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       14     46
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       0      222    526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       1      202    526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       0       55    526
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       1       47    526
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       0       40    258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       1        5    258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       0      193    258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       1       20    258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     4539   6820
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       1      840   6820
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1143   6820
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      298   6820
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       0      684   1173
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      250   1173
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      181   1173
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       58   1173


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
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/4bb760d3-fdc5-46e5-9c1b-ca1bcf97040b/9f3403fe-5f39-4def-b15e-ed2da0f4f9e8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4bb760d3-fdc5-46e5-9c1b-ca1bcf97040b/9f3403fe-5f39-4def-b15e-ed2da0f4f9e8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.1826565   0.1127943   0.2525188
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        optimal              NA                0.2489924   0.0457788   0.4522060
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     optimal              NA                0.4942457   0.4212550   0.5672364
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.5201263   0.4212175   0.6190350
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       optimal              NA                0.1034132   0.0321879   0.1746385
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.1764393   0.1652747   0.1876038
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.2504957   0.1896404   0.3113510
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.1058463   0.0505049   0.1611876
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     optimal              NA                0.1641238   0.1157794   0.2124683
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.1719324   0.1119428   0.2319221
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.0679211   0.0613016   0.0745406
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.0415515   0.0149772   0.0681257
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.1260607   0.0619961   0.1901252
6-24 months                   ki0047075b-MAL-ED     INDIA        optimal              NA                0.3857231   0.1961776   0.5752686
6-24 months                   ki1000109-EE          PAKISTAN     optimal              NA                0.3687324   0.2936856   0.4437793
6-24 months                   ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.5102324   0.4219448   0.5985201
6-24 months                   ki1148112-LCNI-5      MALAWI       optimal              NA                0.1430734   0.0788907   0.2072562
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.1631245   0.1508116   0.1754375
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.2318611   0.1713690   0.2923533


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.2270916   0.1751587   0.2790245
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        observed             NA                0.3697479   0.3082891   0.4312067
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     observed             NA                0.4420485   0.3914450   0.4926520
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        observed             NA                0.5414258   0.4985159   0.5843357
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       observed             NA                0.0922509   0.0577338   0.1267680
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.1850605   0.1758355   0.1942855
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.2770154   0.2466624   0.3073685
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.0720000   0.0398938   0.1041062
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     observed             NA                0.1934605   0.1529920   0.2339289
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        observed             NA                0.1553785   0.1236568   0.1871001
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.0762218   0.0701778   0.0822658
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.0245184   0.0133341   0.0357026
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.1841004   0.1348619   0.2333390
6-24 months                   ki0047075b-MAL-ED     INDIA        observed             NA                0.2723404   0.2153029   0.3293779
6-24 months                   ki1000109-EE          PAKISTAN     observed             NA                0.3324324   0.2843668   0.3804980
6-24 months                   ki1113344-GMS-Nepal   NEPAL        observed             NA                0.4733840   0.4306748   0.5160933
6-24 months                   ki1148112-LCNI-5      MALAWI       observed             NA                0.0968992   0.0607324   0.1330660
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.1668622   0.1564951   0.1772292
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.2625746   0.2327873   0.2923619


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   observed             optimal           1.2432714   0.9301473   1.6618054
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        observed             optimal           1.4849768   0.6742964   3.2703070
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     observed             optimal           0.8943902   0.8066267   0.9917028
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        observed             optimal           1.0409507   0.8774252   1.2349524
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       observed             optimal           0.8920612   0.5361717   1.4841762
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.0488623   1.0081173   1.0912542
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           1.1058691   0.8895292   1.3748243
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   observed             optimal           0.6802318   0.5223844   0.8857756
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     observed             optimal           1.1787472   0.9631557   1.4425963
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        observed             optimal           0.9037183   0.6869970   1.1888069
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.1222105   1.0599405   1.1881387
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           0.5900729   0.3745824   0.9295313
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   observed             optimal           1.4604113   0.9683929   2.2024131
6-24 months                   ki0047075b-MAL-ED     INDIA        observed             optimal           0.7060516   0.4489329   1.1104307
6-24 months                   ki1000109-EE          PAKISTAN     observed             optimal           0.9015547   0.7808196   1.0409586
6-24 months                   ki1113344-GMS-Nepal   NEPAL        observed             optimal           0.9277811   0.7959703   1.0814196
6-24 months                   ki1148112-LCNI-5      MALAWI       observed             optimal           0.6772691   0.4930449   0.9303278
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.0229128   0.9800254   1.0676769
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           1.1324649   0.8953074   1.4324429


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0444351   -0.0087875    0.0976577
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        optimal              NA                 0.1207555   -0.0756842    0.3171952
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     optimal              NA                -0.0521972   -0.1030972   -0.0012971
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0212995   -0.0675630    0.1101621
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.0111623   -0.0647890    0.0424644
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0086212    0.0016117    0.0156307
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0265197   -0.0281121    0.0811516
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                -0.0338463   -0.0658782   -0.0018144
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     optimal              NA                 0.0293367   -0.0042202    0.0628936
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                -0.0165539   -0.0639635    0.0308556
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0083007    0.0043643    0.0122371
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                -0.0170331   -0.0373549    0.0032887
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0580398    0.0052020    0.1108776
6-24 months                   ki0047075b-MAL-ED     INDIA        optimal              NA                -0.1133827   -0.2887269    0.0619615
6-24 months                   ki1000109-EE          PAKISTAN     optimal              NA                -0.0363000   -0.0895549    0.0169549
6-24 months                   ki1113344-GMS-Nepal   NEPAL        optimal              NA                -0.0368484   -0.1149020    0.0412052
6-24 months                   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.0461742   -0.0920374   -0.0003110
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0037376   -0.0032529    0.0107281
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0307135   -0.0238829    0.0853098


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.1956704   -0.0750986    0.3982448
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        optimal              NA                 0.3265888   -0.4830274    0.6942183
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     optimal              NA                -0.1180802   -0.2397309   -0.0083666
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0393397   -0.1396983    0.1902522
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.1209993   -0.8650742    0.3262255
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0465860    0.0080519    0.0836232
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0957338   -0.1241902    0.2726343
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                -0.4700871   -0.9142992   -0.1289541
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     optimal              NA                 0.1516416   -0.0382537    0.3068054
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                -0.1065395   -0.4556105    0.1588205
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.1089016    0.0565508    0.1583474
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                -0.6947059   -1.6696399   -0.0758111
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.3152614   -0.0326387    0.5459526
6-24 months                   ki0047075b-MAL-ED     INDIA        optimal              NA                -0.4163271   -1.2275044    0.0994485
6-24 months                   ki1000109-EE          PAKISTAN     optimal              NA                -0.1091951   -0.2807056    0.0393470
6-24 months                   ki1113344-GMS-Nepal   NEPAL        optimal              NA                -0.0778404   -0.2563283    0.0752895
6-24 months                   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.4765180   -1.0282127   -0.0748899
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0223995   -0.0203817    0.0633871
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.1169704   -0.1169348    0.3018919
