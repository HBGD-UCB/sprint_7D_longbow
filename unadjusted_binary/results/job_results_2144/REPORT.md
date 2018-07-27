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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        perdiar24    stunted   n_cell      n
----------  -------------------------  -----------------------------  ----------  --------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q1                 0       23    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q1                 1        7    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q2                 0       41    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q2                 1       10    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q3                 0       85    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q3                 1       10    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q4                 0       61    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q4                 1       20    257
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                 0        9    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                 1        5    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                 0       41    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                 1        8    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                 0       82    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                 1       14    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                 0       64    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                 1       18    241
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                 0        7    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                 1        7    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                 0       27    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                 1       15    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                 0       47    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                 1       41    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                 0       33    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                 1       35    212
Birth       ki0047075b-MAL-ED          BRAZIL                         Q1                 0      111    191
Birth       ki0047075b-MAL-ED          BRAZIL                         Q1                 1       12    191
Birth       ki0047075b-MAL-ED          BRAZIL                         Q2                 0       45    191
Birth       ki0047075b-MAL-ED          BRAZIL                         Q2                 1        8    191
Birth       ki0047075b-MAL-ED          BRAZIL                         Q3                 0       13    191
Birth       ki0047075b-MAL-ED          BRAZIL                         Q3                 1        1    191
Birth       ki0047075b-MAL-ED          BRAZIL                         Q4                 0        1    191
Birth       ki0047075b-MAL-ED          BRAZIL                         Q4                 1        0    191
6 months    ki0047075b-MAL-ED          BRAZIL                         Q1                 0      121    209
6 months    ki0047075b-MAL-ED          BRAZIL                         Q1                 1        3    209
6 months    ki0047075b-MAL-ED          BRAZIL                         Q2                 0       67    209
6 months    ki0047075b-MAL-ED          BRAZIL                         Q2                 1        3    209
6 months    ki0047075b-MAL-ED          BRAZIL                         Q3                 0       14    209
6 months    ki0047075b-MAL-ED          BRAZIL                         Q3                 1        0    209
6 months    ki0047075b-MAL-ED          BRAZIL                         Q4                 0        1    209
6 months    ki0047075b-MAL-ED          BRAZIL                         Q4                 1        0    209
24 months   ki0047075b-MAL-ED          BRAZIL                         Q1                 0       91    169
24 months   ki0047075b-MAL-ED          BRAZIL                         Q1                 1        2    169
24 months   ki0047075b-MAL-ED          BRAZIL                         Q2                 0       58    169
24 months   ki0047075b-MAL-ED          BRAZIL                         Q2                 1        4    169
24 months   ki0047075b-MAL-ED          BRAZIL                         Q3                 0       13    169
24 months   ki0047075b-MAL-ED          BRAZIL                         Q3                 1        0    169
24 months   ki0047075b-MAL-ED          BRAZIL                         Q4                 0        1    169
24 months   ki0047075b-MAL-ED          BRAZIL                         Q4                 1        0    169
Birth       ki0047075b-MAL-ED          INDIA                          Q1                 0       26    206
Birth       ki0047075b-MAL-ED          INDIA                          Q1                 1        5    206
Birth       ki0047075b-MAL-ED          INDIA                          Q2                 0       57    206
Birth       ki0047075b-MAL-ED          INDIA                          Q2                 1       10    206
Birth       ki0047075b-MAL-ED          INDIA                          Q3                 0       62    206
Birth       ki0047075b-MAL-ED          INDIA                          Q3                 1       13    206
Birth       ki0047075b-MAL-ED          INDIA                          Q4                 0       28    206
Birth       ki0047075b-MAL-ED          INDIA                          Q4                 1        5    206
6 months    ki0047075b-MAL-ED          INDIA                          Q1                 0       20    236
6 months    ki0047075b-MAL-ED          INDIA                          Q1                 1        5    236
6 months    ki0047075b-MAL-ED          INDIA                          Q2                 0       68    236
6 months    ki0047075b-MAL-ED          INDIA                          Q2                 1       10    236
6 months    ki0047075b-MAL-ED          INDIA                          Q3                 0       77    236
6 months    ki0047075b-MAL-ED          INDIA                          Q3                 1       21    236
6 months    ki0047075b-MAL-ED          INDIA                          Q4                 0       25    236
6 months    ki0047075b-MAL-ED          INDIA                          Q4                 1       10    236
24 months   ki0047075b-MAL-ED          INDIA                          Q1                 0       14    227
24 months   ki0047075b-MAL-ED          INDIA                          Q1                 1        9    227
24 months   ki0047075b-MAL-ED          INDIA                          Q2                 0       41    227
24 months   ki0047075b-MAL-ED          INDIA                          Q2                 1       34    227
24 months   ki0047075b-MAL-ED          INDIA                          Q3                 0       56    227
24 months   ki0047075b-MAL-ED          INDIA                          Q3                 1       39    227
24 months   ki0047075b-MAL-ED          INDIA                          Q4                 0       21    227
24 months   ki0047075b-MAL-ED          INDIA                          Q4                 1       13    227
6 months    ki0047075b-MAL-ED          NEPAL                          Q1                 0       24    236
6 months    ki0047075b-MAL-ED          NEPAL                          Q1                 1        1    236
6 months    ki0047075b-MAL-ED          NEPAL                          Q2                 0       65    236
6 months    ki0047075b-MAL-ED          NEPAL                          Q2                 1        1    236
6 months    ki0047075b-MAL-ED          NEPAL                          Q3                 0       69    236
6 months    ki0047075b-MAL-ED          NEPAL                          Q3                 1        5    236
6 months    ki0047075b-MAL-ED          NEPAL                          Q4                 0       66    236
6 months    ki0047075b-MAL-ED          NEPAL                          Q4                 1        5    236
24 months   ki0047075b-MAL-ED          NEPAL                          Q1                 0       21    228
24 months   ki0047075b-MAL-ED          NEPAL                          Q1                 1        2    228
24 months   ki0047075b-MAL-ED          NEPAL                          Q2                 0       55    228
24 months   ki0047075b-MAL-ED          NEPAL                          Q2                 1       11    228
24 months   ki0047075b-MAL-ED          NEPAL                          Q3                 0       50    228
24 months   ki0047075b-MAL-ED          NEPAL                          Q3                 1       20    228
24 months   ki0047075b-MAL-ED          NEPAL                          Q4                 0       53    228
24 months   ki0047075b-MAL-ED          NEPAL                          Q4                 1       16    228
Birth       ki0047075b-MAL-ED          NEPAL                          Q1                 0       19    173
Birth       ki0047075b-MAL-ED          NEPAL                          Q1                 1        2    173
Birth       ki0047075b-MAL-ED          NEPAL                          Q2                 0       44    173
Birth       ki0047075b-MAL-ED          NEPAL                          Q2                 1        4    173
Birth       ki0047075b-MAL-ED          NEPAL                          Q3                 0       51    173
Birth       ki0047075b-MAL-ED          NEPAL                          Q3                 1        4    173
Birth       ki0047075b-MAL-ED          NEPAL                          Q4                 0       41    173
Birth       ki0047075b-MAL-ED          NEPAL                          Q4                 1        8    173
Birth       ki0047075b-MAL-ED          PERU                           Q1                 0       28    287
Birth       ki0047075b-MAL-ED          PERU                           Q1                 1        2    287
Birth       ki0047075b-MAL-ED          PERU                           Q2                 0       23    287
Birth       ki0047075b-MAL-ED          PERU                           Q2                 1        6    287
Birth       ki0047075b-MAL-ED          PERU                           Q3                 0       79    287
Birth       ki0047075b-MAL-ED          PERU                           Q3                 1       12    287
Birth       ki0047075b-MAL-ED          PERU                           Q4                 0      123    287
Birth       ki0047075b-MAL-ED          PERU                           Q4                 1       14    287
6 months    ki0047075b-MAL-ED          PERU                           Q1                 0        8    273
6 months    ki0047075b-MAL-ED          PERU                           Q1                 1        2    273
6 months    ki0047075b-MAL-ED          PERU                           Q2                 0       23    273
6 months    ki0047075b-MAL-ED          PERU                           Q2                 1        7    273
6 months    ki0047075b-MAL-ED          PERU                           Q3                 0       71    273
6 months    ki0047075b-MAL-ED          PERU                           Q3                 1       19    273
6 months    ki0047075b-MAL-ED          PERU                           Q4                 0      111    273
6 months    ki0047075b-MAL-ED          PERU                           Q4                 1       32    273
24 months   ki0047075b-MAL-ED          PERU                           Q1                 0        1    201
24 months   ki0047075b-MAL-ED          PERU                           Q1                 1        1    201
24 months   ki0047075b-MAL-ED          PERU                           Q2                 0        7    201
24 months   ki0047075b-MAL-ED          PERU                           Q2                 1       14    201
24 months   ki0047075b-MAL-ED          PERU                           Q3                 0       51    201
24 months   ki0047075b-MAL-ED          PERU                           Q3                 1       23    201
24 months   ki0047075b-MAL-ED          PERU                           Q4                 0       68    201
24 months   ki0047075b-MAL-ED          PERU                           Q4                 1       36    201
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                 0      140    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                 1       13    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                 0       64    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                 1       12    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                 0       19    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                 1        2    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                 0        2    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                 1        0    252
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                 0      115    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                 1       29    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                 0       69    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                 1       18    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                 0       18    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                 1        3    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                 0        2    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                 1        0    254
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                 0       90    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                 1       44    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                 0       53    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                 1       30    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                 0       10    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                 1       10    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                 0        1    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                 1        0    238
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                 0       14    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                 1        4    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                 0       33    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                 1        5    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                 0       39    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                 1        8    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                 0       19    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                 1        1    123
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                 0       17    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                 1       10    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                 0       52    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                 1       17    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                 0       78    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                 1       24    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                 0       42    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                 1        7    247
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                 0        5    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                 1       19    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                 0       18    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                 1       42    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                 0       26    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                 1       64    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                 0       12    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                 1       28    214
6 months    ki1000109-EE               PAKISTAN                       Q1                 0      131    372
6 months    ki1000109-EE               PAKISTAN                       Q1                 1      144    372
6 months    ki1000109-EE               PAKISTAN                       Q2                 0       21    372
6 months    ki1000109-EE               PAKISTAN                       Q2                 1       21    372
6 months    ki1000109-EE               PAKISTAN                       Q3                 0       18    372
6 months    ki1000109-EE               PAKISTAN                       Q3                 1       18    372
6 months    ki1000109-EE               PAKISTAN                       Q4                 0        9    372
6 months    ki1000109-EE               PAKISTAN                       Q4                 1       10    372
Birth       ki1000109-EE               PAKISTAN                       Q2                 0        1      2
Birth       ki1000109-EE               PAKISTAN                       Q2                 1        0      2
Birth       ki1000109-EE               PAKISTAN                       Q3                 0        0      2
Birth       ki1000109-EE               PAKISTAN                       Q3                 1        1      2
Birth       ki1000109-ResPak           PAKISTAN                       Q3                 0        0      6
Birth       ki1000109-ResPak           PAKISTAN                       Q3                 1        2      6
Birth       ki1000109-ResPak           PAKISTAN                       Q4                 0        4      6
Birth       ki1000109-ResPak           PAKISTAN                       Q4                 1        0      6
6 months    ki1000109-ResPak           PAKISTAN                       Q1                 0        9    235
6 months    ki1000109-ResPak           PAKISTAN                       Q1                 1        5    235
6 months    ki1000109-ResPak           PAKISTAN                       Q2                 0       14    235
6 months    ki1000109-ResPak           PAKISTAN                       Q2                 1        3    235
6 months    ki1000109-ResPak           PAKISTAN                       Q3                 0       29    235
6 months    ki1000109-ResPak           PAKISTAN                       Q3                 1       26    235
6 months    ki1000109-ResPak           PAKISTAN                       Q4                 0      100    235
6 months    ki1000109-ResPak           PAKISTAN                       Q4                 1       49    235
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1                 0       39    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1                 1       36    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2                 0        9    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2                 1        3    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3                 0       21    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3                 1       15    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4                 0      148    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4                 1      109    380
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q1                 0       22    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q1                 1        8    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q2                 0       87    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q2                 1       37    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q3                 0      161    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q3                 1       57    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q4                 0      123    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q4                 1       42    537
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                 0       14    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                 1        3    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                 0       43    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                 1       58    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                 0       86    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                 1       96    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                 0       48    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                 1       81    429
Birth       ki1017093-NIH-Birth        BANGLADESH                     Q1                 0        4     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     Q1                 1        0     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     Q2                 0        1     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     Q2                 1        0     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     Q3                 0        7     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     Q3                 1        1     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     Q4                 0       13     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     Q4                 1        0     26
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                 0       37    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                 1        6    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                 0      130    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                 1       25    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                 0      197    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                 1       40    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                 0      125    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                 1       23    583
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                 0       27    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                 1       12    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                 0      104    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                 1       46    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                 0      157    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                 1       80    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                 0       99    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                 1       52    577
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q1                 0        4     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q1                 1        2     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q2                 0        6     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q2                 1        0     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q3                 0        4     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q3                 1        1     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q4                 0        8     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q4                 1        2     27
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                 0      136    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                 1       32    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                 0      150    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                 1       35    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                 0      148    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                 1       42    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                 0      131    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                 1       41    715
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                 0      115    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                 1       37    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                 0      118    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                 1       28    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                 0       83    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                 1       36    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                 0       66    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                 1       31    514
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q1                 0       23    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q1                 1        8    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q2                 0       13    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q2                 1        6    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q3                 0       43    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q3                 1       13    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q4                 0      130    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q4                 1       63    299
6 months    ki1114097-CMIN             BANGLADESH                     Q1                 0        2    243
6 months    ki1114097-CMIN             BANGLADESH                     Q1                 1        1    243
6 months    ki1114097-CMIN             BANGLADESH                     Q2                 0       18    243
6 months    ki1114097-CMIN             BANGLADESH                     Q2                 1       14    243
6 months    ki1114097-CMIN             BANGLADESH                     Q3                 0       56    243
6 months    ki1114097-CMIN             BANGLADESH                     Q3                 1       35    243
6 months    ki1114097-CMIN             BANGLADESH                     Q4                 0       74    243
6 months    ki1114097-CMIN             BANGLADESH                     Q4                 1       43    243
24 months   ki1114097-CMIN             BANGLADESH                     Q1                 0        2    242
24 months   ki1114097-CMIN             BANGLADESH                     Q1                 1        2    242
24 months   ki1114097-CMIN             BANGLADESH                     Q2                 0       12    242
24 months   ki1114097-CMIN             BANGLADESH                     Q2                 1       20    242
24 months   ki1114097-CMIN             BANGLADESH                     Q3                 0       30    242
24 months   ki1114097-CMIN             BANGLADESH                     Q3                 1       63    242
24 months   ki1114097-CMIN             BANGLADESH                     Q4                 0       33    242
24 months   ki1114097-CMIN             BANGLADESH                     Q4                 1       80    242
Birth       ki1114097-CMIN             BANGLADESH                     Q1                 0        6     13
Birth       ki1114097-CMIN             BANGLADESH                     Q1                 1        5     13
Birth       ki1114097-CMIN             BANGLADESH                     Q4                 0        1     13
Birth       ki1114097-CMIN             BANGLADESH                     Q4                 1        1     13
Birth       ki1114097-CMIN             BRAZIL                         Q1                 0        8    115
Birth       ki1114097-CMIN             BRAZIL                         Q1                 1        1    115
Birth       ki1114097-CMIN             BRAZIL                         Q2                 0       25    115
Birth       ki1114097-CMIN             BRAZIL                         Q2                 1        1    115
Birth       ki1114097-CMIN             BRAZIL                         Q3                 0       36    115
Birth       ki1114097-CMIN             BRAZIL                         Q3                 1        2    115
Birth       ki1114097-CMIN             BRAZIL                         Q4                 0       41    115
Birth       ki1114097-CMIN             BRAZIL                         Q4                 1        1    115
6 months    ki1114097-CMIN             BRAZIL                         Q1                 0        8    108
6 months    ki1114097-CMIN             BRAZIL                         Q1                 1        0    108
6 months    ki1114097-CMIN             BRAZIL                         Q2                 0       24    108
6 months    ki1114097-CMIN             BRAZIL                         Q2                 1        0    108
6 months    ki1114097-CMIN             BRAZIL                         Q3                 0       33    108
6 months    ki1114097-CMIN             BRAZIL                         Q3                 1        2    108
6 months    ki1114097-CMIN             BRAZIL                         Q4                 0       33    108
6 months    ki1114097-CMIN             BRAZIL                         Q4                 1        8    108
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q1                 0       25    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q1                 1       16    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q2                 0       46    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q2                 1       17    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q3                 0       90    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q3                 1       32    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q4                 0      191    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q4                 1      121    538
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q1                 0       39    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q1                 1        4    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q2                 0      108    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q2                 1        3    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q3                 0      205    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q3                 1       19    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q4                 0      404    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Q4                 1       47    829
6 months    ki1114097-CMIN             PERU                           Q1                 0       66    637
6 months    ki1114097-CMIN             PERU                           Q1                 1        5    637
6 months    ki1114097-CMIN             PERU                           Q2                 0      115    637
6 months    ki1114097-CMIN             PERU                           Q2                 1        6    637
6 months    ki1114097-CMIN             PERU                           Q3                 0      151    637
6 months    ki1114097-CMIN             PERU                           Q3                 1        9    637
6 months    ki1114097-CMIN             PERU                           Q4                 0      262    637
6 months    ki1114097-CMIN             PERU                           Q4                 1       23    637
24 months   ki1114097-CMIN             PERU                           Q1                 0       38    426
24 months   ki1114097-CMIN             PERU                           Q1                 1       16    426
24 months   ki1114097-CMIN             PERU                           Q2                 0       67    426
24 months   ki1114097-CMIN             PERU                           Q2                 1       20    426
24 months   ki1114097-CMIN             PERU                           Q3                 0       73    426
24 months   ki1114097-CMIN             PERU                           Q3                 1       29    426
24 months   ki1114097-CMIN             PERU                           Q4                 0      112    426
24 months   ki1114097-CMIN             PERU                           Q4                 1       71    426
Birth       ki1114097-CMIN             PERU                           Q1                 0        2     10
Birth       ki1114097-CMIN             PERU                           Q2                 0        3     10
Birth       ki1114097-CMIN             PERU                           Q3                 0        4     10
Birth       ki1114097-CMIN             PERU                           Q4                 0        1     10
6 months    ki1114097-CONTENT          PERU                           Q1                 0       13    215
6 months    ki1114097-CONTENT          PERU                           Q1                 1        4    215
6 months    ki1114097-CONTENT          PERU                           Q2                 0       52    215
6 months    ki1114097-CONTENT          PERU                           Q2                 1        7    215
6 months    ki1114097-CONTENT          PERU                           Q3                 0       74    215
6 months    ki1114097-CONTENT          PERU                           Q3                 1        6    215
6 months    ki1114097-CONTENT          PERU                           Q4                 0       57    215
6 months    ki1114097-CONTENT          PERU                           Q4                 1        2    215
24 months   ki1114097-CONTENT          PERU                           Q1                 0       11    164
24 months   ki1114097-CONTENT          PERU                           Q1                 1        2    164
24 months   ki1114097-CONTENT          PERU                           Q2                 0       38    164
24 months   ki1114097-CONTENT          PERU                           Q2                 1        4    164
24 months   ki1114097-CONTENT          PERU                           Q3                 0       53    164
24 months   ki1114097-CONTENT          PERU                           Q3                 1       10    164
24 months   ki1114097-CONTENT          PERU                           Q4                 0       41    164
24 months   ki1114097-CONTENT          PERU                           Q4                 1        5    164
Birth       ki1114097-CONTENT          PERU                           Q3                 0        1      2
Birth       ki1114097-CONTENT          PERU                           Q4                 0        1      2
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                 0     1075   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                 1      631   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                 0     1014   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                 1      580   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                 0      604   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                 1      475   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                 0      195   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                 1      178   4752
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                 0     1335   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                 1      410   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                 0     1208   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                 1      393   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                 0      798   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                 1      302   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                 0      270   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                 1      115   4831
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q1                 0      212    822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q1                 1       79    822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q2                 0      188    822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q2                 1       89    822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q3                 0      129    822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q3                 1       59    822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q4                 0       46    822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q4                 1       20    822


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/22806686-c9a3-44e5-9445-ffff72c02bb1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/22806686-c9a3-44e5-9445-ffff72c02bb1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/22806686-c9a3-44e5-9445-ffff72c02bb1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/22806686-c9a3-44e5-9445-ffff72c02bb1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     Q1                   NA                0.2333333   0.0816892   0.3849775
Birth       ki0047075b-MAL-ED         BANGLADESH                     Q2                   NA                0.1960784   0.0869014   0.3052555
Birth       ki0047075b-MAL-ED         BANGLADESH                     Q3                   NA                0.1052632   0.0434304   0.1670959
Birth       ki0047075b-MAL-ED         BANGLADESH                     Q4                   NA                0.2469136   0.1528228   0.3410044
Birth       ki0047075b-MAL-ED         INDIA                          Q1                   NA                0.1612903   0.0315025   0.2910781
Birth       ki0047075b-MAL-ED         INDIA                          Q2                   NA                0.1492537   0.0637215   0.2347860
Birth       ki0047075b-MAL-ED         INDIA                          Q3                   NA                0.1733333   0.0874556   0.2592110
Birth       ki0047075b-MAL-ED         INDIA                          Q4                   NA                0.1515152   0.0288848   0.2741455
Birth       kiGH5241-JiVitA-4         BANGLADESH                     Q1                   NA                0.2714777   0.2106226   0.3323328
Birth       kiGH5241-JiVitA-4         BANGLADESH                     Q2                   NA                0.3212996   0.2620441   0.3805552
Birth       kiGH5241-JiVitA-4         BANGLADESH                     Q3                   NA                0.3138298   0.2384889   0.3891706
Birth       kiGH5241-JiVitA-4         BANGLADESH                     Q4                   NA                0.3030303   0.1943482   0.4117124
6 months    ki0047075b-MAL-ED         BANGLADESH                     Q1                   NA                0.3571429   0.1056271   0.6086586
6 months    ki0047075b-MAL-ED         BANGLADESH                     Q2                   NA                0.1632653   0.0595617   0.2669689
6 months    ki0047075b-MAL-ED         BANGLADESH                     Q3                   NA                0.1458333   0.0750852   0.2165815
6 months    ki0047075b-MAL-ED         BANGLADESH                     Q4                   NA                0.2195122   0.1297370   0.3092874
6 months    ki0047075b-MAL-ED         INDIA                          Q1                   NA                0.2000000   0.0428696   0.3571304
6 months    ki0047075b-MAL-ED         INDIA                          Q2                   NA                0.1282051   0.0538548   0.2025554
6 months    ki0047075b-MAL-ED         INDIA                          Q3                   NA                0.2142857   0.1328742   0.2956973
6 months    ki0047075b-MAL-ED         INDIA                          Q4                   NA                0.2857143   0.1357326   0.4356959
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q1                   NA                0.3703704   0.1878515   0.5528893
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q2                   NA                0.2463768   0.1444986   0.3482551
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q3                   NA                0.2352941   0.1528078   0.3177804
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q4                   NA                0.1428571   0.0446804   0.2410339
6 months    ki1000109-EE              PAKISTAN                       Q1                   NA                0.5236364   0.4645278   0.5827449
6 months    ki1000109-EE              PAKISTAN                       Q2                   NA                0.5000000   0.3485818   0.6514182
6 months    ki1000109-EE              PAKISTAN                       Q3                   NA                0.5000000   0.3364497   0.6635503
6 months    ki1000109-EE              PAKISTAN                       Q4                   NA                0.5263158   0.3015017   0.7511298
6 months    ki1017093-NIH-Birth       BANGLADESH                     Q1                   NA                0.2666667   0.1082768   0.4250565
6 months    ki1017093-NIH-Birth       BANGLADESH                     Q2                   NA                0.2983871   0.2177786   0.3789956
6 months    ki1017093-NIH-Birth       BANGLADESH                     Q3                   NA                0.2614679   0.2030806   0.3198552
6 months    ki1017093-NIH-Birth       BANGLADESH                     Q4                   NA                0.2545455   0.1880175   0.3210734
6 months    ki1017093b-PROVIDE        BANGLADESH                     Q1                   NA                0.1395349   0.0358788   0.2431909
6 months    ki1017093b-PROVIDE        BANGLADESH                     Q2                   NA                0.1612903   0.1033388   0.2192419
6 months    ki1017093b-PROVIDE        BANGLADESH                     Q3                   NA                0.1687764   0.1210497   0.2165031
6 months    ki1017093b-PROVIDE        BANGLADESH                     Q4                   NA                0.1554054   0.0969873   0.2138235
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Q1                   NA                0.1904762   0.1310562   0.2498962
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Q2                   NA                0.1891892   0.1327119   0.2456665
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Q3                   NA                0.2210526   0.1620084   0.2800968
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Q4                   NA                0.2383721   0.1746505   0.3020937
6 months    ki1112895-Guatemala BSC   GUATEMALA                      Q1                   NA                0.2580645   0.1037730   0.4123560
6 months    ki1112895-Guatemala BSC   GUATEMALA                      Q2                   NA                0.3157895   0.1064301   0.5251489
6 months    ki1112895-Guatemala BSC   GUATEMALA                      Q3                   NA                0.2321429   0.1213787   0.3429071
6 months    ki1112895-Guatemala BSC   GUATEMALA                      Q4                   NA                0.3264249   0.2601603   0.3926895
6 months    ki1114097-CMIN            PERU                           Q1                   NA                0.0704225   0.0108620   0.1299831
6 months    ki1114097-CMIN            PERU                           Q2                   NA                0.0495868   0.0108757   0.0882979
6 months    ki1114097-CMIN            PERU                           Q3                   NA                0.0562500   0.0205212   0.0919788
6 months    ki1114097-CMIN            PERU                           Q4                   NA                0.0807018   0.0490545   0.1123490
6 months    kiGH5241-JiVitA-4         BANGLADESH                     Q1                   NA                0.2349570   0.2099577   0.2599563
6 months    kiGH5241-JiVitA-4         BANGLADESH                     Q2                   NA                0.2454716   0.2203357   0.2706075
6 months    kiGH5241-JiVitA-4         BANGLADESH                     Q3                   NA                0.2745455   0.2458593   0.3032316
6 months    kiGH5241-JiVitA-4         BANGLADESH                     Q4                   NA                0.2987013   0.2495098   0.3478928
24 months   ki0047075b-MAL-ED         BANGLADESH                     Q1                   NA                0.5000000   0.2374689   0.7625311
24 months   ki0047075b-MAL-ED         BANGLADESH                     Q2                   NA                0.3571429   0.2118888   0.5023969
24 months   ki0047075b-MAL-ED         BANGLADESH                     Q3                   NA                0.4659091   0.3614391   0.5703791
24 months   ki0047075b-MAL-ED         BANGLADESH                     Q4                   NA                0.5147059   0.3956359   0.6337759
24 months   ki0047075b-MAL-ED         INDIA                          Q1                   NA                0.3913043   0.1914101   0.5911986
24 months   ki0047075b-MAL-ED         INDIA                          Q2                   NA                0.4533333   0.3404197   0.5662469
24 months   ki0047075b-MAL-ED         INDIA                          Q3                   NA                0.4105263   0.3113866   0.5096660
24 months   ki0047075b-MAL-ED         INDIA                          Q4                   NA                0.3823529   0.2186450   0.5460609
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q1                   NA                0.7916667   0.6288083   0.9545250
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q2                   NA                0.7000000   0.5837751   0.8162249
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q3                   NA                0.7111111   0.6172516   0.8049706
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q4                   NA                0.7000000   0.5576541   0.8423459
24 months   ki1017093b-PROVIDE        BANGLADESH                     Q1                   NA                0.3076923   0.1627149   0.4526697
24 months   ki1017093b-PROVIDE        BANGLADESH                     Q2                   NA                0.3066667   0.2328111   0.3805223
24 months   ki1017093b-PROVIDE        BANGLADESH                     Q3                   NA                0.3375527   0.2772972   0.3978083
24 months   ki1017093b-PROVIDE        BANGLADESH                     Q4                   NA                0.3443709   0.2685168   0.4202249
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Q1                   NA                0.2434211   0.1751313   0.3117108
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Q2                   NA                0.1917808   0.1278572   0.2557045
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Q3                   NA                0.3025210   0.2199094   0.3851326
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Q4                   NA                0.3195876   0.2266982   0.4124770
24 months   ki1114097-CMIN            GUINEA-BISSAU                  Q1                   NA                0.3902439   0.2407903   0.5396975
24 months   ki1114097-CMIN            GUINEA-BISSAU                  Q2                   NA                0.2698413   0.1601317   0.3795509
24 months   ki1114097-CMIN            GUINEA-BISSAU                  Q3                   NA                0.2622951   0.1841667   0.3404234
24 months   ki1114097-CMIN            GUINEA-BISSAU                  Q4                   NA                0.3878205   0.3337040   0.4419370
24 months   ki1114097-CMIN            PERU                           Q1                   NA                0.2962963   0.1743638   0.4182288
24 months   ki1114097-CMIN            PERU                           Q2                   NA                0.2298851   0.1413670   0.3184031
24 months   ki1114097-CMIN            PERU                           Q3                   NA                0.2843137   0.1966705   0.3719570
24 months   ki1114097-CMIN            PERU                           Q4                   NA                0.3879781   0.3172943   0.4586620
24 months   kiGH5241-JiVitA-4         BANGLADESH                     Q1                   NA                0.3698710   0.3429660   0.3967761
24 months   kiGH5241-JiVitA-4         BANGLADESH                     Q2                   NA                0.3638645   0.3357840   0.3919450
24 months   kiGH5241-JiVitA-4         BANGLADESH                     Q3                   NA                0.4402224   0.4077551   0.4726897
24 months   kiGH5241-JiVitA-4         BANGLADESH                     Q4                   NA                0.4772118   0.4190482   0.5353754


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1828794   0.1355257   0.2302330
Birth       ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1601942   0.1099849   0.2104035
Birth       kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.3004866   0.2649179   0.3360553
6 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1867220   0.1374205   0.2360234
6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1949153   0.1442678   0.2455627
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2348178   0.1818480   0.2877876
6 months    ki1000109-EE              PAKISTAN                       NA                   NA                0.5188172   0.4679751   0.5696593
6 months    ki1017093-NIH-Birth       BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1112895-Guatemala BSC   GUATEMALA                      NA                   NA                0.3010033   0.2489243   0.3530824
6 months    ki1114097-CMIN            PERU                           NA                   NA                0.0675039   0.0480051   0.0870027
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.2525357   0.2384780   0.2665934
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.4622642   0.3949918   0.5295365
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.4185022   0.3541865   0.4828179
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7149533   0.6543278   0.7755787
24 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1114097-CMIN            GUINEA-BISSAU                  NA                   NA                0.3457249   0.3054989   0.3859509
24 months   ki1114097-CMIN            PERU                           NA                   NA                0.3192488   0.2749275   0.3635701
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.3922559   0.3752678   0.4092440


