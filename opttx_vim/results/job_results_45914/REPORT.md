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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

* arm
* sex
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
* month
* brthmon
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
* delta_month
* delta_brthmon
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







# Results Detail

## Results Plots
![](/tmp/317e32cb-644e-4ee8-ae89-ce0fb82ceb33/d8560344-4d29-46af-a9c6-878023f4edc7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/317e32cb-644e-4ee8-ae89-ce0fb82ceb33/d8560344-4d29-46af-a9c6-878023f4edc7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.2132706   0.1542238   0.2723174
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     optimal              NA                0.4641204   0.3975360   0.5307047
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                0.1437514   0.0904695   0.1970334
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       optimal              NA                0.3544096   0.3170674   0.3917518
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.5795862   0.4898723   0.6693001
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       optimal              NA                0.1361948   0.0650800   0.2073096
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.1747970   0.1637203   0.1858737
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.2540318   0.1923186   0.3157451
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.1067792   0.0441777   0.1693806
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     optimal              NA                0.1644390   0.1162255   0.2126524
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       optimal              NA                0.1111379   0.0865353   0.1357404
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.1829446   0.1352748   0.2306143
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.0674263   0.0610141   0.0738385
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.0466567   0.0194671   0.0738463
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.1576189   0.1034800   0.2117579
6-24 months                   ki1000109-EE          PAKISTAN     optimal              NA                0.3738937   0.2971187   0.4506687
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                0.1393228   0.0859310   0.1927146
6-24 months                   ki1101329-Keneba      GAMBIA       optimal              NA                0.2933985   0.2592477   0.3275493
6-24 months                   ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.5252090   0.4397850   0.6106330
6-24 months                   ki1148112-LCNI-5      MALAWI       optimal              NA                0.1681109   0.0917858   0.2444360
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.1572067   0.1449941   0.1694194
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.2291158   0.1710860   0.2871455


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.2270916   0.1751587   0.2790245
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     observed             NA                0.4420485   0.3914450   0.4926520
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   observed             NA                0.1889764   0.1585028   0.2194500
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       observed             NA                0.4023279   0.3807014   0.4239544
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        observed             NA                0.5414258   0.4985159   0.5843357
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       observed             NA                0.0922509   0.0577338   0.1267680
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.1850605   0.1758355   0.1942855
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.2770154   0.2466624   0.3073685
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.0720000   0.0398938   0.1041062
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     observed             NA                0.1934605   0.1529920   0.2339289
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       observed             NA                0.1403152   0.1249627   0.1556677
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        observed             NA                0.1553785   0.1236568   0.1871001
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.0762218   0.0701778   0.0822658
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.0245184   0.0133341   0.0357026
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.1841004   0.1348619   0.2333390
6-24 months                   ki1000109-EE          PAKISTAN     observed             NA                0.3324324   0.2843668   0.3804980
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   observed             NA                0.1615008   0.1323459   0.1906557
6-24 months                   ki1101329-Keneba      GAMBIA       observed             NA                0.3382353   0.3169789   0.3594917
6-24 months                   ki1113344-GMS-Nepal   NEPAL        observed             NA                0.4733840   0.4306748   0.5160933
6-24 months                   ki1148112-LCNI-5      MALAWI       observed             NA                0.0968992   0.0607324   0.1330660
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.1668622   0.1564951   0.1772292
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.2625746   0.2327873   0.2923619


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   observed             optimal           1.0648053   0.9198568   1.2325943
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     observed             optimal           0.9524437   0.8648674   1.0488880
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   observed             optimal           1.3146054   0.9499714   1.8191993
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       observed             optimal           1.1352060   1.0407129   1.2382788
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        observed             optimal           0.9341592   0.8146083   1.0712552
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       observed             optimal           0.6773453   0.4577078   1.0023790
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.0587168   1.0189166   1.1000716
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           1.0904753   0.8854443   1.3429826
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   observed             optimal           0.6742889   0.4701962   0.9669698
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     observed             optimal           1.1764880   0.9622880   1.4383678
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       observed             optimal           1.2625328   1.0440341   1.5267597
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        observed             optimal           0.8493201   0.7100217   1.0159472
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.1304459   1.0761534   1.1874775
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           0.5255062   0.3536092   0.7809661
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   observed             optimal           1.1680094   0.9540519   1.4299495
6-24 months                   ki1000109-EE          PAKISTAN     observed             optimal           0.8891095   0.7656512   1.0324749
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   observed             optimal           1.1591843   0.8337885   1.6115698
6-24 months                   ki1101329-Keneba      GAMBIA       observed             optimal           1.1528187   1.0511727   1.2642937
6-24 months                   ki1113344-GMS-Nepal   NEPAL        observed             optimal           0.9013250   0.7823917   1.0383376
6-24 months                   ki1148112-LCNI-5      MALAWI       observed             optimal           0.5764006   0.4058701   0.8185813
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.0614186   1.0151865   1.1097562
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           1.1460345   0.9208417   1.4262986


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0138211   -0.0174077    0.0450498
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     optimal              NA                -0.0220718   -0.0667006    0.0225570
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                 0.0452250   -0.0016363    0.0920863
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       optimal              NA                 0.0479183    0.0171913    0.0786453
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                -0.0381604   -0.1174366    0.0411158
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.0439439   -0.0986649    0.0107771
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0102635    0.0035545    0.0169725
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0229836   -0.0297854    0.0757526
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                -0.0347792   -0.0769421    0.0073838
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     optimal              NA                 0.0290215   -0.0044503    0.0624933
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       optimal              NA                 0.0291773    0.0078883    0.0504664
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                -0.0275661   -0.0603700    0.0052379
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0087955    0.0054336    0.0121573
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                -0.0221383   -0.0425682   -0.0017084
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0264815   -0.0058342    0.0587972
6-24 months                   ki1000109-EE          PAKISTAN     optimal              NA                -0.0414613   -0.0975261    0.0146036
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                 0.0221780   -0.0237103    0.0680663
6-24 months                   ki1101329-Keneba      GAMBIA       optimal              NA                 0.0448368    0.0178708    0.0718028
6-24 months                   ki1113344-GMS-Nepal   NEPAL        optimal              NA                -0.0518250   -0.1259811    0.0223311
6-24 months                   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.0712117   -0.1304628   -0.0119606
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0096554    0.0026495    0.0166614
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0334588   -0.0165482    0.0834659


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0608611   -0.0871258    0.1887030
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     optimal              NA                -0.0499308   -0.1562467    0.0466094
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                 0.2393155   -0.0526632    0.4503076
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       optimal              NA                 0.1191026    0.0391202    0.1924274
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                -0.0704813   -0.2275838    0.0665156
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.4763518   -1.1848001    0.0023734
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0554603    0.0185654    0.0909683
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0829687   -0.1293765    0.2553887
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                -0.4830439   -1.1267719   -0.0341585
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     optimal              NA                 0.1500126   -0.0391899    0.3047676
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       optimal              NA                 0.2079414    0.0421769    0.3450181
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                -0.1774124   -0.4084076    0.0156968
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.1153933    0.0707644    0.1578788
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                -0.9029271   -1.8279810   -0.2804653
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.1438425   -0.0481610    0.3006746
6-24 months                   ki1000109-EE          PAKISTAN     optimal              NA                -0.1247209   -0.3060777    0.0314535
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                 0.1373244   -0.1993450    0.3794870
6-24 months                   ki1101329-Keneba      GAMBIA       optimal              NA                 0.1325609    0.0486816    0.2090445
6-24 months                   ki1113344-GMS-Nepal   NEPAL        optimal              NA                -0.1094777   -0.2781321    0.0369221
6-24 months                   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.7349045   -1.4638425   -0.2216258
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0578647    0.0149593    0.0989012
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.1274259   -0.0859630    0.2988845
