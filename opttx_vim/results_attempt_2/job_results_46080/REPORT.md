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
![](/tmp/4d5a93cb-4a25-44dc-9a6d-1374dd0fefbe/e32b8425-c2dc-46c9-9e94-54de1cb727ee/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4d5a93cb-4a25-44dc-9a6d-1374dd0fefbe/e32b8425-c2dc-46c9-9e94-54de1cb727ee/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.1787210   0.1090562   0.2483858
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        optimal              NA                0.2338326   0.0333612   0.4343040
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     optimal              NA                0.4323863   0.3586825   0.5060902
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.5217133   0.4231456   0.6202810
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       optimal              NA                0.1466649   0.0692529   0.2240770
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.1726700   0.1628502   0.1824898
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.2543042   0.1907449   0.3178635
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.1171401   0.0627556   0.1715246
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     optimal              NA                0.1635951   0.1153829   0.2118073
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.2308337   0.1721314   0.2895361
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.0677787   0.0608246   0.0747327
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.0458696   0.0180332   0.0737060
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.1280289   0.0643340   0.1917238
6-24 months                   ki0047075b-MAL-ED     INDIA        optimal              NA                0.3746980   0.2153676   0.5340283
6-24 months                   ki1000109-EE          PAKISTAN     optimal              NA                0.3164979   0.2465820   0.3864138
6-24 months                   ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.4587432   0.3606863   0.5568002
6-24 months                   ki1148112-LCNI-5      MALAWI       optimal              NA                0.1744781   0.1087258   0.2402304
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.1584790   0.1474040   0.1695540
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.2351362   0.1744561   0.2958164


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
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   observed             optimal           1.2706489   0.9447411   1.7089853
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        observed             optimal           1.5812507   0.6894413   3.6266374
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     observed             optimal           1.0223462   0.9089852   1.1498445
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        observed             optimal           1.0377842   0.8758981   1.2295905
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       observed             optimal           0.6289910   0.4246002   0.9317697
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.0717584   1.0426042   1.1017278
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           1.0893073   0.8706455   1.3628857
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   observed             optimal           0.6146486   0.4818105   0.7841109
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     observed             optimal           1.1825567   0.9659454   1.4477426
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        observed             optimal           0.6731186   0.5522839   0.8203908
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.1245687   1.0590003   1.1941968
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           0.5345236   0.3506883   0.8147279
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   observed             optimal           1.4379599   0.9614397   2.1506587
6-24 months                   ki0047075b-MAL-ED     INDIA        observed             optimal           0.7268266   0.4847304   1.0898364
6-24 months                   ki1000109-EE          PAKISTAN     observed             optimal           1.0503464   0.8880637   1.2422842
6-24 months                   ki1113344-GMS-Nepal   NEPAL        observed             optimal           1.0319151   0.8515881   1.2504269
6-24 months                   ki1148112-LCNI-5      MALAWI       observed             optimal           0.5553663   0.4078623   0.7562153
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.0528977   1.0202723   1.0865664
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           1.1166913   0.8841778   1.4103492


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0483706   -0.0047885    0.1015298
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        optimal              NA                 0.1359153   -0.0580003    0.3298309
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     optimal              NA                 0.0096622   -0.0410788    0.0604031
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0197125   -0.0687425    0.1081675
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.0544140   -0.1144966    0.0056685
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0123905    0.0075861    0.0171950
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0227112   -0.0343101    0.0797325
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                -0.0451401   -0.0766608   -0.0136194
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     optimal              NA                 0.0298654   -0.0036619    0.0633926
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                -0.0754553   -0.1206424   -0.0302682
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0084431    0.0043606    0.0125256
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                -0.0213512   -0.0426007   -0.0001018
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0560715    0.0033360    0.1088070
6-24 months                   ki0047075b-MAL-ED     INDIA        optimal              NA                -0.1023575   -0.2522173    0.0475022
6-24 months                   ki1000109-EE          PAKISTAN     optimal              NA                 0.0159345   -0.0372468    0.0691159
6-24 months                   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0146408   -0.0734541    0.1027358
6-24 months                   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.0775788   -0.1274407   -0.0277169
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0083832    0.0033720    0.0133943
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0274384   -0.0275921    0.0824688


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.2130005   -0.0584911    0.4148575
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        optimal              NA                 0.3675892   -0.4504498    0.7242625
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     optimal              NA                 0.0218577   -0.1001279    0.1303172
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0364085   -0.1416853    0.1867211
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.5898480   -1.3551565   -0.0732266
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0669539    0.0408633    0.0923348
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0819854   -0.1485731    0.2662628
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                -0.6269459   -1.0755048   -0.2753297
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     optimal              NA                 0.1543746   -0.0352552    0.3092695
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                -0.4856223   -0.8106630   -0.2189312
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.1107702    0.0557132    0.1626171
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                -0.8708247   -1.8515355   -0.2274037
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.3045703   -0.0401068    0.5350262
6-24 months                   ki0047075b-MAL-ED     INDIA        optimal              NA                -0.3758441   -1.0630024    0.0824311
6-24 months                   ki1000109-EE          PAKISTAN     optimal              NA                 0.0479331   -0.1260453    0.1950312
6-24 months                   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0309280   -0.1742766    0.2002731
6-24 months                   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.8006135   -1.4518080   -0.3223748
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0502401    0.0198695    0.0796697
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.1044974   -0.1309942    0.2909557