### Parameter: RR


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH                     Q2                   Q1                0.8403361   0.3570928   1.9775384
Birth       ki0047075b-MAL-ED         BANGLADESH                     Q3                   Q1                0.4511278   0.1878646   1.0833135
Birth       ki0047075b-MAL-ED         BANGLADESH                     Q4                   Q1                1.0582011   0.4981702   2.2478051
Birth       ki0047075b-MAL-ED         INDIA                          Q1                   Q1                1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         INDIA                          Q2                   Q1                0.9253731   0.3445742   2.4851409
Birth       ki0047075b-MAL-ED         INDIA                          Q3                   Q1                1.0746667   0.4177096   2.7648597
Birth       ki0047075b-MAL-ED         INDIA                          Q4                   Q1                0.9393939   0.3000437   2.9411077
Birth       kiGH5241-JiVitA-4         BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     Q2                   Q1                1.1835215   0.8888998   1.5757941
Birth       kiGH5241-JiVitA-4         BANGLADESH                     Q3                   Q1                1.1560059   0.8309498   1.6082195
Birth       kiGH5241-JiVitA-4         BANGLADESH                     Q4                   Q1                1.1162255   0.7330194   1.6997633
6 months    ki0047075b-MAL-ED         BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     Q2                   Q1                0.4571429   0.1770831   1.1801219
6 months    ki0047075b-MAL-ED         BANGLADESH                     Q3                   Q1                0.4083333   0.1736283   0.9603052
6 months    ki0047075b-MAL-ED         BANGLADESH                     Q4                   Q1                0.6146341   0.2722289   1.3877113
6 months    ki0047075b-MAL-ED         INDIA                          Q1                   Q1                1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         INDIA                          Q2                   Q1                0.6410256   0.2414253   1.7020331
6 months    ki0047075b-MAL-ED         INDIA                          Q3                   Q1                1.0714286   0.4476706   2.5642942
6 months    ki0047075b-MAL-ED         INDIA                          Q4                   Q1                1.4285714   0.5553208   3.6750226
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q1                   Q1                1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q2                   Q1                0.6652174   0.3496071   1.2657471
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q3                   Q1                0.6352941   0.3469968   1.1631192
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q4                   Q1                0.3857143   0.1655764   0.8985308
6 months    ki1000109-EE              PAKISTAN                       Q1                   Q1                1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE              PAKISTAN                       Q2                   Q1                0.9548611   0.6911630   1.3191675
6 months    ki1000109-EE              PAKISTAN                       Q3                   Q1                0.9548611   0.6755557   1.3496440
6 months    ki1000109-EE              PAKISTAN                       Q4                   Q1                1.0051170   0.6461611   1.5634803
6 months    ki1017093-NIH-Birth       BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth       BANGLADESH                     Q2                   Q1                1.1189516   0.5826792   2.1487858
6 months    ki1017093-NIH-Birth       BANGLADESH                     Q3                   Q1                0.9805046   0.5198370   1.8494051
6 months    ki1017093-NIH-Birth       BANGLADESH                     Q4                   Q1                0.9545455   0.4988539   1.8265006
6 months    ki1017093b-PROVIDE        BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH                     Q2                   Q1                1.1559140   0.5064623   2.6381768
6 months    ki1017093b-PROVIDE        BANGLADESH                     Q3                   Q1                1.2095640   0.5462874   2.6781601
6 months    ki1017093b-PROVIDE        BANGLADESH                     Q4                   Q1                1.1137387   0.4844022   2.5607108
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Q2                   Q1                0.9932432   0.6449663   1.5295871
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Q3                   Q1                1.1605263   0.7696575   1.7498969
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Q4                   Q1                1.2514535   0.8298438   1.8872657
6 months    ki1112895-Guatemala BSC   GUATEMALA                      Q1                   Q1                1.0000000   1.0000000   1.0000000
6 months    ki1112895-Guatemala BSC   GUATEMALA                      Q2                   Q1                1.2236842   0.5011362   2.9880161
6 months    ki1112895-Guatemala BSC   GUATEMALA                      Q3                   Q1                0.8995536   0.4186214   1.9330037
6 months    ki1112895-Guatemala BSC   GUATEMALA                      Q4                   Q1                1.2648964   0.6727292   2.3783164
6 months    ki1114097-CMIN            PERU                           Q1                   Q1                1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN            PERU                           Q2                   Q1                0.7041322   0.2227351   2.2259726
6 months    ki1114097-CMIN            PERU                           Q3                   Q1                0.7987500   0.2773644   2.3002286
6 months    ki1114097-CMIN            PERU                           Q4                   Q1                1.1459649   0.4511280   2.9110043
6 months    kiGH5241-JiVitA-4         BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     Q2                   Q1                1.0447510   0.9009809   1.2114625
6 months    kiGH5241-JiVitA-4         BANGLADESH                     Q3                   Q1                1.1684922   1.0041423   1.3597416
6 months    kiGH5241-JiVitA-4         BANGLADESH                     Q4                   Q1                1.2713019   1.0420030   1.5510594
24 months   ki0047075b-MAL-ED         BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     Q2                   Q1                0.7142857   0.3676480   1.3877515
24 months   ki0047075b-MAL-ED         BANGLADESH                     Q3                   Q1                0.9318182   0.5264735   1.6492475
24 months   ki0047075b-MAL-ED         BANGLADESH                     Q4                   Q1                1.0294118   0.5799706   1.8271418
24 months   ki0047075b-MAL-ED         INDIA                          Q1                   Q1                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         INDIA                          Q2                   Q1                1.1585185   0.6562683   2.0451471
24 months   ki0047075b-MAL-ED         INDIA                          Q3                   Q1                1.0491228   0.5962517   1.8459631
24 months   ki0047075b-MAL-ED         INDIA                          Q4                   Q1                0.9771242   0.5017346   1.9029415
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q1                   Q1                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q2                   Q1                0.8842105   0.6788051   1.1517714
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q3                   Q1                0.8982456   0.7034700   1.1469504
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q4                   Q1                0.8842105   0.6621130   1.1808079
24 months   ki1017093b-PROVIDE        BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH                     Q2                   Q1                0.9966667   0.5871371   1.6918440
24 months   ki1017093b-PROVIDE        BANGLADESH                     Q3                   Q1                1.0970464   0.6628306   1.8157140
24 months   ki1017093b-PROVIDE        BANGLADESH                     Q4                   Q1                1.1192053   0.6653102   1.8827615
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Q2                   Q1                0.7878563   0.5096130   1.2180177
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Q3                   Q1                1.2427890   0.8401750   1.8383366
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Q4                   Q1                1.3129005   0.8765858   1.9663880
24 months   ki1114097-CMIN            GUINEA-BISSAU                  Q1                   Q1                1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN            GUINEA-BISSAU                  Q2                   Q1                0.6914683   0.3955491   1.2087712
24 months   ki1114097-CMIN            GUINEA-BISSAU                  Q3                   Q1                0.6721311   0.4137577   1.0918475
24 months   ki1114097-CMIN            GUINEA-BISSAU                  Q4                   Q1                0.9937901   0.6611111   1.4938771
24 months   ki1114097-CMIN            PERU                           Q1                   Q1                1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN            PERU                           Q2                   Q1                0.7758621   0.4415979   1.3631450
24 months   ki1114097-CMIN            PERU                           Q3                   Q1                0.9595588   0.5738099   1.6046309
24 months   ki1114097-CMIN            PERU                           Q4                   Q1                1.3094262   0.8348881   2.0536849
24 months   kiGH5241-JiVitA-4         BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     Q2                   Q1                0.9837604   0.8840450   1.0947231
24 months   kiGH5241-JiVitA-4         BANGLADESH                     Q3                   Q1                1.1902052   1.0759900   1.3165442
24 months   kiGH5241-JiVitA-4         BANGLADESH                     Q4                   Q1                1.2902113   1.1248832   1.4798383


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     Q1                   NA                -0.0504540   -0.1914136   0.0905057
Birth       ki0047075b-MAL-ED         INDIA                          Q1                   NA                -0.0010961   -0.1206622   0.1184699
Birth       kiGH5241-JiVitA-4         BANGLADESH                     Q1                   NA                 0.0290090   -0.0188080   0.0768260
6 months    ki0047075b-MAL-ED         BANGLADESH                     Q1                   NA                -0.1704209   -0.4119598   0.0711181
6 months    ki0047075b-MAL-ED         INDIA                          Q1                   NA                -0.0050847   -0.1534903   0.1433208
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.1355526   -0.3053640   0.0342588
6 months    ki1000109-EE              PAKISTAN                       Q1                   NA                -0.0048192   -0.0350374   0.0253991
6 months    ki1017093-NIH-Birth       BANGLADESH                     Q1                   NA                 0.0014898   -0.1524283   0.1554078
6 months    ki1017093b-PROVIDE        BANGLADESH                     Q1                   NA                 0.0217001   -0.0785608   0.1219610
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Q1                   NA                 0.0193140   -0.0332546   0.0718826
6 months    ki1112895-Guatemala BSC   GUATEMALA                      Q1                   NA                 0.0429388   -0.1039685   0.1898461
6 months    ki1114097-CMIN            PERU                           Q1                   NA                -0.0029186   -0.0589263   0.0530891
6 months    kiGH5241-JiVitA-4         BANGLADESH                     Q1                   NA                 0.0175787   -0.0021637   0.0373211
24 months   ki0047075b-MAL-ED         BANGLADESH                     Q1                   NA                -0.0377358   -0.2913993   0.2159276
24 months   ki0047075b-MAL-ED         INDIA                          Q1                   NA                 0.0271979   -0.1625311   0.2169268
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.0767134   -0.2324351   0.0790083
24 months   ki1017093b-PROVIDE        BANGLADESH                     Q1                   NA                 0.0215971   -0.1185816   0.1617759
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Q1                   NA                 0.0133883   -0.0443569   0.0711335
24 months   ki1114097-CMIN            GUINEA-BISSAU                  Q1                   NA                -0.0445190   -0.1878720   0.0988340
24 months   ki1114097-CMIN            PERU                           Q1                   NA                 0.0229525   -0.0913396   0.1372446
24 months   kiGH5241-JiVitA-4         BANGLADESH                     Q1                   NA                 0.0223848    0.0009690   0.0438007


