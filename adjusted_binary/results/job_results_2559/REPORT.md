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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* sex
* hfoodsec
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_hfoodsec
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        perdiar24    ever_stunted   n_cell      n
------------  -------------------------  -----------------------------  ----------  -------------  -------  -----
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                      0       23    265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                      1        7    265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                      0       42    265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                      1       10    265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                      0       89    265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                      1       10    265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                      0       63    265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                      1       21    265
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Q1                      0      135    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Q1                      1       13    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Q2                      0       59    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Q2                      1       11    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Q3                      0       13    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Q3                      1        1    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Q4                      0        1    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Q4                      1        0    233
0-6 months    ki0047075b-MAL-ED          INDIA                          Q1                      0       30    251
0-6 months    ki0047075b-MAL-ED          INDIA                          Q1                      1        6    251
0-6 months    ki0047075b-MAL-ED          INDIA                          Q2                      0       67    251
0-6 months    ki0047075b-MAL-ED          INDIA                          Q2                      1       12    251
0-6 months    ki0047075b-MAL-ED          INDIA                          Q3                      0       82    251
0-6 months    ki0047075b-MAL-ED          INDIA                          Q3                      1       17    251
0-6 months    ki0047075b-MAL-ED          INDIA                          Q4                      0       30    251
0-6 months    ki0047075b-MAL-ED          INDIA                          Q4                      1        7    251
0-6 months    ki0047075b-MAL-ED          NEPAL                          Q1                      0       24    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Q1                      1        4    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Q2                      0       61    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Q2                      1        5    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Q3                      0       66    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Q3                      1        9    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Q4                      0       61    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Q4                      1       10    240
0-6 months    ki0047075b-MAL-ED          PERU                           Q1                      0       30    303
0-6 months    ki0047075b-MAL-ED          PERU                           Q1                      1        2    303
0-6 months    ki0047075b-MAL-ED          PERU                           Q2                      0       26    303
0-6 months    ki0047075b-MAL-ED          PERU                           Q2                      1        6    303
0-6 months    ki0047075b-MAL-ED          PERU                           Q3                      0       80    303
0-6 months    ki0047075b-MAL-ED          PERU                           Q3                      1       12    303
0-6 months    ki0047075b-MAL-ED          PERU                           Q4                      0      130    303
0-6 months    ki0047075b-MAL-ED          PERU                           Q4                      1       17    303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                      0      166    303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                      1       18    303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                      0       79    303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                      1       13    303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                      0       23    303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                      1        2    303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                      0        2    303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                      1        0    303
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                      0       27    262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                      1        8    262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                      0       59    262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                      1       11    262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                      0       89    262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                      1       19    262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                      0       44    262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                      1        5    262
0-6 months    ki1000109-EE               PAKISTAN                       Q1                      0      180    379
0-6 months    ki1000109-EE               PAKISTAN                       Q1                      1      101    379
0-6 months    ki1000109-EE               PAKISTAN                       Q2                      0       30    379
0-6 months    ki1000109-EE               PAKISTAN                       Q2                      1       13    379
0-6 months    ki1000109-EE               PAKISTAN                       Q3                      0       27    379
0-6 months    ki1000109-EE               PAKISTAN                       Q3                      1        9    379
0-6 months    ki1000109-EE               PAKISTAN                       Q4                      0       12    379
0-6 months    ki1000109-EE               PAKISTAN                       Q4                      1        7    379
0-6 months    ki1000109-ResPak           PAKISTAN                       Q1                      0       22    277
0-6 months    ki1000109-ResPak           PAKISTAN                       Q1                      1        7    277
0-6 months    ki1000109-ResPak           PAKISTAN                       Q2                      0       17    277
0-6 months    ki1000109-ResPak           PAKISTAN                       Q2                      1        4    277
0-6 months    ki1000109-ResPak           PAKISTAN                       Q3                      0       46    277
0-6 months    ki1000109-ResPak           PAKISTAN                       Q3                      1       16    277
0-6 months    ki1000109-ResPak           PAKISTAN                       Q4                      0      116    277
0-6 months    ki1000109-ResPak           PAKISTAN                       Q4                      1       49    277
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1                      0       51    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1                      1       34    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2                      0       10    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2                      1        3    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3                      0       22    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3                      1       15    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4                      0      174    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4                      1      107    416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q1                      0       59    626
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q1                      1       11    626
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q2                      0      106    626
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q2                      1       23    626
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q3                      0      191    626
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q3                      1       41    626
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q4                      0      172    626
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q4                      1       23    626
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                      0       94    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                      1        7    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                      0      156    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                      1       11    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                      0      229    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                      1       27    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                      0      155    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                      1       21    700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                      0      158    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                      1       29    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                      0      168    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                      1       24    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                      0      174    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                      1       21    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                      0      153    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                      1       31    758
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q1                      0       23    289
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q1                      1        8    289
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q2                      0       14    289
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q2                      1        3    289
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q3                      0       49    289
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q3                      1        6    289
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q4                      0      134    289
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q4                      1       52    289
0-6 months    ki1114097-CMIN             BANGLADESH                     Q1                      0        9    277
0-6 months    ki1114097-CMIN             BANGLADESH                     Q1                      1        8    277
0-6 months    ki1114097-CMIN             BANGLADESH                     Q2                      0       21    277
0-6 months    ki1114097-CMIN             BANGLADESH                     Q2                      1       15    277
0-6 months    ki1114097-CMIN             BANGLADESH                     Q3                      0       64    277
0-6 months    ki1114097-CMIN             BANGLADESH                     Q3                      1       32    277
0-6 months    ki1114097-CMIN             BANGLADESH                     Q4                      0       74    277
0-6 months    ki1114097-CMIN             BANGLADESH                     Q4                      1       54    277
0-6 months    ki1114097-CMIN             BRAZIL                         Q1                      0        8    119
0-6 months    ki1114097-CMIN             BRAZIL                         Q1                      1        1    119
0-6 months    ki1114097-CMIN             BRAZIL                         Q2                      0       25    119
0-6 months    ki1114097-CMIN             BRAZIL                         Q2                      1        1    119
0-6 months    ki1114097-CMIN             BRAZIL                         Q3                      0       39    119
0-6 months    ki1114097-CMIN             BRAZIL                         Q3                      1        2    119
0-6 months    ki1114097-CMIN             BRAZIL                         Q4                      0       42    119
0-6 months    ki1114097-CMIN             BRAZIL                         Q4                      1        1    119
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q1                      0       38    945
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q1                      1        9    945
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q2                      0      108    945
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q2                      1       14    945
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q3                      0      207    945
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q3                      1       24    945
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q4                      0      473    945
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q4                      1       72    945
0-6 months    ki1114097-CMIN             PERU                           Q1                      0       83    699
0-6 months    ki1114097-CMIN             PERU                           Q1                      1        2    699
0-6 months    ki1114097-CMIN             PERU                           Q2                      0      122    699
0-6 months    ki1114097-CMIN             PERU                           Q2                      1        5    699
0-6 months    ki1114097-CMIN             PERU                           Q3                      0      161    699
0-6 months    ki1114097-CMIN             PERU                           Q3                      1       10    699
0-6 months    ki1114097-CMIN             PERU                           Q4                      0      292    699
0-6 months    ki1114097-CMIN             PERU                           Q4                      1       24    699
0-6 months    ki1114097-CONTENT          PERU                           Q1                      0       13    215
0-6 months    ki1114097-CONTENT          PERU                           Q1                      1        4    215
0-6 months    ki1114097-CONTENT          PERU                           Q2                      0       52    215
0-6 months    ki1114097-CONTENT          PERU                           Q2                      1        7    215
0-6 months    ki1114097-CONTENT          PERU                           Q3                      0       76    215
0-6 months    ki1114097-CONTENT          PERU                           Q3                      1        4    215
0-6 months    ki1114097-CONTENT          PERU                           Q4                      0       56    215
0-6 months    ki1114097-CONTENT          PERU                           Q4                      1        3    215
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                      0     1352   5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                      1      501   5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                      0     1223   5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                      1      480   5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                      0      805   5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                      1      349   5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                      0      279   5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                      1      141   5130
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                      0        5    195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                      1        4    195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                      0       29    195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                      1       13    195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                      0       53    195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                      1       30    195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                      0       35    195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                      1       26    195
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Q1                      0      119    203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Q1                      1        1    203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Q2                      0       62    203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Q2                      1        6    203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Q3                      0       13    203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Q3                      1        1    203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Q4                      0        1    203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Q4                      1        0    203
6-24 months   ki0047075b-MAL-ED          INDIA                          Q1                      0       14    194
6-24 months   ki0047075b-MAL-ED          INDIA                          Q1                      1        5    194
6-24 months   ki0047075b-MAL-ED          INDIA                          Q2                      0       47    194
6-24 months   ki0047075b-MAL-ED          INDIA                          Q2                      1       21    194
6-24 months   ki0047075b-MAL-ED          INDIA                          Q3                      0       47    194
6-24 months   ki0047075b-MAL-ED          INDIA                          Q3                      1       32    194
6-24 months   ki0047075b-MAL-ED          INDIA                          Q4                      0       20    194
6-24 months   ki0047075b-MAL-ED          INDIA                          Q4                      1        8    194
6-24 months   ki0047075b-MAL-ED          NEPAL                          Q1                      0       24    224
6-24 months   ki0047075b-MAL-ED          NEPAL                          Q1                      1        1    224
6-24 months   ki0047075b-MAL-ED          NEPAL                          Q2                      0       55    224
6-24 months   ki0047075b-MAL-ED          NEPAL                          Q2                      1       10    224
6-24 months   ki0047075b-MAL-ED          NEPAL                          Q3                      0       56    224
6-24 months   ki0047075b-MAL-ED          NEPAL                          Q3                      1       12    224
6-24 months   ki0047075b-MAL-ED          NEPAL                          Q4                      0       53    224
6-24 months   ki0047075b-MAL-ED          NEPAL                          Q4                      1       13    224
6-24 months   ki0047075b-MAL-ED          PERU                           Q1                      0        6    229
6-24 months   ki0047075b-MAL-ED          PERU                           Q1                      1        2    229
6-24 months   ki0047075b-MAL-ED          PERU                           Q2                      0       11    229
6-24 months   ki0047075b-MAL-ED          PERU                           Q2                      1       13    229
6-24 months   ki0047075b-MAL-ED          PERU                           Q3                      0       49    229
6-24 months   ki0047075b-MAL-ED          PERU                           Q3                      1       26    229
6-24 months   ki0047075b-MAL-ED          PERU                           Q4                      0       88    229
6-24 months   ki0047075b-MAL-ED          PERU                           Q4                      1       34    229
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                      0       91    224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                      1       36    224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                      0       60    224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                      1       19    224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                      0       12    224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                      1        4    224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                      0        2    224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                      1        0    224
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                      0        7    187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                      1       12    187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                      0       22    187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                      1       33    187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                      0       26    187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                      1       49    187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                      0       16    187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                      1       22    187
6-24 months   ki1000109-EE               PAKISTAN                       Q1                      0       33    188
6-24 months   ki1000109-EE               PAKISTAN                       Q1                      1      106    188
6-24 months   ki1000109-EE               PAKISTAN                       Q2                      0        6    188
6-24 months   ki1000109-EE               PAKISTAN                       Q2                      1       16    188
6-24 months   ki1000109-EE               PAKISTAN                       Q3                      0        5    188
6-24 months   ki1000109-EE               PAKISTAN                       Q3                      1       13    188
6-24 months   ki1000109-EE               PAKISTAN                       Q4                      0        3    188
6-24 months   ki1000109-EE               PAKISTAN                       Q4                      1        6    188
6-24 months   ki1000109-ResPak           PAKISTAN                       Q1                      0        7    167
6-24 months   ki1000109-ResPak           PAKISTAN                       Q1                      1        0    167
6-24 months   ki1000109-ResPak           PAKISTAN                       Q2                      0       13    167
6-24 months   ki1000109-ResPak           PAKISTAN                       Q2                      1        2    167
6-24 months   ki1000109-ResPak           PAKISTAN                       Q3                      0       34    167
6-24 months   ki1000109-ResPak           PAKISTAN                       Q3                      1        4    167
6-24 months   ki1000109-ResPak           PAKISTAN                       Q4                      0       96    167
6-24 months   ki1000109-ResPak           PAKISTAN                       Q4                      1       11    167
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                      0       18    226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                      1       20    226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2                      0        5    226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2                      1        5    226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3                      0        9    226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3                      1       12    226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4                      0       67    226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4                      1       90    226
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                      0       18    420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                      1        6    420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                      0       50    420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                      1       41    420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                      0       99    420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                      1       73    420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                      0       64    420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                      1       69    420
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                      0       28    497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                      1        6    497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                      0      107    497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                      1       23    497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                      0      149    497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                      1       53    497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                      0       94    497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                      1       37    497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                      0      116    620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                      1       25    620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                      0      141    620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                      1       27    620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                      0      126    620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                      1       34    620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                      0      120    620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                      1       31    620
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q1                      0       17    193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q1                      1        1    193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q2                      0       13    193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q2                      1        1    193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q3                      0       34    193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q3                      1        8    193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q4                      0       91    193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q4                      1       28    193
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q1                      0      428   2025
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q1                      1       48   2025
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q2                      0      571   2025
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q2                      1      103   2025
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q3                      0      473   2025
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q3                      1       85   2025
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q4                      0      274   2025
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q4                      1       43   2025
6-24 months   ki1114097-CMIN             BANGLADESH                     Q1                      0        2    166
6-24 months   ki1114097-CMIN             BANGLADESH                     Q1                      1        1    166
6-24 months   ki1114097-CMIN             BANGLADESH                     Q2                      0        9    166
6-24 months   ki1114097-CMIN             BANGLADESH                     Q2                      1       11    166
6-24 months   ki1114097-CMIN             BANGLADESH                     Q3                      0       25    166
6-24 months   ki1114097-CMIN             BANGLADESH                     Q3                      1       35    166
6-24 months   ki1114097-CMIN             BANGLADESH                     Q4                      0       33    166
6-24 months   ki1114097-CMIN             BANGLADESH                     Q4                      1       50    166
6-24 months   ki1114097-CMIN             BRAZIL                         Q1                      0        7    104
6-24 months   ki1114097-CMIN             BRAZIL                         Q1                      1        0    104
6-24 months   ki1114097-CMIN             BRAZIL                         Q2                      0       24    104
6-24 months   ki1114097-CMIN             BRAZIL                         Q2                      1        2    104
6-24 months   ki1114097-CMIN             BRAZIL                         Q3                      0       30    104
6-24 months   ki1114097-CMIN             BRAZIL                         Q3                      1        7    104
6-24 months   ki1114097-CMIN             BRAZIL                         Q4                      0       29    104
6-24 months   ki1114097-CMIN             BRAZIL                         Q4                      1        5    104
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q1                      0       56   1235
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q1                      1        5   1235
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q2                      0      120   1235
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q2                      1       28   1235
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q3                      0      257   1235
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q3                      1       43   1235
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q4                      0      567   1235
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q4                      1      159   1235
6-24 months   ki1114097-CMIN             PERU                           Q1                      0       78    752
6-24 months   ki1114097-CMIN             PERU                           Q1                      1        6    752
6-24 months   ki1114097-CMIN             PERU                           Q2                      0      120    752
6-24 months   ki1114097-CMIN             PERU                           Q2                      1       18    752
6-24 months   ki1114097-CMIN             PERU                           Q3                      0      149    752
6-24 months   ki1114097-CMIN             PERU                           Q3                      1       36    752
6-24 months   ki1114097-CMIN             PERU                           Q4                      0      273    752
6-24 months   ki1114097-CMIN             PERU                           Q4                      1       72    752
6-24 months   ki1114097-CONTENT          PERU                           Q1                      0       14    200
6-24 months   ki1114097-CONTENT          PERU                           Q1                      1        0    200
6-24 months   ki1114097-CONTENT          PERU                           Q2                      0       51    200
6-24 months   ki1114097-CONTENT          PERU                           Q2                      1        2    200
6-24 months   ki1114097-CONTENT          PERU                           Q3                      0       65    200
6-24 months   ki1114097-CONTENT          PERU                           Q3                      1       10    200
6-24 months   ki1114097-CONTENT          PERU                           Q4                      0       51    200
6-24 months   ki1114097-CONTENT          PERU                           Q4                      1        7    200
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                      0     1122   4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                      1      447   4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                      0     1057   4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                      1      400   4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                      0      647   4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                      1      300   4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                      0      214   4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                      1      125   4312
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                      0       16    265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                      1       14    265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                      0       27    265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                      1       25    265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                      0       55    265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                      1       44    265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                      0       33    265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                      1       51    265
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Q1                      0      131    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Q1                      1       17    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Q2                      0       53    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Q2                      1       17    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Q3                      0       12    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Q3                      1        2    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Q4                      0        1    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Q4                      1        0    233
0-24 months   ki0047075b-MAL-ED          INDIA                          Q1                      0       20    251
0-24 months   ki0047075b-MAL-ED          INDIA                          Q1                      1       16    251
0-24 months   ki0047075b-MAL-ED          INDIA                          Q2                      0       43    251
0-24 months   ki0047075b-MAL-ED          INDIA                          Q2                      1       36    251
0-24 months   ki0047075b-MAL-ED          INDIA                          Q3                      0       43    251
0-24 months   ki0047075b-MAL-ED          INDIA                          Q3                      1       56    251
0-24 months   ki0047075b-MAL-ED          INDIA                          Q4                      0       19    251
0-24 months   ki0047075b-MAL-ED          INDIA                          Q4                      1       18    251
0-24 months   ki0047075b-MAL-ED          NEPAL                          Q1                      0       24    240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Q1                      1        4    240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Q2                      0       53    240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Q2                      1       13    240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Q3                      0       56    240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Q3                      1       19    240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Q4                      0       48    240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Q4                      1       23    240
0-24 months   ki0047075b-MAL-ED          PERU                           Q1                      0       27    303
0-24 months   ki0047075b-MAL-ED          PERU                           Q1                      1        5    303
0-24 months   ki0047075b-MAL-ED          PERU                           Q2                      0       13    303
0-24 months   ki0047075b-MAL-ED          PERU                           Q2                      1       19    303
0-24 months   ki0047075b-MAL-ED          PERU                           Q3                      0       46    303
0-24 months   ki0047075b-MAL-ED          PERU                           Q3                      1       46    303
0-24 months   ki0047075b-MAL-ED          PERU                           Q4                      0       81    303
0-24 months   ki0047075b-MAL-ED          PERU                           Q4                      1       66    303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                      0      115    303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                      1       69    303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                      0       51    303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                      1       41    303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                      0       15    303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                      1       10    303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                      0        2    303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                      1        0    303
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                      0       12    262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                      1       23    262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                      0       21    262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                      1       49    262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                      0       31    262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                      1       77    262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                      0       16    262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                      1       33    262
0-24 months   ki1000109-EE               PAKISTAN                       Q1                      0       33    379
0-24 months   ki1000109-EE               PAKISTAN                       Q1                      1      248    379
0-24 months   ki1000109-EE               PAKISTAN                       Q2                      0        5    379
0-24 months   ki1000109-EE               PAKISTAN                       Q2                      1       38    379
0-24 months   ki1000109-EE               PAKISTAN                       Q3                      0        5    379
0-24 months   ki1000109-EE               PAKISTAN                       Q3                      1       31    379
0-24 months   ki1000109-EE               PAKISTAN                       Q4                      0        2    379
0-24 months   ki1000109-EE               PAKISTAN                       Q4                      1       17    379
0-24 months   ki1000109-ResPak           PAKISTAN                       Q1                      0       19    277
0-24 months   ki1000109-ResPak           PAKISTAN                       Q1                      1       10    277
0-24 months   ki1000109-ResPak           PAKISTAN                       Q2                      0       13    277
0-24 months   ki1000109-ResPak           PAKISTAN                       Q2                      1        8    277
0-24 months   ki1000109-ResPak           PAKISTAN                       Q3                      0       29    277
0-24 months   ki1000109-ResPak           PAKISTAN                       Q3                      1       33    277
0-24 months   ki1000109-ResPak           PAKISTAN                       Q4                      0       74    277
0-24 months   ki1000109-ResPak           PAKISTAN                       Q4                      1       91    277
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                      0       21    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                      1       65    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2                      0        5    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2                      1        8    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3                      0        8    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3                      1       29    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4                      0       72    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4                      1      210    418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                      0       49    626
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                      1       21    626
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                      0       48    626
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                      1       81    626
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                      0      100    626
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                      1      132    626
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                      0       87    626
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                      1      108    626
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                      0       84    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                      1       17    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                      0      110    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                      1       57    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                      0      145    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                      1      111    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                      0       98    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                      1       78    700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                      0      120    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                      1       67    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                      0      123    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                      1       69    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                      0      117    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                      1       78    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                      0      104    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                      1       80    758
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q1                      0       24    309
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q1                      1       11    309
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q2                      0       12    309
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q2                      1        7    309
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q3                      0       35    309
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q3                      1       22    309
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q4                      0       98    309
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q4                      1      100    309
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q1                      0      400   2452
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q1                      1      186   2452
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q2                      0      540   2452
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q2                      1      258   2452
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q3                      0      455   2452
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q3                      1      219   2452
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q4                      0      254   2452
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q4                      1      140   2452
0-24 months   ki1114097-CMIN             BANGLADESH                     Q1                      0        8    277
0-24 months   ki1114097-CMIN             BANGLADESH                     Q1                      1        9    277
0-24 months   ki1114097-CMIN             BANGLADESH                     Q2                      0        6    277
0-24 months   ki1114097-CMIN             BANGLADESH                     Q2                      1       30    277
0-24 months   ki1114097-CMIN             BANGLADESH                     Q3                      0       23    277
0-24 months   ki1114097-CMIN             BANGLADESH                     Q3                      1       73    277
0-24 months   ki1114097-CMIN             BANGLADESH                     Q4                      0       28    277
0-24 months   ki1114097-CMIN             BANGLADESH                     Q4                      1      100    277
0-24 months   ki1114097-CMIN             BRAZIL                         Q1                      0        6    119
0-24 months   ki1114097-CMIN             BRAZIL                         Q1                      1        3    119
0-24 months   ki1114097-CMIN             BRAZIL                         Q2                      0       23    119
0-24 months   ki1114097-CMIN             BRAZIL                         Q2                      1        3    119
0-24 months   ki1114097-CMIN             BRAZIL                         Q3                      0       28    119
0-24 months   ki1114097-CMIN             BRAZIL                         Q3                      1       13    119
0-24 months   ki1114097-CMIN             BRAZIL                         Q4                      0       28    119
0-24 months   ki1114097-CMIN             BRAZIL                         Q4                      1       15    119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q1                      0       55   1478
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q1                      1       34   1478
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q2                      0      116   1478
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q2                      1       54   1478
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q3                      0      246   1478
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q3                      1       93   1478
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q4                      0      527   1478
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q4                      1      353   1478
0-24 months   ki1114097-CMIN             PERU                           Q1                      0       90    929
0-24 months   ki1114097-CMIN             PERU                           Q1                      1       23    929
0-24 months   ki1114097-CMIN             PERU                           Q2                      0      121    929
0-24 months   ki1114097-CMIN             PERU                           Q2                      1       36    929
0-24 months   ki1114097-CMIN             PERU                           Q3                      0      146    929
0-24 months   ki1114097-CMIN             PERU                           Q3                      1       68    929
0-24 months   ki1114097-CMIN             PERU                           Q4                      0      288    929
0-24 months   ki1114097-CMIN             PERU                           Q4                      1      157    929
0-24 months   ki1114097-CONTENT          PERU                           Q1                      0       12    215
0-24 months   ki1114097-CONTENT          PERU                           Q1                      1        5    215
0-24 months   ki1114097-CONTENT          PERU                           Q2                      0       43    215
0-24 months   ki1114097-CONTENT          PERU                           Q2                      1       16    215
0-24 months   ki1114097-CONTENT          PERU                           Q3                      0       63    215
0-24 months   ki1114097-CONTENT          PERU                           Q3                      1       17    215
0-24 months   ki1114097-CONTENT          PERU                           Q4                      0       48    215
0-24 months   ki1114097-CONTENT          PERU                           Q4                      1       11    215
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                      0      945   5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                      1     1010   5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                      0      894   5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                      1      916   5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                      0      534   5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                      1      695   5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                      0      176   5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                      1      272   5442


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/b294073d-b2f8-44da-8e21-b92ab4a0626c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b294073d-b2f8-44da-8e21-b92ab4a0626c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b294073d-b2f8-44da-8e21-b92ab4a0626c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b294073d-b2f8-44da-8e21-b92ab4a0626c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                0.5336079    0.4683833   0.5988325
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                0.4376636    0.3619133   0.5134139
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                0.4550461    0.3804124   0.5296798
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                0.5561464    0.4820359   0.6302570
0-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   NA                0.5919832    0.5004592   0.6835072
0-24 months   ki0047075b-MAL-ED          INDIA                          Q2                   NA                0.4848143    0.4003789   0.5692498
0-24 months   ki0047075b-MAL-ED          INDIA                          Q3                   NA                0.5290474    0.4503313   0.6077635
0-24 months   ki0047075b-MAL-ED          INDIA                          Q4                   NA                0.5727395    0.4728298   0.6726493
0-24 months   ki0047075b-MAL-ED          PERU                           Q1                   NA                0.6801058    0.6232929   0.7369188
0-24 months   ki0047075b-MAL-ED          PERU                           Q2                   NA                0.8175407    0.7587768   0.8763046
0-24 months   ki0047075b-MAL-ED          PERU                           Q3                   NA                0.5416571    0.4718001   0.6115141
0-24 months   ki0047075b-MAL-ED          PERU                           Q4                   NA                0.4531557    0.3878308   0.5184807
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                0.7284795    0.6068827   0.8500763
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                0.7070752    0.6114699   0.8026804
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                0.7035857    0.6242256   0.7829457
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                0.6769838    0.5656694   0.7882983
0-24 months   ki1000109-ResPak           PAKISTAN                       Q1                   NA                0.3322545    0.1627446   0.5017643
0-24 months   ki1000109-ResPak           PAKISTAN                       Q2                   NA                0.3509450    0.1493061   0.5525840
0-24 months   ki1000109-ResPak           PAKISTAN                       Q3                   NA                0.5186392    0.3956616   0.6416168
0-24 months   ki1000109-ResPak           PAKISTAN                       Q4                   NA                0.5499396    0.4738377   0.6260416
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   NA                0.4725651    0.3314034   0.6137268
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2                   NA                0.6076806    0.4215391   0.7938221
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3                   NA                0.7562939    0.6331813   0.8794066
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4                   NA                0.7677646    0.7150013   0.8205278
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                0.3145165    0.2108545   0.4181785
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                   NA                0.6318385    0.5497656   0.7139113
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                   NA                0.5668218    0.5035843   0.6300593
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                   NA                0.5633617    0.4944336   0.6322899
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                0.1447724    0.0915564   0.1979884
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                0.3281118    0.2735843   0.3826393
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                0.3836944    0.3334812   0.4339075
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                0.3789856    0.3254236   0.4325477
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                0.2969658    0.2514802   0.3424514
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                0.3418046    0.2926762   0.3909330
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                0.3632196    0.3119278   0.4145114
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                0.3713765    0.3200360   0.4227170
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q1                   NA                0.3907758    0.2505090   0.5310426
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q2                   NA                0.4737471    0.3157128   0.6317814
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q3                   NA                0.3856613    0.2633589   0.5079637
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q4                   NA                0.5008169    0.4313791   0.5702547
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q1                   NA                0.3251308    0.1018543   0.5484072
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q2                   NA                0.3216080    0.2560407   0.3871752
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q3                   NA                0.3270328    0.2675298   0.3865358
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q4                   NA                0.3565950    0.2743761   0.4388139
0-24 months   ki1114097-CMIN             BANGLADESH                     Q1                   NA                0.5395961    0.3318262   0.7473660
0-24 months   ki1114097-CMIN             BANGLADESH                     Q2                   NA                0.8200750    0.7017323   0.9384177
0-24 months   ki1114097-CMIN             BANGLADESH                     Q3                   NA                0.7460778    0.6618883   0.8302673
0-24 months   ki1114097-CMIN             BANGLADESH                     Q4                   NA                0.7734304    0.7031951   0.8436658
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q1                   NA                0.3846715    0.2867700   0.4825730
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q2                   NA                0.3257874    0.2561810   0.3953938
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q3                   NA                0.2784688    0.2306655   0.3262721
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q4                   NA                0.4009923    0.3685848   0.4333998
0-24 months   ki1114097-CMIN             PERU                           Q1                   NA                0.2030050    0.1302275   0.2757826
0-24 months   ki1114097-CMIN             PERU                           Q2                   NA                0.2301501    0.1644967   0.2958036
0-24 months   ki1114097-CMIN             PERU                           Q3                   NA                0.3205264    0.2581962   0.3828565
0-24 months   ki1114097-CMIN             PERU                           Q4                   NA                0.3534285    0.3092025   0.3976545
0-24 months   ki1114097-CONTENT          PERU                           Q1                   NA                0.2660849    0.0766590   0.4555107
0-24 months   ki1114097-CONTENT          PERU                           Q2                   NA                0.2541695    0.1444324   0.3639066
0-24 months   ki1114097-CONTENT          PERU                           Q3                   NA                0.2144492    0.1278049   0.3010934
0-24 months   ki1114097-CONTENT          PERU                           Q4                   NA                0.1996480    0.1028315   0.2964644
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                0.5236390    0.4971737   0.5501043
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                0.5094679    0.4849588   0.5339769
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                0.5515137    0.5243204   0.5787069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                0.5832239    0.5426049   0.6238429
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                0.5893599    0.5534155   0.6253044
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                0.2247548    0.1799564   0.2695532
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                0.1843538    0.1384480   0.2302595
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                0.2429758    0.1937605   0.2921911
0-6 months    ki0047075b-MAL-ED          INDIA                          Q1                   NA                0.1689307    0.1212257   0.2166358
0-6 months    ki0047075b-MAL-ED          INDIA                          Q2                   NA                0.1607814    0.1137658   0.2077970
0-6 months    ki0047075b-MAL-ED          INDIA                          Q3                   NA                0.1700900    0.1199631   0.2202169
0-6 months    ki0047075b-MAL-ED          INDIA                          Q4                   NA                0.1711931    0.1155644   0.2268219
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                0.1938410    0.0914833   0.2961988
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                0.1673944    0.0984843   0.2363044
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                0.1642807    0.1023967   0.2261647
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                0.1422189    0.0625672   0.2218706
0-6 months    ki1000109-EE               PAKISTAN                       Q1                   NA                0.3549602    0.3000821   0.4098383
0-6 months    ki1000109-EE               PAKISTAN                       Q2                   NA                0.3002392    0.1700058   0.4304725
0-6 months    ki1000109-EE               PAKISTAN                       Q3                   NA                0.2573756    0.1399022   0.3748490
0-6 months    ki1000109-EE               PAKISTAN                       Q4                   NA                0.4046584    0.1969968   0.6123201
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                0.1631691    0.0787420   0.2475962
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q2                   NA                0.1757168    0.1101498   0.2412838
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q3                   NA                0.1749251    0.1262536   0.2235967
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q4                   NA                0.1213876    0.0761063   0.1666689
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                0.0896903    0.0656002   0.1137804
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                0.1018891    0.0790479   0.1247302
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                0.0860939    0.0629478   0.1092400
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                0.0871350    0.0637455   0.1105245
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                0.1279280    0.1026792   0.1531768
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                0.1381233    0.1113715   0.1648752
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                0.1121037    0.0881110   0.1360963
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                0.1283889    0.1022371   0.1545408
0-6 months    ki1114097-CMIN             BANGLADESH                     Q1                   NA                0.4025289    0.1921589   0.6128989
0-6 months    ki1114097-CMIN             BANGLADESH                     Q2                   NA                0.4055018    0.2506698   0.5603339
0-6 months    ki1114097-CMIN             BANGLADESH                     Q3                   NA                0.3190622    0.2273128   0.4108116
0-6 months    ki1114097-CMIN             BANGLADESH                     Q4                   NA                0.4112819    0.3274227   0.4951411
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q1                   NA                0.1914673    0.0844037   0.2985309
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q2                   NA                0.1224730    0.0645803   0.1803658
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q3                   NA                0.1035920    0.0641991   0.1429850
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q4                   NA                0.1307181    0.1024456   0.1589906
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                0.2818469    0.2631315   0.3005622
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                0.2850951    0.2668086   0.3033816
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                0.2858322    0.2637819   0.3078824
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                0.3180136    0.2852624   0.3507648
6-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   NA                0.2932910    0.1048563   0.4817258
6-24 months   ki0047075b-MAL-ED          INDIA                          Q2                   NA                0.3155576    0.2087627   0.4223524
6-24 months   ki0047075b-MAL-ED          INDIA                          Q3                   NA                0.3826217    0.2793615   0.4858819
6-24 months   ki0047075b-MAL-ED          INDIA                          Q4                   NA                0.3087926    0.1453525   0.4722327
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                0.5989126    0.3920158   0.8058095
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                0.6068372    0.4815528   0.7321215
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                0.6448556    0.5403360   0.7493751
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                0.6024457    0.4519719   0.7529194
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   NA                0.1264880    0.0764321   0.1765439
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2                   NA                0.4118827    0.1711611   0.6526044
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3                   NA                0.3423270    0.1903231   0.4943309
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4                   NA                0.5855297    0.5041072   0.6669523
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                0.2518240    0.0790632   0.4245848
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                   NA                0.4508117    0.3489229   0.5527005
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                   NA                0.4228306    0.3491340   0.4965272
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                   NA                0.5123391    0.4281235   0.5965546
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                0.0476936   -0.0253994   0.1207867
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                0.1348876    0.0787925   0.1909827
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                0.2292763    0.1742003   0.2843522
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                0.2216607    0.1572357   0.2860857
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                0.1462993    0.0981626   0.1944361
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                0.1399898    0.0930573   0.1869223
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                0.1893002    0.1358222   0.2427783
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                0.1683092    0.1154611   0.2211573
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q1                   NA                0.1060449    0.0548209   0.1572689
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q2                   NA                0.1511735    0.1087241   0.1936229
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q3                   NA                0.1541690    0.1078562   0.2004818
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q4                   NA                0.1346515    0.0922179   0.1770850
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q1                   NA                0.0858791    0.0188254   0.1529328
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q2                   NA                0.1945608    0.1314044   0.2577173
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q3                   NA                0.1476137    0.1074147   0.1878128
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q4                   NA                0.2192103    0.1890968   0.2493237
6-24 months   ki1114097-CMIN             PERU                           Q1                   NA                0.0718152    0.0167308   0.1268997
6-24 months   ki1114097-CMIN             PERU                           Q2                   NA                0.1318472    0.0757567   0.1879378
6-24 months   ki1114097-CMIN             PERU                           Q3                   NA                0.1972306    0.1405026   0.2539587
6-24 months   ki1114097-CMIN             PERU                           Q4                   NA                0.2097223    0.1669102   0.2525345
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                0.2880726    0.2609817   0.3151636
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                0.2753789    0.2501925   0.3005653
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                0.3138186    0.2791404   0.3484967
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                0.3578484    0.3027134   0.4129834


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5056604   0.4453505   0.5659702
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5019920   0.4400130   0.5639710
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.4488449   0.3927492   0.5049406
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6946565   0.6387828   0.7505302
0-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.5126354   0.4536662   0.5716045
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7464115   0.7046540   0.7881689
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5463259   0.5072952   0.5853565
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3757143   0.3398113   0.4116172
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3878628   0.3531521   0.4225735
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.4530744   0.3974812   0.5086676
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3274878   0.2607918   0.3941837
0-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7653430   0.7153466   0.8153393
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3612991   0.3368005   0.3857976
0-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.3057051   0.2760637   0.3353464
0-24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.2279070   0.1717046   0.2841094
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5316060   0.5154292   0.5477829
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1811321   0.1346751   0.2275890
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1673307   0.1210604   0.2136010
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1641221   0.1191873   0.2090569
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.3430079   0.2951521   0.3908637
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1565495   0.1280614   0.1850376
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0942857   0.0726222   0.1159492
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1385224   0.1139141   0.1631308
0-6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3935018   0.3358674   0.4511362
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1259259   0.1047621   0.1470897
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2867446   0.2729319   0.3005573
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3402062   0.2733649   0.4070475
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6203209   0.5505766   0.6900651
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.5619469   0.4971181   0.6267757
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4500000   0.4023647   0.4976353
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2394366   0.2018814   0.2769918
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1887097   0.1578857   0.2195336
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1377778   0.1091390   0.1664166
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1902834   0.1683827   0.2121841
6-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.1755319   0.1483241   0.2027397
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2949907   0.2786334   0.3113480


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q1                1.0000000   1.0000000    1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q1                0.8201969   0.6874968    0.9785107
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q1                0.8527723   0.7195713    1.0106305
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q1                1.0422379   0.9002495    1.2066210
0-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   Q1                1.0000000   1.0000000    1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Q2                   Q1                0.8189664   0.6631730    1.0113590
0-24 months   ki0047075b-MAL-ED          INDIA                          Q3                   Q1                0.8936865   0.7392892    1.0803290
0-24 months   ki0047075b-MAL-ED          INDIA                          Q4                   Q1                0.9674929   0.7809836    1.1985430
0-24 months   ki0047075b-MAL-ED          PERU                           Q1                   Q1                1.0000000   1.0000000    1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           Q2                   Q1                1.2020786   1.0909785    1.3244927
0-24 months   ki0047075b-MAL-ED          PERU                           Q3                   Q1                0.7964306   0.6959888    0.9113677
0-24 months   ki0047075b-MAL-ED          PERU                           Q4                   Q1                0.6663018   0.5760178    0.7707367
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q1                1.0000000   1.0000000    1.0000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q1                0.9706178   0.7858014    1.1989020
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q1                0.9658277   0.7931757    1.1760611
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q1                0.9293108   0.7382884    1.1697576
0-24 months   ki1000109-ResPak           PAKISTAN                       Q1                   Q1                1.0000000   1.0000000    1.0000000
0-24 months   ki1000109-ResPak           PAKISTAN                       Q2                   Q1                1.0562538   0.4906667    2.2737881
0-24 months   ki1000109-ResPak           PAKISTAN                       Q3                   Q1                1.5609699   0.8888507    2.7413232
0-24 months   ki1000109-ResPak           PAKISTAN                       Q4                   Q1                1.6551761   0.9757593    2.8076676
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   Q1                1.0000000   1.0000000    1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2                   Q1                1.2859194   0.8366844    1.9763589
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3                   Q1                1.6004017   1.1383031    2.2500909
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4                   Q1                1.6246748   1.1971120    2.2049466
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                   Q1                1.0000000   1.0000000    1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                   Q1                2.0089199   1.4102119    2.8618105
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                   Q1                1.8022007   1.2730380    2.5513200
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                   Q1                1.7911993   1.2608116    2.5447061
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q1                1.0000000   1.0000000    1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q1                2.2663976   1.5364864    3.3430548
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q1                2.6503286   1.8166303    3.8666325
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q1                2.6178034   1.7905806    3.8271915
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q1                1.0000000   1.0000000    1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q1                1.1509898   0.9562311    1.3854156
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q1                1.2231024   1.0113151    1.4792418
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q1                1.2505699   1.0409339    1.5024250
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q1                   Q1                1.0000000   1.0000000    1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q2                   Q1                1.2123246   0.7443348    1.9745564
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q3                   Q1                0.9869121   0.6120259    1.5914284
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q4                   Q1                1.2815966   0.8738042    1.8797000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q1                   Q1                1.0000000   1.0000000    1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q2                   Q1                0.9891649   0.4996797    1.9581487
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q3                   Q1                1.0058501   0.4947581    2.0449071
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q4                   Q1                1.0967741   0.5335257    2.2546495
0-24 months   ki1114097-CMIN             BANGLADESH                     Q1                   Q1                1.0000000   1.0000000    1.0000000
0-24 months   ki1114097-CMIN             BANGLADESH                     Q2                   Q1                1.5197941   1.0085895    2.2901035
0-24 months   ki1114097-CMIN             BANGLADESH                     Q3                   Q1                1.3826597   0.9271643    2.0619300
0-24 months   ki1114097-CMIN             BANGLADESH                     Q4                   Q1                1.4333506   0.9664378    2.1258420
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q1                   Q1                1.0000000   1.0000000    1.0000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q2                   Q1                0.8469237   0.6075022    1.1807030
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q3                   Q1                0.7239132   0.5325863    0.9839727
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q4                   Q1                1.0424278   0.7981441    1.3614781
0-24 months   ki1114097-CMIN             PERU                           Q1                   Q1                1.0000000   1.0000000    1.0000000
0-24 months   ki1114097-CMIN             PERU                           Q2                   Q1                1.1337163   0.7169594    1.7927272
0-24 months   ki1114097-CMIN             PERU                           Q3                   Q1                1.5789083   1.0497981    2.3746961
0-24 months   ki1114097-CMIN             PERU                           Q4                   Q1                1.7409839   1.1914717    2.5439338
0-24 months   ki1114097-CONTENT          PERU                           Q1                   Q1                1.0000000   1.0000000    1.0000000
0-24 months   ki1114097-CONTENT          PERU                           Q2                   Q1                0.9552198   0.4202796    2.1710425
0-24 months   ki1114097-CONTENT          PERU                           Q3                   Q1                0.8059428   0.3599850    1.8043634
0-24 months   ki1114097-CONTENT          PERU                           Q4                   Q1                0.7503169   0.3202970    1.7576671
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q1                1.0000000   1.0000000    1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q1                0.9729372   0.9116415    1.0383543
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q1                1.0532326   0.9840472    1.1272821
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q1                1.1137901   1.0245148    1.2108447
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q1                1.0000000   1.0000000    1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q1                0.3813540   0.3227527    0.4505954
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q1                0.3128033   0.2525214    0.3874758
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q1                0.4122706   0.3465888    0.4903998
0-6 months    ki0047075b-MAL-ED          INDIA                          Q1                   Q1                1.0000000   1.0000000    1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Q2                   Q1                0.9517592   0.8300553    1.0913074
0-6 months    ki0047075b-MAL-ED          INDIA                          Q3                   Q1                1.0068625   0.8548536    1.1859014
0-6 months    ki0047075b-MAL-ED          INDIA                          Q4                   Q1                1.0133924   0.8251592    1.2445648
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q1                1.0000000   1.0000000    1.0000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q1                0.8635652   0.4609567    1.6178196
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q1                0.8475023   0.4633211    1.5502429
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q1                0.7336881   0.3543950    1.5189218
0-6 months    ki1000109-EE               PAKISTAN                       Q1                   Q1                1.0000000   1.0000000    1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       Q2                   Q1                0.8458389   0.5359189    1.3349846
0-6 months    ki1000109-EE               PAKISTAN                       Q3                   Q1                0.7250830   0.4522946    1.1623957
0-6 months    ki1000109-EE               PAKISTAN                       Q4                   Q1                1.1400107   0.6701949    1.9391738
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q1                   Q1                1.0000000   1.0000000    1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q2                   Q1                1.0769000   0.5692964    2.0370999
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q3                   Q1                1.0720479   0.5962699    1.9274604
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q4                   Q1                0.7439373   0.3933782    1.4068972
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q1                1.0000000   1.0000000    1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q1                1.1360099   0.9467235    1.3631419
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q1                0.9599019   0.7704464    1.1959451
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q1                0.9715099   0.7864556    1.2001079
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q1                1.0000000   1.0000000    1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q1                1.0796961   0.9411658    1.2386167
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q1                0.8763029   0.7570716    1.0143120
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q1                1.0036033   0.8740253    1.1523918
0-6 months    ki1114097-CMIN             BANGLADESH                     Q1                   Q1                1.0000000   1.0000000    1.0000000
0-6 months    ki1114097-CMIN             BANGLADESH                     Q2                   Q1                1.0073857   0.5281194    1.9215840
0-6 months    ki1114097-CMIN             BANGLADESH                     Q3                   Q1                0.7926442   0.4367990    1.4383843
0-6 months    ki1114097-CMIN             BANGLADESH                     Q4                   Q1                1.0217450   0.5833954    1.7894602
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q1                   Q1                1.0000000   1.0000000    1.0000000
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q2                   Q1                0.6396551   0.3074527    1.3308015
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q3                   Q1                0.5410430   0.2751419    1.0639147
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q4                   Q1                0.6827176   0.3747791    1.2436746
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q1                1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q1                1.0115247   0.9383449    1.0904117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q1                1.0141399   0.9271651    1.1092736
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q1                1.1283204   1.0109567    1.2593090
6-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   Q1                1.0000000   1.0000000    1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Q2                   Q1                1.0759196   0.5246555    2.2064058
6-24 months   ki0047075b-MAL-ED          INDIA                          Q3                   Q1                1.3045803   0.6551951    2.5975924
6-24 months   ki0047075b-MAL-ED          INDIA                          Q4                   Q1                1.0528539   0.4605697    2.4068048
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q1                1.0000000   1.0000000    1.0000000
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q1                1.0132315   0.6791471    1.5116579
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q1                1.0767105   0.7368043    1.5734241
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q1                1.0058990   0.6584863    1.5366044
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   Q1                1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2                   Q1                3.2562996   1.5879609    6.6774236
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3                   Q1                2.7063997   1.4594720    5.0186640
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4                   Q1                4.6291335   3.0595719    7.0038809
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                   Q1                1.0000000   1.0000000    1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                   Q1                1.7901854   0.8694506    3.6859642
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                   Q1                1.6790718   0.8273968    3.4074125
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                   Q1                2.0345124   1.0049167    4.1189889
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q1                1.0000000   1.0000000    1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q1                2.8282094   0.5792055   13.8098971
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q1                4.8072709   1.0213887   22.6259157
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q1                4.6475948   0.9797468   22.0466528
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q1                1.0000000   1.0000000    1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q1                0.9568726   0.6013456    1.5225940
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q1                1.2939241   0.8422600    1.9877944
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q1                1.1504444   0.7340618    1.8030120
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q1                   Q1                1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q2                   Q1                1.4255617   0.8324585    2.4412343
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q3                   Q1                1.4538085   0.8315507    2.5417079
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q4                   Q1                1.2697592   0.7181261    2.2451329
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q1                   Q1                1.0000000   1.0000000    1.0000000
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q2                   Q1                2.2655210   0.9728045    5.2760712
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q3                   Q1                1.7188555   0.7521214    3.9281750
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q4                   Q1                2.5525459   1.1552290    5.6399992
6-24 months   ki1114097-CMIN             PERU                           Q1                   Q1                1.0000000   1.0000000    1.0000000
6-24 months   ki1114097-CMIN             PERU                           Q2                   Q1                1.8359231   0.7636720    4.4136925
6-24 months   ki1114097-CMIN             PERU                           Q3                   Q1                2.7463624   1.2106564    6.2300965
6-24 months   ki1114097-CMIN             PERU                           Q4                   Q1                2.9203049   1.3203992    6.4587900
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q1                1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q1                0.9559357   0.8392156    1.0888895
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q1                1.0893730   0.9428819    1.2586238
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q1                1.2422159   1.0374640    1.4873773


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                -0.0279476   -0.0861566    0.0302615
0-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   NA                -0.0899912   -0.1717728   -0.0082095
0-24 months   ki0047075b-MAL-ED          PERU                           Q1                   NA                -0.2312610   -0.2894421   -0.1730798
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.0338230   -0.1462525    0.0786066
0-24 months   ki1000109-ResPak           PAKISTAN                       Q1                   NA                 0.1803809    0.0188216    0.3419403
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   NA                 0.2738464    0.1356132    0.4120795
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                 0.2318094    0.1328214    0.3307973
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                 0.2309419    0.1790904    0.2827934
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                 0.0908970    0.0540636    0.1277304
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q1                   NA                 0.0622987   -0.0725138    0.1971111
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q1                   NA                 0.0023570   -0.1659304    0.1706443
0-24 months   ki1114097-CMIN             BANGLADESH                     Q1                   NA                 0.2257468    0.0211803    0.4303134
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q1                   NA                -0.0233725   -0.1182153    0.0714704
0-24 months   ki1114097-CMIN             PERU                           Q1                   NA                 0.1027000    0.0329654    0.1724347
0-24 months   ki1114097-CONTENT          PERU                           Q1                   NA                -0.0381779   -0.2175856    0.1412299
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                 0.0079670   -0.0110947    0.0270287
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                -0.4082279   -0.4434426   -0.3730132
0-6 months    ki0047075b-MAL-ED          INDIA                          Q1                   NA                -0.0016001   -0.0193427    0.0161426
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.0297189   -0.1200772    0.0606394
0-6 months    ki1000109-EE               PAKISTAN                       Q1                   NA                -0.0119523   -0.0373652    0.0134606
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                -0.0066196   -0.0861224    0.0728832
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                 0.0045954   -0.0087844    0.0179753
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                 0.0105945   -0.0006270    0.0218159
0-6 months    ki1114097-CMIN             BANGLADESH                     Q1                   NA                -0.0090271   -0.2177718    0.1997176
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q1                   NA                -0.0655414   -0.1690553    0.0379725
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                 0.0048978   -0.0071767    0.0169722
6-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   NA                 0.0469152   -0.1319999    0.2258302
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                 0.0214082   -0.1743930    0.2172095
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   NA                 0.4354589    0.3686473    0.5022706
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                 0.1981760    0.0288544    0.3674976
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                 0.1917430    0.1176863    0.2657996
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                 0.0424104   -0.0005678    0.0853885
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q1                   NA                 0.0317329   -0.0108371    0.0743029
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q1                   NA                 0.1044043    0.0371771    0.1716316
6-24 months   ki1114097-CMIN             PERU                           Q1                   NA                 0.1037167    0.0480714    0.1593620
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                 0.0069181   -0.0143386    0.0281748


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                -0.0552694   -0.1799772    0.0562584
0-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   NA                -0.1792681   -0.3609829   -0.0218154
0-24 months   ki0047075b-MAL-ED          PERU                           Q1                   NA                -0.5152358   -0.6967750   -0.3531197
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.0486902   -0.2241070    0.1015890
0-24 months   ki1000109-ResPak           PAKISTAN                       Q1                   NA                 0.3518698   -0.0553017    0.6019406
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   NA                 0.3668840    0.1524356    0.5270732
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                 0.4243061    0.2109855    0.5799526
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                 0.6146743    0.4568002    0.7266643
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                 0.2343535    0.1352157    0.3221263
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q1                   NA                 0.1375020   -0.2159676    0.3882216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q1                   NA                 0.0071972   -0.6677914    0.4090043
0-24 months   ki1114097-CMIN             BANGLADESH                     Q1                   NA                 0.2949617   -0.0294422    0.5171375
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q1                   NA                -0.0646901   -0.3624480    0.1679940
0-24 months   ki1114097-CMIN             PERU                           Q1                   NA                 0.3359448    0.0654218    0.5281622
0-24 months   ki1114097-CONTENT          PERU                           Q1                   NA                -0.1675152   -1.2912908    0.4050988
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                 0.0149867   -0.0215915    0.0502553
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                -2.2537580   -3.0580969   -1.6088439
0-6 months    ki0047075b-MAL-ED          INDIA                          Q1                   NA                -0.0095622   -0.1217224    0.0913831
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.1810780   -0.8831525    0.2592500
0-6 months    ki1000109-EE               PAKISTAN                       Q1                   NA                -0.0348456   -0.1116596    0.0366607
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                -0.0422843   -0.6967586    0.3597459
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                 0.0487394   -0.1032852    0.1798161
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                 0.0764819   -0.0068968    0.1529562
0-6 months    ki1114097-CMIN             BANGLADESH                     Q1                   NA                -0.0229404   -0.7188150    0.3912044
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q1                   NA                -0.5204757   -1.6085239    0.1137339
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                 0.0170805   -0.0259867    0.0583399
6-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   NA                 0.1379021   -0.5859333    0.5313720
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                 0.0345115   -0.3387994    0.3037284
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   NA                 0.7749112    0.6734988    0.8448245
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                 0.4403911   -0.0956868    0.7141864
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                 0.8008089    0.1036450    0.9557351
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                 0.2247386   -0.0350093    0.4192997
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q1                   NA                 0.2303194   -0.1551501    0.4871591
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q1                   NA                 0.5486781    0.0239479    0.7913109
6-24 months   ki1114097-CMIN             PERU                           Q1                   NA                 0.5908709    0.1361472    0.8062324
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                 0.0234519   -0.0513740    0.0929525
