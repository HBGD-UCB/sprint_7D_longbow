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

unadjusted

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
![](/tmp/d0248114-effe-4dde-8eea-84e1e01c8718/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d0248114-effe-4dde-8eea-84e1e01c8718/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d0248114-effe-4dde-8eea-84e1e01c8718/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d0248114-effe-4dde-8eea-84e1e01c8718/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                0.4666667   0.2878075   0.6455258
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                0.4807692   0.3447138   0.6168247
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                0.4444444   0.3463772   0.5425117
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                0.6071429   0.5025042   0.7117815
0-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   NA                0.4444444   0.2818011   0.6070877
0-24 months   ki0047075b-MAL-ED          INDIA                          Q2                   NA                0.4556962   0.3456539   0.5657385
0-24 months   ki0047075b-MAL-ED          INDIA                          Q3                   NA                0.5656566   0.4678224   0.6634907
0-24 months   ki0047075b-MAL-ED          INDIA                          Q4                   NA                0.4864865   0.3251155   0.6478575
0-24 months   ki0047075b-MAL-ED          PERU                           Q1                   NA                0.1562500   0.0302392   0.2822608
0-24 months   ki0047075b-MAL-ED          PERU                           Q2                   NA                0.5937500   0.4233030   0.7641970
0-24 months   ki0047075b-MAL-ED          PERU                           Q3                   NA                0.5000000   0.3976608   0.6023392
0-24 months   ki0047075b-MAL-ED          PERU                           Q4                   NA                0.4489796   0.3684409   0.5295183
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                0.6571429   0.4995883   0.8146974
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                0.7000000   0.5924429   0.8075571
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                0.7129630   0.6274821   0.7984439
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                0.6734694   0.5419162   0.8050226
0-24 months   ki1000109-ResPak           PAKISTAN                       Q1                   NA                0.3448276   0.1715217   0.5181334
0-24 months   ki1000109-ResPak           PAKISTAN                       Q2                   NA                0.3809524   0.1728768   0.5890280
0-24 months   ki1000109-ResPak           PAKISTAN                       Q3                   NA                0.5322581   0.4078347   0.6566814
0-24 months   ki1000109-ResPak           PAKISTAN                       Q4                   NA                0.5515152   0.4754923   0.6275380
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   NA                0.7558140   0.6649091   0.8467188
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2                   NA                0.6153846   0.3506058   0.8801634
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3                   NA                0.7837838   0.6509803   0.9165873
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4                   NA                0.7446809   0.6937278   0.7956339
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                0.3000000   0.1925625   0.4074375
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                   NA                0.6279070   0.5444286   0.7113853
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                   NA                0.5689655   0.5051906   0.6327405
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                   NA                0.5538462   0.4840205   0.6236718
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                0.1683168   0.0952970   0.2413366
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                0.3413174   0.2693530   0.4132817
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                0.4335937   0.3728441   0.4943434
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                0.4431818   0.3697389   0.5166247
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                0.3582888   0.2895186   0.4270590
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                0.3593750   0.2914609   0.4272891
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                0.4000000   0.3311945   0.4688055
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                0.4347826   0.3631073   0.5064579
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q1                   NA                0.3142857   0.1602392   0.4683322
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q2                   NA                0.3684211   0.1511703   0.5856718
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q3                   NA                0.3859649   0.2593791   0.5125507
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q4                   NA                0.5050505   0.4352968   0.5748042
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q1                   NA                0.3174061   0.0860878   0.5487245
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q2                   NA                0.3233083   0.2577970   0.3888196
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q3                   NA                0.3249258   0.2628691   0.3869825
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q4                   NA                0.3553299   0.2729723   0.4376876
0-24 months   ki1114097-CMIN             BANGLADESH                     Q1                   NA                0.5294118   0.2917133   0.7671102
0-24 months   ki1114097-CMIN             BANGLADESH                     Q2                   NA                0.8333333   0.7113737   0.9552929
0-24 months   ki1114097-CMIN             BANGLADESH                     Q3                   NA                0.7604167   0.6748801   0.8459533
0-24 months   ki1114097-CMIN             BANGLADESH                     Q4                   NA                0.7812500   0.7095040   0.8529960
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q1                   NA                0.3820225   0.2810435   0.4830014
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q2                   NA                0.3176471   0.2476391   0.3876550
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q3                   NA                0.2743363   0.2268241   0.3218484
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q4                   NA                0.4011364   0.3687424   0.4335303
0-24 months   ki1114097-CMIN             PERU                           Q1                   NA                0.2035398   0.1292637   0.2778160
0-24 months   ki1114097-CMIN             PERU                           Q2                   NA                0.2292994   0.1635069   0.2950919
0-24 months   ki1114097-CMIN             PERU                           Q3                   NA                0.3177570   0.2553415   0.3801725
0-24 months   ki1114097-CMIN             PERU                           Q4                   NA                0.3528090   0.3083880   0.3972300
0-24 months   ki1114097-CONTENT          PERU                           Q1                   NA                0.2941176   0.0770162   0.5112191
0-24 months   ki1114097-CONTENT          PERU                           Q2                   NA                0.2711864   0.1574822   0.3848907
0-24 months   ki1114097-CONTENT          PERU                           Q3                   NA                0.2125000   0.1226496   0.3023504
0-24 months   ki1114097-CONTENT          PERU                           Q4                   NA                0.1864407   0.0868315   0.2860499
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                0.5166240   0.4875636   0.5456845
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                0.5060773   0.4793236   0.5328311
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                0.5655004   0.5345416   0.5964592
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                0.6071429   0.5625745   0.6517112
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                0.2333333   0.0816981   0.3849686
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                0.1923077   0.0849857   0.2996297
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                0.1010101   0.0415383   0.1604819
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                0.2500000   0.1572252   0.3427748
0-6 months    ki0047075b-MAL-ED          INDIA                          Q1                   NA                0.1666667   0.0446842   0.2886491
0-6 months    ki0047075b-MAL-ED          INDIA                          Q2                   NA                0.1518987   0.0725934   0.2312041
0-6 months    ki0047075b-MAL-ED          INDIA                          Q3                   NA                0.1717172   0.0972794   0.2461550
0-6 months    ki0047075b-MAL-ED          INDIA                          Q4                   NA                0.1891892   0.0627383   0.3156401
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                0.2285714   0.0891905   0.3679523
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                0.1571429   0.0717240   0.2425617
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                0.1759259   0.1039786   0.2478733
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                0.1020408   0.0171236   0.1869580
0-6 months    ki1000109-EE               PAKISTAN                       Q1                   NA                0.3594306   0.3032535   0.4156077
0-6 months    ki1000109-EE               PAKISTAN                       Q2                   NA                0.3023256   0.1648735   0.4397777
0-6 months    ki1000109-EE               PAKISTAN                       Q3                   NA                0.2500000   0.1083648   0.3916352
0-6 months    ki1000109-EE               PAKISTAN                       Q4                   NA                0.3684211   0.1512354   0.5856067
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                0.1571429   0.0718190   0.2424667
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q2                   NA                0.1782946   0.1121906   0.2443985
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q3                   NA                0.1767241   0.1276026   0.2258457
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q4                   NA                0.1179487   0.0726411   0.1632564
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                0.0693069   0.0197403   0.1188736
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                0.0658683   0.0282202   0.1035163
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                0.1054688   0.0678159   0.1431216
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                0.1193182   0.0713929   0.1672435
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                0.1550802   0.1031644   0.2069961
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                0.1250000   0.0781895   0.1718105
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                0.1076923   0.0641544   0.1512302
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                0.1684783   0.1143612   0.2225954
0-6 months    ki1114097-CMIN             BANGLADESH                     Q1                   NA                0.4705882   0.2328898   0.7082867
0-6 months    ki1114097-CMIN             BANGLADESH                     Q2                   NA                0.4166667   0.2553293   0.5780040
0-6 months    ki1114097-CMIN             BANGLADESH                     Q3                   NA                0.3333333   0.2388638   0.4278028
0-6 months    ki1114097-CMIN             BANGLADESH                     Q4                   NA                0.4218750   0.3361651   0.5075849
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q1                   NA                0.1914894   0.0789397   0.3040390
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q2                   NA                0.1147541   0.0581674   0.1713408
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q3                   NA                0.1038961   0.0645274   0.1432648
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q4                   NA                0.1321101   0.1036668   0.1605534
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                0.2703724   0.2455957   0.2951491
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                0.2818555   0.2590585   0.3046526
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                0.3024263   0.2716799   0.3331728
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                0.3357143   0.2910888   0.3803398
6-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   NA                0.2631579   0.0646449   0.4616709
6-24 months   ki0047075b-MAL-ED          INDIA                          Q2                   NA                0.3088235   0.1987291   0.4189180
6-24 months   ki0047075b-MAL-ED          INDIA                          Q3                   NA                0.4050633   0.2965323   0.5135942
6-24 months   ki0047075b-MAL-ED          INDIA                          Q4                   NA                0.2857143   0.1179524   0.4534762
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                0.6315789   0.4140978   0.8490601
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                0.6000000   0.4701815   0.7298185
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                0.6533333   0.5453379   0.7613287
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                0.5789474   0.4215461   0.7363487
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   NA                0.5263158   0.3672097   0.6854219
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2                   NA                0.5000000   0.1894146   0.8105854
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3                   NA                0.5714286   0.3593025   0.7835546
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4                   NA                0.5732484   0.4957094   0.6507874
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                0.2500000   0.0765554   0.4234446
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                   NA                0.4505495   0.3482012   0.5528977
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                   NA                0.4244186   0.3504662   0.4983710
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                   NA                0.5187970   0.4337806   0.6038134
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                0.1764706   0.0482016   0.3047396
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                0.1769231   0.1112592   0.2425869
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                0.2623762   0.2016482   0.3231043
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                0.2824427   0.2052737   0.3596118
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                0.1773050   0.1142137   0.2403962
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                0.1607143   0.1051333   0.2162953
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                0.2125000   0.1490629   0.2759371
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                0.2052980   0.1408210   0.2697750
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q1                   NA                0.1008403   0.0525376   0.1491431
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q2                   NA                0.1528190   0.1103786   0.1952594
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q3                   NA                0.1523297   0.1060342   0.1986253
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q4                   NA                0.1356467   0.0925650   0.1787284
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q1                   NA                0.0819673   0.0131007   0.1508338
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q2                   NA                0.1891892   0.1260642   0.2523141
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q3                   NA                0.1433333   0.1036651   0.1830016
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q4                   NA                0.2190083   0.1889122   0.2491043
6-24 months   ki1114097-CMIN             PERU                           Q1                   NA                0.0714286   0.0163172   0.1265399
6-24 months   ki1114097-CMIN             PERU                           Q2                   NA                0.1304348   0.0742077   0.1866618
6-24 months   ki1114097-CMIN             PERU                           Q3                   NA                0.1945946   0.1375094   0.2516798
6-24 months   ki1114097-CMIN             PERU                           Q4                   NA                0.2086957   0.1657859   0.2516054
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                0.2848948   0.2575173   0.3122724
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                0.2745367   0.2489266   0.3001468
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                0.3167899   0.2813523   0.3522274
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                0.3687316   0.3123311   0.4251320


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


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q1                1.0302198   0.6397652   1.6589725
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q1                0.9523810   0.6119912   1.4820956
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q1                1.3010204   0.8546291   1.9805715
0-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   Q1                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Q2                   Q1                1.0253165   0.6613711   1.5895371
0-24 months   ki0047075b-MAL-ED          INDIA                          Q3                   Q1                1.2727273   0.8490824   1.9077474
0-24 months   ki0047075b-MAL-ED          INDIA                          Q4                   Q1                1.0945946   0.6679607   1.7937242
0-24 months   ki0047075b-MAL-ED          PERU                           Q1                   Q1                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           Q2                   Q1                3.7999999   1.6143994   8.9445024
0-24 months   ki0047075b-MAL-ED          PERU                           Q3                   Q1                3.2000000   1.3925180   7.3535856
0-24 months   ki0047075b-MAL-ED          PERU                           Q4                   Q1                2.8734694   1.2577720   6.5646445
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q1                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q1                1.0652174   0.8012448   1.4161566
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q1                1.0849436   0.8298288   1.4184886
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q1                1.0248447   0.7522281   1.3962609
0-24 months   ki1000109-ResPak           PAKISTAN                       Q1                   Q1                1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-ResPak           PAKISTAN                       Q2                   Q1                1.1047619   0.5259157   2.3207120
0-24 months   ki1000109-ResPak           PAKISTAN                       Q3                   Q1                1.5435484   0.8867358   2.6868676
0-24 months   ki1000109-ResPak           PAKISTAN                       Q4                   Q1                1.5993939   0.9497822   2.6933132
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   Q1                1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2                   Q1                0.8142012   0.5208425   1.2727908
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3                   Q1                1.0370062   0.8424432   1.2765037
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4                   Q1                0.9852700   0.8579461   1.1314896
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                   Q1                2.0930233   1.4284698   3.0667407
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                   Q1                1.8965517   1.3031452   2.7601747
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                   Q1                1.8461538   1.2629320   2.6987076
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q1                2.0278267   1.2518453   3.2848156
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q1                2.5760570   1.6329252   4.0639151
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q1                2.6330214   1.6548900   4.1892825
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q1                1.0030317   0.7661851   1.3130935
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q1                1.1164179   0.8627633   1.4446475
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q1                1.2134977   0.9422255   1.5628707
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q1                   Q1                1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q2                   Q1                1.1722488   0.5445111   2.5236715
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q3                   Q1                1.2280702   0.6809196   2.2148816
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q4                   Q1                1.6069789   0.9657224   2.6740408
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q1                   Q1                1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q2                   Q1                1.0185949   0.4935179   2.1023260
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q3                   Q1                1.0236910   0.4832891   2.1683568
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q4                   Q1                1.1194804   0.5183859   2.4175742
0-24 months   ki1114097-CMIN             BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             BANGLADESH                     Q2                   Q1                1.5740741   0.9816023   2.5241478
0-24 months   ki1114097-CMIN             BANGLADESH                     Q3                   Q1                1.4363426   0.9041479   2.2817949
0-24 months   ki1114097-CMIN             BANGLADESH                     Q4                   Q1                1.4756944   0.9331840   2.3335956
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q1                   Q1                1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q2                   Q1                0.8314879   0.5893741   1.1730616
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q3                   Q1                0.7181156   0.5235428   0.9850007
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q4                   Q1                1.0500334   0.7964698   1.3843213
0-24 months   ki1114097-CMIN             PERU                           Q1                   Q1                1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             PERU                           Q2                   Q1                1.1265577   0.7081858   1.7920894
0-24 months   ki1114097-CMIN             PERU                           Q3                   Q1                1.5611540   1.0314823   2.3628150
0-24 months   ki1114097-CMIN             PERU                           Q4                   Q1                1.7333659   1.1782536   2.5500091
0-24 months   ki1114097-CONTENT          PERU                           Q1                   Q1                1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CONTENT          PERU                           Q2                   Q1                0.9220339   0.3945188   2.1548950
0-24 months   ki1114097-CONTENT          PERU                           Q3                   Q1                0.7225000   0.3086005   1.6915276
0-24 months   ki1114097-CONTENT          PERU                           Q4                   Q1                0.6338983   0.2548514   1.5767109
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q1                0.9795854   0.9079967   1.0568182
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q1                1.0946072   1.0112676   1.1848149
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q1                1.1752122   1.0715924   1.2888516
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q1                0.8241758   0.3499461   1.9410585
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q1                0.4329004   0.1801149   1.0404626
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q1                1.0714286   0.5069388   2.2644927
0-6 months    ki0047075b-MAL-ED          INDIA                          Q1                   Q1                1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Q2                   Q1                0.9113924   0.3709048   2.2394861
0-6 months    ki0047075b-MAL-ED          INDIA                          Q3                   Q1                1.0303030   0.4400862   2.4120827
0-6 months    ki0047075b-MAL-ED          INDIA                          Q4                   Q1                1.1351351   0.4212990   3.0584735
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q1                1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q1                0.6875000   0.3037381   1.5561308
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q1                0.7696759   0.3693473   1.6039134
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q1                0.4464286   0.1591090   1.2525905
0-6 months    ki1000109-EE               PAKISTAN                       Q1                   Q1                1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       Q2                   Q1                0.8411236   0.5200759   1.3603573
0-6 months    ki1000109-EE               PAKISTAN                       Q3                   Q1                0.6955446   0.3864454   1.2518772
0-6 months    ki1000109-EE               PAKISTAN                       Q4                   Q1                1.0250130   0.5570135   1.8862230
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q2                   Q1                1.1346018   0.5879013   2.1896895
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q3                   Q1                1.1246082   0.6110688   2.0697235
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q4                   Q1                0.7505828   0.3859621   1.4596628
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q1                0.9503849   0.3804498   2.3741148
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q1                1.5217634   0.6842305   3.3844793
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q1                1.7215909   0.7580551   3.9098416
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q1                0.8060345   0.4877604   1.3319893
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q1                0.6944297   0.4108379   1.1737783
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q1                1.0863943   0.6831219   1.7277334
0-6 months    ki1114097-CMIN             BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CMIN             BANGLADESH                     Q2                   Q1                0.8854167   0.4685346   1.6732226
0-6 months    ki1114097-CMIN             BANGLADESH                     Q3                   Q1                0.7083333   0.3969179   1.2640803
0-6 months    ki1114097-CMIN             BANGLADESH                     Q4                   Q1                0.8964844   0.5201122   1.5452133
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q1                   Q1                1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q2                   Q1                0.5992714   0.2782439   1.2906884
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q3                   Q1                0.5425685   0.2696157   1.0918528
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q4                   Q1                0.6899083   0.3689301   1.2901453
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q1                1.0424717   0.9220625   1.1786048
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q1                1.1185549   0.9721525   1.2870050
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q1                1.2416738   1.0583824   1.4567078
6-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   Q1                1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Q2                   Q1                1.1735294   0.5094978   2.7029977
6-24 months   ki0047075b-MAL-ED          INDIA                          Q3                   Q1                1.5392405   0.6912657   3.4274251
6-24 months   ki0047075b-MAL-ED          INDIA                          Q4                   Q1                1.0857143   0.4174065   2.8240467
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q1                1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q1                0.9500000   0.6325656   1.4267296
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q1                1.0344444   0.7060278   1.5156277
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q1                0.9166667   0.5911132   1.4215176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   Q1                1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2                   Q1                0.9500000   0.4761042   1.8955934
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3                   Q1                1.0857143   0.6726697   1.7523839
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4                   Q1                1.0891720   0.7821058   1.5167969
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                   Q1                1.8021978   0.8684766   3.7397865
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                   Q1                1.6976744   0.8302194   3.4714902
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                   Q1                2.0751880   1.0173310   4.2330422
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q1                1.0025641   0.4432728   2.2675311
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q1                1.4867987   0.6933683   3.1881616
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q1                1.6005089   0.7362462   3.4793099
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q1                0.9064286   0.5518659   1.4887906
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q1                1.1985000   0.7532154   1.9070273
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q1                1.1578808   0.7203492   1.8611638
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q1                   Q1                1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q2                   Q1                1.5154550   0.8852610   2.5942674
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q3                   Q1                1.5106033   0.8585311   2.6579381
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q4                   Q1                1.3451630   0.7704757   2.3485015
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q1                   Q1                1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q2                   Q1                2.3081070   0.9346595   5.6997845
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q3                   Q1                1.7486658   0.7220025   4.2352097
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q4                   Q1                2.6718995   1.1404857   6.2596552
6-24 months   ki1114097-CMIN             PERU                           Q1                   Q1                1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN             PERU                           Q2                   Q1                1.8260870   0.7545460   4.4193376
6-24 months   ki1114097-CMIN             PERU                           Q3                   Q1                2.7243243   1.1933626   6.2193527
6-24 months   ki1114097-CMIN             PERU                           Q4                   Q1                2.9217391   1.3148125   6.4926061
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q1                0.9636423   0.8427802   1.1018371
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q1                1.1119537   0.9592211   1.2890052
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q1                1.2942725   1.0797579   1.5514047


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                 0.0389937   -0.1294840   0.2074714
0-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   NA                 0.0575476   -0.0931381   0.2082333
0-24 months   ki0047075b-MAL-ED          PERU                           Q1                   NA                 0.2925949    0.1674089   0.4177809
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                 0.0375136   -0.1084764   0.1835037
0-24 months   ki1000109-ResPak           PAKISTAN                       Q1                   NA                 0.1678078    0.0028127   0.3328029
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   NA                -0.0094025   -0.0906859   0.0718810
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                 0.2463259    0.1439308   0.3487209
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                 0.2073975    0.1361073   0.2786876
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                 0.0295740   -0.0304318   0.0895799
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q1                   NA                 0.1387887   -0.0076528   0.2852303
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q1                   NA                 0.0100816   -0.1664349   0.1865981
0-24 months   ki1114097-CMIN             BANGLADESH                     Q1                   NA                 0.2359312    0.0077534   0.4641090
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q1                   NA                -0.0207234   -0.1185442   0.0770973
0-24 months   ki1114097-CMIN             PERU                           Q1                   NA                 0.1021652    0.0310777   0.1732528
0-24 months   ki1114097-CONTENT          PERU                           Q1                   NA                -0.0662107   -0.2731844   0.1407631
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                 0.0149820   -0.0070467   0.0370107
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                -0.0522013   -0.1934297   0.0890272
0-6 months    ki0047075b-MAL-ED          INDIA                          Q1                   NA                 0.0006640   -0.1122624   0.1135904
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.0644493   -0.1919473   0.0630487
0-6 months    ki1000109-EE               PAKISTAN                       Q1                   NA                -0.0164227   -0.0441060   0.0112606
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                -0.0005933   -0.0809898   0.0798031
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                 0.0249788   -0.0221082   0.0720657
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                -0.0165578   -0.0609535   0.0278379
0-6 months    ki1114097-CMIN             BANGLADESH                     Q1                   NA                -0.0770864   -0.3070586   0.1528857
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q1                   NA                -0.0655634   -0.1744455   0.0433186
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                 0.0163723   -0.0030606   0.0358051
6-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   NA                 0.0770483   -0.1130995   0.2671961
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.0112581   -0.2175369   0.1950207
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   NA                 0.0356311   -0.1092985   0.1805608
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                 0.2000000    0.0299586   0.3700414
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                 0.0629660   -0.0619829   0.1879149
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                 0.0114047   -0.0444534   0.0672628
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q1                   NA                 0.0369374   -0.0040784   0.0779533
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q1                   NA                 0.1083161    0.0393688   0.1772635
6-24 months   ki1114097-CMIN             PERU                           Q1                   NA                 0.1041033    0.0484348   0.1597719
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                 0.0100959   -0.0116241   0.0318159


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                 0.0771144   -0.3243154   0.3568619
0-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   NA                 0.1146384   -0.2430640   0.3694089
0-24 months   ki0047075b-MAL-ED          PERU                           Q1                   NA                 0.6518842    0.2358338   0.8414159
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                 0.0540031   -0.1815173   0.2425756
0-24 months   ki1000109-ResPak           PAKISTAN                       Q1                   NA                 0.3273434   -0.0868925   0.5837059
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   NA                -0.0125969   -0.1275799   0.0906609
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                 0.4508772    0.2262406   0.6102976
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                 0.5520084    0.3209384   0.7044503
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                 0.0762487   -0.0922004   0.2187180
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q1                   NA                 0.3063265   -0.1059078   0.5648978
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q1                   NA                 0.0307847   -0.6985707   0.4469596
0-24 months   ki1114097-CMIN             BANGLADESH                     Q1                   NA                 0.3082686   -0.0681032   0.5520168
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q1                   NA                -0.0573581   -0.3659345   0.1815083
0-24 months   ki1114097-CMIN             PERU                           Q1                   NA                 0.3341954    0.0572071   0.5298058
0-24 months   ki1114097-CONTENT          PERU                           Q1                   NA                -0.2905162   -1.6070818   0.3611892
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                 0.0281825   -0.0142832   0.0688702
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                -0.2881944   -1.3568722   0.2959122
0-6 months    ki0047075b-MAL-ED          INDIA                          Q1                   NA                 0.0039683   -0.9612496   0.4941596
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.3926910   -1.4269029   0.2007969
0-6 months    ki1000109-EE               PAKISTAN                       Q1                   NA                -0.0478785   -0.1318035   0.0298234
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                -0.0037901   -0.6743017   0.3982001
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                 0.2649265   -0.4438667   0.6257736
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                -0.1195314   -0.4900109   0.1588312
0-6 months    ki1114097-CMIN             BANGLADESH                     Q1                   NA                -0.1958985   -0.9501640   0.2666395
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q1                   NA                -0.5206508   -1.6807759   0.1374218
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                 0.0570970   -0.0134780   0.1227574
6-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   NA                 0.2264753   -0.5924928   0.6242743
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.0181488   -0.4114372   0.2655522
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   NA                 0.0634065   -0.2336974   0.2889608
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                 0.4444444   -0.0962547   0.7184578
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                 0.2629758   -0.4943970   0.6365058
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                 0.0604352   -0.2873717   0.3142758
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Q1                   NA                 0.2680943   -0.1010584   0.5134809
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q1                   NA                 0.5692359    0.0120035   0.8121879
6-24 months   ki1114097-CMIN             PERU                           Q1                   NA                 0.5930736    0.1369807   0.8081282
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                 0.0342244   -0.0423401   0.1051650