### Parameter: PAF


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     Q1                   NA                -0.2758865   -1.3317992   0.3018754
Birth       ki0047075b-MAL-ED         INDIA                          Q1                   NA                -0.0068426   -1.1130379   0.5202490
Birth       kiGH5241-JiVitA-4         BANGLADESH                     Q1                   NA                 0.0965399   -0.0785614   0.2432141
6 months    ki0047075b-MAL-ED         BANGLADESH                     Q1                   NA                -0.9126984   -2.7561488   0.0260196
6 months    ki0047075b-MAL-ED         INDIA                          Q1                   NA                -0.0260870   -1.1549453   0.5114240
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.5772669   -1.4941471   0.0025565
6 months    ki1000109-EE              PAKISTAN                       Q1                   NA                -0.0092887   -0.0692555   0.0473149
6 months    ki1017093-NIH-Birth       BANGLADESH                     Q1                   NA                 0.0055556   -0.7711369   0.4416469
6 months    ki1017093b-PROVIDE        BANGLADESH                     Q1                   NA                 0.1345868   -0.7746487   0.5779785
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Q1                   NA                 0.0920635   -0.1962703   0.3109010
6 months    ki1112895-Guatemala BSC   GUATEMALA                      Q1                   NA                 0.1426523   -0.5146185   0.5146995
6 months    ki1114097-CMIN            PERU                           Q1                   NA                -0.0432362   -1.3107229   0.5290038
6 months    kiGH5241-JiVitA-4         BANGLADESH                     Q1                   NA                 0.0696087   -0.0123355   0.1449199
24 months   ki0047075b-MAL-ED         BANGLADESH                     Q1                   NA                -0.0816327   -0.7966086   0.3488124
24 months   ki0047075b-MAL-ED         INDIA                          Q1                   NA                 0.0649886   -0.5184756   0.4242605
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.1072985   -0.3490552   0.0911343
24 months   ki1017093b-PROVIDE        BANGLADESH                     Q1                   NA                 0.0655870   -0.4736437   0.4075043
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Q1                   NA                 0.0521332   -0.2015766   0.2522728
24 months   ki1114097-CMIN            GUINEA-BISSAU                  Q1                   NA                -0.1287700   -0.6298969   0.2182808
24 months   ki1114097-CMIN            PERU                           Q1                   NA                 0.0718954   -0.3649333   0.3689229
24 months   kiGH5241-JiVitA-4         BANGLADESH                     Q1                   NA                 0.0570670    0.0008836   0.1100910
