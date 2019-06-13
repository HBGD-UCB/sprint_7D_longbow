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
![](/tmp/a1b55ffd-0f7f-45fc-b5f6-776c2b8c3163/a3cb05f6-10c0-40f6-a2ac-7ff9274b7bd4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a1b55ffd-0f7f-45fc-b5f6-776c2b8c3163/a3cb05f6-10c0-40f6-a2ac-7ff9274b7bd4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.2191364   0.1596722   0.2786006
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     optimal              NA                0.4285145   0.3608173   0.4962117
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                0.1484501   0.0945469   0.2023534
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       optimal              NA                0.3541178   0.3171282   0.3911074
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.5222285   0.4238733   0.6205838
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       optimal              NA                0.1085425   0.0553077   0.1617774
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.1770895   0.1658919   0.1882872
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.2646240   0.2088997   0.3203483
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.1068953   0.0457138   0.1680769
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     optimal              NA                0.1625705   0.1143989   0.2107421
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       optimal              NA                0.1123545   0.0877235   0.1369855
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.1820827   0.1349270   0.2292383
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.0672948   0.0608658   0.0737238
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.0427293   0.0162598   0.0691987
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.1590716   0.1047290   0.2134142
6-24 months                   ki1000109-EE          PAKISTAN     optimal              NA                0.3547371   0.2784159   0.4310582
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                0.1496000   0.0966792   0.2025209
6-24 months                   ki1101329-Keneba      GAMBIA       optimal              NA                0.2956282   0.2616881   0.3295682
6-24 months                   ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.5293781   0.4383709   0.6203854
6-24 months                   ki1148112-LCNI-5      MALAWI       optimal              NA                0.1307069   0.0436891   0.2177247
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.1580777   0.1462603   0.1698951
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.2377166   0.1806518   0.2947815


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
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   observed             optimal           1.0363027   0.9000099   1.1932350
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     observed             optimal           1.0315836   0.9281294   1.1465693
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   observed             optimal           1.2729958   0.9278540   1.7465229
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       observed             optimal           1.1361416   1.0425827   1.2380961
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        observed             optimal           1.0367603   0.8755876   1.2276007
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       observed             optimal           0.8499059   0.6124603   1.1794072
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.0450108   1.0070267   1.0844277
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           1.0468267   0.8718782   1.2568797
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   observed             optimal           0.6735560   0.4675680   0.9702925
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     observed             optimal           1.1900097   0.9712887   1.4579837
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       observed             optimal           1.2488618   1.0350208   1.5068835
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        observed             optimal           0.8533404   0.7183150   1.0137472
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.1326547   1.0777009   1.1904106
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           0.5738080   0.3804008   0.8655493
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   observed             optimal           1.1573433   0.9469483   1.4144845
6-24 months                   ki1000109-EE          PAKISTAN     observed             optimal           0.9371235   0.7977138   1.1008966
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   observed             optimal           1.0795507   0.7998757   1.4570135
6-24 months                   ki1101329-Keneba      GAMBIA       observed             optimal           1.1441240   1.0446332   1.2530904
6-24 months                   ki1113344-GMS-Nepal   NEPAL        observed             optimal           0.8942266   0.7716591   1.0362624
6-24 months                   ki1148112-LCNI-5      MALAWI       observed             optimal           0.7413476   0.4475696   1.2279569
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.0555706   1.0111135   1.1019824
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           1.1045697   0.8879265   1.3740710


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0079552   -0.0229575   0.0388680
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     optimal              NA                 0.0135340   -0.0317336   0.0588017
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                 0.0405263   -0.0065031   0.0875556
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       optimal              NA                 0.0482101    0.0178466   0.0785737
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0191973   -0.0690155   0.1074101
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.0162916   -0.0522061   0.0196229
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0079709    0.0014175   0.0145244
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0123915   -0.0360564   0.0608393
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                -0.0348953   -0.0767028   0.0069121
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     optimal              NA                 0.0308900   -0.0025439   0.0643239
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       optimal              NA                 0.0279607    0.0066989   0.0492226
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                -0.0267042   -0.0582097   0.0048014
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0089270    0.0055384   0.0123156
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                -0.0182109   -0.0377743   0.0013525
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0250289   -0.0072797   0.0573374
6-24 months                   ki1000109-EE          PAKISTAN     optimal              NA                -0.0223046   -0.0794927   0.0348835
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                 0.0119008   -0.0329549   0.0567564
6-24 months                   ki1101329-Keneba      GAMBIA       optimal              NA                 0.0426071    0.0158033   0.0694110
6-24 months                   ki1113344-GMS-Nepal   NEPAL        optimal              NA                -0.0559941   -0.1341363   0.0221481
6-24 months                   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.0338077   -0.1025647   0.0349494
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0087845    0.0019481   0.0156208
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0248580   -0.0272824   0.0769983


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0350310   -0.1110988    0.1619421
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     optimal              NA                 0.0306166   -0.0774359    0.1278329
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                 0.2144515   -0.0777557    0.4274338
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       optimal              NA                 0.1198280    0.0408435    0.1923083
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0354569   -0.1420902    0.1854029
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.1766008   -0.6327589    0.1521164
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0430721    0.0069777    0.0778546
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0447320   -0.1469491    0.2043789
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                -0.4846575   -1.1387266   -0.0306170
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     optimal              NA                 0.1596707   -0.0295600    0.3141213
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       optimal              NA                 0.1992709    0.0338358    0.3363787
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                -0.1718653   -0.3921470    0.0135608
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.1171184    0.0720988    0.1599537
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                -0.7427432   -1.6288065   -0.1553356
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.1359522   -0.0560239    0.2930286
6-24 months                   ki1000109-EE          PAKISTAN     optimal              NA                -0.0670952   -0.2535824    0.0916495
6-24 months                   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                 0.0736887   -0.2501943    0.3136645
6-24 months                   ki1101329-Keneba      GAMBIA       optimal              NA                 0.1259689    0.0427262    0.2019730
6-24 months                   ki1113344-GMS-Nepal   NEPAL        optimal              NA                -0.1182847   -0.2959090    0.0349934
6-24 months                   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.3488950   -1.2342892    0.1856392
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0526451    0.0109913    0.0925445
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0946701   -0.1262193    0.2722356
