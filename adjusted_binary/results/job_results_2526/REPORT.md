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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* sex
* meducyrs
* hhwealth_quart
* hfoodsec
* hdlvry
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_hdlvry
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
![](/tmp/aaa8a25f-fc0c-4492-ba1e-8d7b8613707d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/aaa8a25f-fc0c-4492-ba1e-8d7b8613707d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/aaa8a25f-fc0c-4492-ba1e-8d7b8613707d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/aaa8a25f-fc0c-4492-ba1e-8d7b8613707d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     Q1                   NA                0.1777962   0.1315850   0.2240074
Birth       ki0047075b-MAL-ED         BANGLADESH                     Q2                   NA                0.1812265   0.1342653   0.2281877
Birth       ki0047075b-MAL-ED         BANGLADESH                     Q3                   NA                0.1809076   0.1340059   0.2278093
Birth       ki0047075b-MAL-ED         BANGLADESH                     Q4                   NA                0.1823884   0.1351049   0.2296720
Birth       ki0047075b-MAL-ED         INDIA                          Q1                   NA                0.1503067   0.1027182   0.1978952
Birth       ki0047075b-MAL-ED         INDIA                          Q2                   NA                0.1576488   0.1080029   0.2072946
Birth       ki0047075b-MAL-ED         INDIA                          Q3                   NA                0.1577715   0.1080694   0.2074735
Birth       ki0047075b-MAL-ED         INDIA                          Q4                   NA                0.1515569   0.1032993   0.1998144
Birth       kiGH5241-JiVitA-4         BANGLADESH                     Q1                   NA                0.3004339   0.2648612   0.3360066
Birth       kiGH5241-JiVitA-4         BANGLADESH                     Q2                   NA                0.3005237   0.2649574   0.3360900
Birth       kiGH5241-JiVitA-4         BANGLADESH                     Q3                   NA                0.3005082   0.2649378   0.3360786
Birth       kiGH5241-JiVitA-4         BANGLADESH                     Q4                   NA                0.3004911   0.2649341   0.3360482
6 months    ki0047075b-MAL-ED         BANGLADESH                     Q1                   NA                0.3678037   0.1692760   0.5663314
6 months    ki0047075b-MAL-ED         BANGLADESH                     Q2                   NA                0.1492997   0.0555208   0.2430785
6 months    ki0047075b-MAL-ED         BANGLADESH                     Q3                   NA                0.1807264   0.1154677   0.2459852
6 months    ki0047075b-MAL-ED         BANGLADESH                     Q4                   NA                0.1861421   0.1049840   0.2673002
6 months    ki0047075b-MAL-ED         INDIA                          Q1                   NA                0.1903201   0.0771295   0.3035107
6 months    ki0047075b-MAL-ED         INDIA                          Q2                   NA                0.1484068   0.0802806   0.2165331
6 months    ki0047075b-MAL-ED         INDIA                          Q3                   NA                0.2036029   0.1356703   0.2715356
6 months    ki0047075b-MAL-ED         INDIA                          Q4                   NA                0.2837961   0.1590789   0.4085133
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q1                   NA                0.3133153   0.1707001   0.4559306
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q2                   NA                0.2604472   0.1690832   0.3518112
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q3                   NA                0.2271490   0.1506491   0.3036488
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q4                   NA                0.1663827   0.0766875   0.2560780
6 months    ki1000109-EE              PAKISTAN                       Q1                   NA                0.5156101   0.4587560   0.5724642
6 months    ki1000109-EE              PAKISTAN                       Q2                   NA                0.5212083   0.3952574   0.6471592
6 months    ki1000109-EE              PAKISTAN                       Q3                   NA                0.5181892   0.3871160   0.6492624
6 months    ki1000109-EE              PAKISTAN                       Q4                   NA                0.5422482   0.3399811   0.7445153
6 months    ki1017093-NIH-Birth       BANGLADESH                     Q1                   NA                0.2816254   0.1298565   0.4333944
6 months    ki1017093-NIH-Birth       BANGLADESH                     Q2                   NA                0.3037393   0.2237762   0.3837024
6 months    ki1017093-NIH-Birth       BANGLADESH                     Q3                   NA                0.2576193   0.2000474   0.3151912
6 months    ki1017093-NIH-Birth       BANGLADESH                     Q4                   NA                0.2596917   0.1940787   0.3253047
6 months    ki1017093b-PROVIDE        BANGLADESH                     Q1                   NA                0.1864036   0.1194846   0.2533227
6 months    ki1017093b-PROVIDE        BANGLADESH                     Q2                   NA                0.1883927   0.1428743   0.2339112
6 months    ki1017093b-PROVIDE        BANGLADESH                     Q3                   NA                0.1597297   0.1200467   0.1994126
6 months    ki1017093b-PROVIDE        BANGLADESH                     Q4                   NA                0.1432822   0.0991797   0.1873848
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Q1                   NA                0.2268063   0.1853069   0.2683058
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Q2                   NA                0.2264081   0.1801959   0.2726204
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Q3                   NA                0.2506000   0.2047680   0.2964321
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Q4                   NA                0.2578501   0.2080255   0.3076747
6 months    ki1112895-Guatemala BSC   GUATEMALA                      Q1                   NA                0.3102183   0.1692303   0.4512063
6 months    ki1112895-Guatemala BSC   GUATEMALA                      Q2                   NA                0.4263986   0.2611216   0.5916755
6 months    ki1112895-Guatemala BSC   GUATEMALA                      Q3                   NA                0.2342834   0.1276238   0.3409431
6 months    ki1112895-Guatemala BSC   GUATEMALA                      Q4                   NA                0.3269151   0.2610901   0.3927401
6 months    ki1114097-CMIN            PERU                           Q1                   NA                0.0705461   0.0115784   0.1295138
6 months    ki1114097-CMIN            PERU                           Q2                   NA                0.0501784   0.0113145   0.0890423
6 months    ki1114097-CMIN            PERU                           Q3                   NA                0.0568911   0.0209356   0.0928466
6 months    ki1114097-CMIN            PERU                           Q4                   NA                0.0805911   0.0490545   0.1121278
6 months    kiGH5241-JiVitA-4         BANGLADESH                     Q1                   NA                0.2375894   0.2149849   0.2601938
6 months    kiGH5241-JiVitA-4         BANGLADESH                     Q2                   NA                0.2443647   0.2208705   0.2678590
6 months    kiGH5241-JiVitA-4         BANGLADESH                     Q3                   NA                0.2624801   0.2368093   0.2881510
6 months    kiGH5241-JiVitA-4         BANGLADESH                     Q4                   NA                0.2705926   0.2262401   0.3149452
24 months   ki0047075b-MAL-ED         BANGLADESH                     Q1                   NA                0.5349889   0.3558923   0.7140856
24 months   ki0047075b-MAL-ED         BANGLADESH                     Q2                   NA                0.3611532   0.2511704   0.4711359
24 months   ki0047075b-MAL-ED         BANGLADESH                     Q3                   NA                0.4823227   0.3925103   0.5721351
24 months   ki0047075b-MAL-ED         BANGLADESH                     Q4                   NA                0.4881422   0.3877269   0.5885576
24 months   ki0047075b-MAL-ED         INDIA                          Q1                   NA                0.4088753   0.2381111   0.5796395
24 months   ki0047075b-MAL-ED         INDIA                          Q2                   NA                0.4687099   0.3601014   0.5773184
24 months   ki0047075b-MAL-ED         INDIA                          Q3                   NA                0.3904374   0.2985644   0.4823104
24 months   ki0047075b-MAL-ED         INDIA                          Q4                   NA                0.3933776   0.2395829   0.5471723
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q1                   NA                0.7867980   0.6256935   0.9479024
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q2                   NA                0.7158946   0.6070561   0.8247332
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q3                   NA                0.6947547   0.6039320   0.7855774
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q4                   NA                0.7167086   0.5845948   0.8488225
24 months   ki1017093b-PROVIDE        BANGLADESH                     Q1                   NA                0.3341388   0.2621328   0.4061448
24 months   ki1017093b-PROVIDE        BANGLADESH                     Q2                   NA                0.3351215   0.2780125   0.3922304
24 months   ki1017093b-PROVIDE        BANGLADESH                     Q3                   NA                0.3255687   0.2736073   0.3775300
24 months   ki1017093b-PROVIDE        BANGLADESH                     Q4                   NA                0.3580254   0.2992674   0.4167834
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Q1                   NA                0.2857352   0.2324325   0.3390379
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Q2                   NA                0.2460967   0.1917854   0.3004079
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Q3                   NA                0.3424238   0.2790825   0.4057651
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Q4                   NA                0.3804609   0.3105600   0.4503618
24 months   ki1114097-CMIN            GUINEA-BISSAU                  Q1                   NA                0.4103957   0.2672496   0.5535418
24 months   ki1114097-CMIN            GUINEA-BISSAU                  Q2                   NA                0.3124922   0.2048960   0.4200884
24 months   ki1114097-CMIN            GUINEA-BISSAU                  Q3                   NA                0.2641190   0.1868779   0.3413601
24 months   ki1114097-CMIN            GUINEA-BISSAU                  Q4                   NA                0.3883391   0.3341858   0.4424925
24 months   ki1114097-CMIN            PERU                           Q1                   NA                0.2906341   0.1735073   0.4077608
24 months   ki1114097-CMIN            PERU                           Q2                   NA                0.2260140   0.1384757   0.3135523
24 months   ki1114097-CMIN            PERU                           Q3                   NA                0.2901907   0.2025071   0.3778744
24 months   ki1114097-CMIN            PERU                           Q4                   NA                0.3876226   0.3174346   0.4578105
24 months   kiGH5241-JiVitA-4         BANGLADESH                     Q1                   NA                0.3776279   0.3515759   0.4036799
24 months   kiGH5241-JiVitA-4         BANGLADESH                     Q2                   NA                0.3645991   0.3378727   0.3913254
24 months   kiGH5241-JiVitA-4         BANGLADESH                     Q3                   NA                0.4318777   0.4005413   0.4632141
24 months   kiGH5241-JiVitA-4         BANGLADESH                     Q4                   NA                0.4622474   0.4092437   0.5152511


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
Birth       ki0047075b-MAL-ED         BANGLADESH                     Q2                   Q1                1.0192934   1.0107805   1.0278779
Birth       ki0047075b-MAL-ED         BANGLADESH                     Q3                   Q1                1.0174998   1.0096181   1.0254430
Birth       ki0047075b-MAL-ED         BANGLADESH                     Q4                   Q1                1.0258286   1.0177292   1.0339924
Birth       ki0047075b-MAL-ED         INDIA                          Q1                   Q1                1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         INDIA                          Q2                   Q1                1.0488472   1.0253632   1.0728690
Birth       ki0047075b-MAL-ED         INDIA                          Q3                   Q1                1.0496634   1.0249305   1.0749931
Birth       ki0047075b-MAL-ED         INDIA                          Q4                   Q1                1.0083171   0.9775941   1.0400058
Birth       kiGH5241-JiVitA-4         BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     Q2                   Q1                1.0002988   0.9997973   1.0008005
Birth       kiGH5241-JiVitA-4         BANGLADESH                     Q3                   Q1                1.0002474   0.9996662   1.0008288
Birth       kiGH5241-JiVitA-4         BANGLADESH                     Q4                   Q1                1.0001905   0.9994529   1.0009287
6 months    ki0047075b-MAL-ED         BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     Q2                   Q1                0.4059221   0.1804986   0.9128755
6 months    ki0047075b-MAL-ED         BANGLADESH                     Q3                   Q1                0.4913665   0.2627877   0.9187685
6 months    ki0047075b-MAL-ED         BANGLADESH                     Q4                   Q1                0.5060909   0.2573874   0.9951068
6 months    ki0047075b-MAL-ED         INDIA                          Q1                   Q1                1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         INDIA                          Q2                   Q1                0.7797751   0.3836025   1.5851023
6 months    ki0047075b-MAL-ED         INDIA                          Q3                   Q1                1.0697923   0.5643259   2.0280049
6 months    ki0047075b-MAL-ED         INDIA                          Q4                   Q1                1.4911519   0.7296285   3.0474878
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q1                   Q1                1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q2                   Q1                0.8312622   0.4784194   1.4443330
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q3                   Q1                0.7249852   0.4217531   1.2462352
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q4                   Q1                0.5310392   0.2682029   1.0514526
6 months    ki1000109-EE              PAKISTAN                       Q1                   Q1                1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE              PAKISTAN                       Q2                   Q1                1.0108574   0.7809189   1.3085003
6 months    ki1000109-EE              PAKISTAN                       Q3                   Q1                1.0050021   0.7712694   1.3095674
6 months    ki1000109-EE              PAKISTAN                       Q4                   Q1                1.0516633   0.7169404   1.5426608
6 months    ki1017093-NIH-Birth       BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth       BANGLADESH                     Q2                   Q1                1.0785221   0.5924086   1.9635263
6 months    ki1017093-NIH-Birth       BANGLADESH                     Q3                   Q1                0.9147586   0.5108787   1.6379294
6 months    ki1017093-NIH-Birth       BANGLADESH                     Q4                   Q1                0.9221174   0.5091534   1.6700281
6 months    ki1017093b-PROVIDE        BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH                     Q2                   Q1                1.0106710   0.6713683   1.5214539
6 months    ki1017093b-PROVIDE        BANGLADESH                     Q3                   Q1                0.8569021   0.5674659   1.2939653
6 months    ki1017093b-PROVIDE        BANGLADESH                     Q4                   Q1                0.7686665   0.4906810   1.2041390
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Q2                   Q1                0.9982442   0.7729737   1.2891661
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Q3                   Q1                1.1049076   0.8701370   1.4030213
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Q4                   Q1                1.1368734   0.8855426   1.4595357
6 months    ki1112895-Guatemala BSC   GUATEMALA                      Q1                   Q1                1.0000000   1.0000000   1.0000000
6 months    ki1112895-Guatemala BSC   GUATEMALA                      Q2                   Q1                1.3745113   0.7573352   2.4946437
6 months    ki1112895-Guatemala BSC   GUATEMALA                      Q3                   Q1                0.7552212   0.3972754   1.4356768
6 months    ki1112895-Guatemala BSC   GUATEMALA                      Q4                   Q1                1.0538227   0.6415335   1.7310744
6 months    ki1114097-CMIN            PERU                           Q1                   Q1                1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN            PERU                           Q2                   Q1                0.7112848   0.2276006   2.2228679
6 months    ki1114097-CMIN            PERU                           Q3                   Q1                0.8064383   0.2828135   2.2995461
6 months    ki1114097-CMIN            PERU                           Q4                   Q1                1.1423891   0.4539412   2.8749380
6 months    kiGH5241-JiVitA-4         BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     Q2                   Q1                1.0285172   0.9043731   1.1697026
6 months    kiGH5241-JiVitA-4         BANGLADESH                     Q3                   Q1                1.1047638   0.9661232   1.2632996
6 months    kiGH5241-JiVitA-4         BANGLADESH                     Q4                   Q1                1.1389088   0.9431273   1.3753321
24 months   ki0047075b-MAL-ED         BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     Q2                   Q1                0.6750666   0.4376903   1.0411812
24 months   ki0047075b-MAL-ED         BANGLADESH                     Q3                   Q1                0.9015564   0.6287201   1.2927912
24 months   ki0047075b-MAL-ED         BANGLADESH                     Q4                   Q1                0.9124343   0.6292507   1.3230599
24 months   ki0047075b-MAL-ED         INDIA                          Q1                   Q1                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         INDIA                          Q2                   Q1                1.1463395   0.7174853   1.8315280
24 months   ki0047075b-MAL-ED         INDIA                          Q3                   Q1                0.9549058   0.5993730   1.5213315
24 months   ki0047075b-MAL-ED         INDIA                          Q4                   Q1                0.9620968   0.5480140   1.6890631
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q1                   Q1                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q2                   Q1                0.9098837   0.7064556   1.1718902
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q3                   Q1                0.8830154   0.6936739   1.1240385
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q4                   Q1                0.9109183   0.6926679   1.1979364
24 months   ki1017093b-PROVIDE        BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH                     Q2                   Q1                1.0029408   0.7698462   1.3066120
24 months   ki1017093b-PROVIDE        BANGLADESH                     Q3                   Q1                0.9743515   0.7517014   1.2629495
24 months   ki1017093b-PROVIDE        BANGLADESH                     Q4                   Q1                1.0714870   0.8241163   1.3931096
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Q2                   Q1                0.8612753   0.6559218   1.1309200
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Q3                   Q1                1.1983956   0.9367162   1.5331772
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Q4                   Q1                1.3315158   1.0382835   1.7075628
24 months   ki1114097-CMIN            GUINEA-BISSAU                  Q1                   Q1                1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN            GUINEA-BISSAU                  Q2                   Q1                0.7614412   0.4673178   1.2406820
24 months   ki1114097-CMIN            GUINEA-BISSAU                  Q3                   Q1                0.6435715   0.4089531   1.0127918
24 months   ki1114097-CMIN            GUINEA-BISSAU                  Q4                   Q1                0.9462554   0.6499109   1.3777264
24 months   ki1114097-CMIN            PERU                           Q1                   Q1                1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN            PERU                           Q2                   Q1                0.7776584   0.4442646   1.3612443
24 months   ki1114097-CMIN            PERU                           Q3                   Q1                0.9984746   0.6026660   1.6542358
24 months   ki1114097-CMIN            PERU                           Q4                   Q1                1.3337136   0.8587359   2.0714074
24 months   kiGH5241-JiVitA-4         BANGLADESH                     Q1                   Q1                1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     Q2                   Q1                0.9654983   0.8746292   1.0658082
24 months   kiGH5241-JiVitA-4         BANGLADESH                     Q3                   Q1                1.1436595   1.0387604   1.2591517
24 months   kiGH5241-JiVitA-4         BANGLADESH                     Q4                   Q1                1.2240817   1.0770859   1.3911390


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     Q1                   NA                 0.0050832    0.0034313   0.0067351
Birth       ki0047075b-MAL-ED         INDIA                          Q1                   NA                 0.0098874    0.0059670   0.0138079
Birth       kiGH5241-JiVitA-4         BANGLADESH                     Q1                   NA                 0.0000527   -0.0000350   0.0001404
6 months    ki0047075b-MAL-ED         BANGLADESH                     Q1                   NA                -0.1810817   -0.3691685   0.0070050
6 months    ki0047075b-MAL-ED         INDIA                          Q1                   NA                 0.0045952   -0.0993627   0.1085531
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.0784975   -0.2086616   0.0516665
6 months    ki1000109-EE              PAKISTAN                       Q1                   NA                 0.0032071   -0.0226484   0.0290626
6 months    ki1017093-NIH-Birth       BANGLADESH                     Q1                   NA                -0.0134690   -0.1608347   0.1338967
6 months    ki1017093b-PROVIDE        BANGLADESH                     Q1                   NA                -0.0251686   -0.0874752   0.0371379
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Q1                   NA                -0.0170161   -0.0525053   0.0184730
6 months    ki1112895-Guatemala BSC   GUATEMALA                      Q1                   NA                -0.0092150   -0.1443108   0.1258809
6 months    ki1114097-CMIN            PERU                           Q1                   NA                -0.0030422   -0.0584877   0.0524033
6 months    kiGH5241-JiVitA-4         BANGLADESH                     Q1                   NA                 0.0149463   -0.0021487   0.0320414
24 months   ki0047075b-MAL-ED         BANGLADESH                     Q1                   NA                -0.0727248   -0.2411109   0.0956613
24 months   ki0047075b-MAL-ED         INDIA                          Q1                   NA                 0.0096269   -0.1507118   0.1699656
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.0718447   -0.2247094   0.0810200
24 months   ki1017093b-PROVIDE        BANGLADESH                     Q1                   NA                -0.0048494   -0.0749861   0.0652873
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Q1                   NA                -0.0289259   -0.0720083   0.0141566
24 months   ki1114097-CMIN            GUINEA-BISSAU                  Q1                   NA                -0.0646708   -0.2020417   0.0727001
24 months   ki1114097-CMIN            PERU                           Q1                   NA                 0.0286148   -0.0812840   0.1385136
24 months   kiGH5241-JiVitA-4         BANGLADESH                     Q1                   NA                 0.0146280   -0.0056040   0.0348600


### Parameter: PAF


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     Q1                   NA                 0.0277952    0.0212709    0.0342760
Birth       ki0047075b-MAL-ED         INDIA                          Q1                   NA                 0.0617216    0.0436688    0.0794336
Birth       kiGH5241-JiVitA-4         BANGLADESH                     Q1                   NA                 0.0001754   -0.0001182    0.0004689
6 months    ki0047075b-MAL-ED         BANGLADESH                     Q1                   NA                -0.9697933   -2.3020565   -0.1750513
6 months    ki0047075b-MAL-ED         INDIA                          Q1                   NA                 0.0235754   -0.6855149    0.4343538
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.3342912   -1.0243776    0.1205529
6 months    ki1000109-EE              PAKISTAN                       Q1                   NA                 0.0061816   -0.0449234    0.0547871
6 months    ki1017093-NIH-Birth       BANGLADESH                     Q1                   NA                -0.0502282   -0.7724675    0.3777153
6 months    ki1017093b-PROVIDE        BANGLADESH                     Q1                   NA                -0.1560991   -0.6196731    0.1747933
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Q1                   NA                -0.0811102   -0.2674015    0.0777987
6 months    ki1112895-Guatemala BSC   GUATEMALA                      Q1                   NA                -0.0306141   -0.5937152    0.3335287
6 months    ki1114097-CMIN            PERU                           Q1                   NA                -0.0450671   -1.2933086    0.5237600
6 months    kiGH5241-JiVitA-4         BANGLADESH                     Q1                   NA                 0.0591850   -0.0112446    0.1247095
24 months   ki0047075b-MAL-ED         BANGLADESH                     Q1                   NA                -0.1573230   -0.5875267    0.1562998
24 months   ki0047075b-MAL-ED         INDIA                          Q1                   NA                 0.0230032   -0.4459555    0.3398672
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.1004887   -0.3372957    0.0943848
24 months   ki1017093b-PROVIDE        BANGLADESH                     Q1                   NA                -0.0147268   -0.2522078    0.1777159
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Q1                   NA                -0.1126355   -0.2972575    0.0457115
24 months   ki1114097-CMIN            GUINEA-BISSAU                  Q1                   NA                -0.1870585   -0.6598130    0.1510442
24 months   ki1114097-CMIN            PERU                           Q1                   NA                 0.0896316   -0.3284620    0.3761427
24 months   kiGH5241-JiVitA-4         BANGLADESH                     Q1                   NA                 0.0372920   -0.0156723    0.0874944
