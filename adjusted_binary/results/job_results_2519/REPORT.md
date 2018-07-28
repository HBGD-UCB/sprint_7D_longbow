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

**Intervention Variable:** pers_wast

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* W_mhtcm
* month
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_W_mhtcm
* delta_month
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        pers_wast    stunted   n_cell      n
----------  -------------------------  -----------------------------  ----------  --------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0      203    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       43    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0        7    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1        2    255
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      190    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1       44    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0        6    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        1    241
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      109    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       97    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0        5    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        1    212
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      170    191
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1       21    191
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      202    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        6    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0        1    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0    209
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      162    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        6    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0        1    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0    169
Birth       ki0047075b-MAL-ED          INDIA                          0                  0      159    206
Birth       ki0047075b-MAL-ED          INDIA                          0                  1       32    206
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       14    206
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        1    206
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      176    236
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       42    236
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       14    236
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        4    236
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      118    227
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       91    227
24 months   ki0047075b-MAL-ED          INDIA                          1                  0       14    227
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        4    227
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      220    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1       12    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0        4    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0    236
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      175    228
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       49    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0        4    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        0    228
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0      152    173
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1       18    173
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0        3    173
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        0    173
Birth       ki0047075b-MAL-ED          PERU                           0                  0      253    286
Birth       ki0047075b-MAL-ED          PERU                           0                  1       33    286
6 months    ki0047075b-MAL-ED          PERU                           0                  0      213    273
6 months    ki0047075b-MAL-ED          PERU                           0                  1       60    273
24 months   ki0047075b-MAL-ED          PERU                           0                  0      127    201
24 months   ki0047075b-MAL-ED          PERU                           0                  1       74    201
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      228    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       27    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        6    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    261
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      202    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       50    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        2    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    254
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      152    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       84    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        2    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    238
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      105    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       18    123
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      189    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       58    247
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       61    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1      153    214
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      219    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1       94    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       36    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       17    366
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       93    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1      219    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       12    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       44    368
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       67     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1       11     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        5     90
6 months    ki1000108-IRC              INDIA                          0                  0      246    407
6 months    ki1000108-IRC              INDIA                          0                  1       91    407
6 months    ki1000108-IRC              INDIA                          1                  0       61    407
6 months    ki1000108-IRC              INDIA                          1                  1        9    407
24 months   ki1000108-IRC              INDIA                          0                  0      192    409
24 months   ki1000108-IRC              INDIA                          0                  1      147    409
24 months   ki1000108-IRC              INDIA                          1                  0       47    409
24 months   ki1000108-IRC              INDIA                          1                  1       23    409
Birth       ki1000108-IRC              INDIA                          0                  0      279    388
Birth       ki1000108-IRC              INDIA                          0                  1       40    388
Birth       ki1000108-IRC              INDIA                          1                  0       64    388
Birth       ki1000108-IRC              INDIA                          1                  1        5    388
6 months    ki1000109-EE               PAKISTAN                       0                  0      169    372
6 months    ki1000109-EE               PAKISTAN                       0                  1      175    372
6 months    ki1000109-EE               PAKISTAN                       1                  0       10    372
6 months    ki1000109-EE               PAKISTAN                       1                  1       18    372
Birth       ki1000109-EE               PAKISTAN                       0                  0        1      2
Birth       ki1000109-EE               PAKISTAN                       0                  1        1      2
Birth       ki1000109-ResPak           PAKISTAN                       0                  0        4      7
Birth       ki1000109-ResPak           PAKISTAN                       0                  1        2      7
Birth       ki1000109-ResPak           PAKISTAN                       1                  0        1      7
Birth       ki1000109-ResPak           PAKISTAN                       1                  1        0      7
6 months    ki1000109-ResPak           PAKISTAN                       0                  0      128    235
6 months    ki1000109-ResPak           PAKISTAN                       0                  1       78    235
6 months    ki1000109-ResPak           PAKISTAN                       1                  0       24    235
6 months    ki1000109-ResPak           PAKISTAN                       1                  1        5    235
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      480    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       89    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0        9    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        5    583
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      377    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1      187    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0       10    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1        3    577
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0     1785   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1      193   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0       47   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        4   2029
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0        5      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        1      6
Birth       ki1101329-Keneba           GAMBIA                         0                  0     1427   1541
Birth       ki1101329-Keneba           GAMBIA                         0                  1       80   1541
Birth       ki1101329-Keneba           GAMBIA                         1                  0       32   1541
Birth       ki1101329-Keneba           GAMBIA                         1                  1        2   1541
6 months    ki1101329-Keneba           GAMBIA                         0                  0     1735   2057
6 months    ki1101329-Keneba           GAMBIA                         0                  1      269   2057
6 months    ki1101329-Keneba           GAMBIA                         1                  0       30   2057
6 months    ki1101329-Keneba           GAMBIA                         1                  1       23   2057
24 months   ki1101329-Keneba           GAMBIA                         0                  0     1026   1564
24 months   ki1101329-Keneba           GAMBIA                         0                  1      496   1564
24 months   ki1101329-Keneba           GAMBIA                         1                  0       19   1564
24 months   ki1101329-Keneba           GAMBIA                         1                  1       23   1564
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                  0      192    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                  1       78    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                  0        2    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                  1        8    280
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      391    563
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1      106    563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0       53    563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       13    563
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      246    499
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1      194    499
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0       30    499
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1       29    499
6 months    ki1114097-CMIN             BANGLADESH                     0                  0      146    243
6 months    ki1114097-CMIN             BANGLADESH                     0                  1       86    243
6 months    ki1114097-CMIN             BANGLADESH                     1                  0        4    243
6 months    ki1114097-CMIN             BANGLADESH                     1                  1        7    243
24 months   ki1114097-CMIN             BANGLADESH                     0                  0       75    242
24 months   ki1114097-CMIN             BANGLADESH                     0                  1      158    242
24 months   ki1114097-CMIN             BANGLADESH                     1                  0        2    242
24 months   ki1114097-CMIN             BANGLADESH                     1                  1        7    242
Birth       ki1114097-CMIN             BANGLADESH                     0                  0        5      8
Birth       ki1114097-CMIN             BANGLADESH                     0                  1        0      8
Birth       ki1114097-CMIN             BANGLADESH                     1                  0        2      8
Birth       ki1114097-CMIN             BANGLADESH                     1                  1        1      8
6 months    ki1114097-CMIN             PERU                           0                  0      578    627
6 months    ki1114097-CMIN             PERU                           0                  1       36    627
6 months    ki1114097-CMIN             PERU                           1                  0        8    627
6 months    ki1114097-CMIN             PERU                           1                  1        5    627
24 months   ki1114097-CMIN             PERU                           0                  0      167    234
24 months   ki1114097-CMIN             PERU                           0                  1       61    234
24 months   ki1114097-CMIN             PERU                           1                  0        3    234
24 months   ki1114097-CMIN             PERU                           1                  1        3    234
Birth       ki1114097-CMIN             PERU                           0                  0       10     10
6 months    ki1114097-CONTENT          PERU                           0                  0      196    215
6 months    ki1114097-CONTENT          PERU                           0                  1       19    215
24 months   ki1114097-CONTENT          PERU                           0                  0      143    164
24 months   ki1114097-CONTENT          PERU                           0                  1       21    164
Birth       ki1114097-CONTENT          PERU                           0                  0        2      2


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##          stunted
## pers_wast   0   1
##         0 127  74
##         1   0   0
##          stunted
## pers_wast   0   1
##         0  61 153
##         1   0   0
##          stunted
## pers_wast   0   1
##         0 143  21
##         1   0   0
##          stunted
## pers_wast   0   1
##         0 213  60
##         1   0   0
##          stunted
## pers_wast   0   1
##         0 189  58
##         1   0   0
##          stunted
## pers_wast   0   1
##         0 196  19
##         1   0   0
##          stunted
## pers_wast   0   1
##         0 170  21
##         1   0   0
##          stunted
## pers_wast   0   1
##         0 253  33
##         1   0   0
##          stunted
## pers_wast   0   1
##         0 105  18
##         1   0   0
##          stunted
## pers_wast  0
##         0 10
##         1  0
```




# Results Detail

## Results Plots
![](/tmp/70ea2b7d-da88-4ef6-8088-6907b13c4deb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/70ea2b7d-da88-4ef6-8088-6907b13c4deb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/70ea2b7d-da88-4ef6-8088-6907b13c4deb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/70ea2b7d-da88-4ef6-8088-6907b13c4deb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1417476   0.0642044   0.2192908
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.4072943   0.1260299   0.6885587
Birth       ki1000108-IRC              INDIA        0                    NA                0.1250416   0.0887518   0.1613314
Birth       ki1000108-IRC              INDIA        1                    NA                0.0725988   0.0123554   0.1328421
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.3006966   0.2498784   0.3515148
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.3184562   0.1924334   0.4444791
6 months    ki1000108-IRC              INDIA        0                    NA                0.2701022   0.2226744   0.3175301
6 months    ki1000108-IRC              INDIA        1                    NA                0.1284106   0.0505968   0.2062244
6 months    ki1000109-EE               PAKISTAN     0                    NA                0.5087268   0.4558292   0.5616243
6 months    ki1000109-EE               PAKISTAN     1                    NA                0.6428308   0.4655967   0.8200649
6 months    ki1000109-ResPak           PAKISTAN     0                    NA                0.3792677   0.3128810   0.4456543
6 months    ki1000109-ResPak           PAKISTAN     1                    NA                0.1725155   0.0353770   0.3096539
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.1567076   0.1268883   0.1865269
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.3389920   0.1172281   0.5607559
6 months    ki1101329-Keneba           GAMBIA       0                    NA                0.1353632   0.1204293   0.1502971
6 months    ki1101329-Keneba           GAMBIA       1                    NA                0.5096659   0.4407859   0.5785459
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                0.2133207   0.1772962   0.2493452
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1960297   0.1010038   0.2910557
6 months    ki1114097-CMIN             PERU         0                    NA                0.0586253   0.0400205   0.0772302
6 months    ki1114097-CMIN             PERU         1                    NA                0.3692188   0.1218571   0.6165804
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.7003151   0.6495075   0.7511226
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.7423869   0.6372660   0.8475077
24 months   ki1000108-IRC              INDIA        0                    NA                0.4336159   0.3807981   0.4864338
24 months   ki1000108-IRC              INDIA        1                    NA                0.3286253   0.2184610   0.4387897
24 months   ki1101329-Keneba           GAMBIA       0                    NA                0.3268436   0.3033219   0.3503653
24 months   ki1101329-Keneba           GAMBIA       1                    NA                0.2336929   0.1697687   0.2976171
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.4413395   0.3950044   0.4876746
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.4864254   0.3642945   0.6085564


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.1777778   0.0983474   0.2572081
Birth       ki1000108-IRC              INDIA        NA                   NA                0.1159794   0.0840777   0.1478811
6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.3032787   0.2561210   0.3504363
6 months    ki1000108-IRC              INDIA        NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1000109-EE               PAKISTAN     NA                   NA                0.5188172   0.4679751   0.5696593
6 months    ki1000109-ResPak           PAKISTAN     NA                   NA                0.3531915   0.2919518   0.4144312
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1101329-Keneba           GAMBIA       NA                   NA                0.1419543   0.1268686   0.1570400
6 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.2113677   0.1776128   0.2451225
6 months    ki1114097-CMIN             PERU         NA                   NA                0.0653907   0.0460250   0.0847565
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.7146739   0.6684741   0.7608737
24 months   ki1000108-IRC              INDIA        NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1101329-Keneba           GAMBIA       NA                   NA                0.3318414   0.3084975   0.3551853
24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.4468938   0.4032281   0.4905594


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000    1.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 2.8733781   1.1933399    6.9186509
Birth       ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000    1.0000000
Birth       ki1000108-IRC              INDIA        1                    0                 0.5805966   0.2412200    1.3974480
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 1.0590616   0.6888310    1.6282825
6 months    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000108-IRC              INDIA        1                    0                 0.4754148   0.2532531    0.8924636
6 months    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000109-EE               PAKISTAN     1                    0                 1.2636072   0.9411309    1.6965792
6 months    ki1000109-ResPak           PAKISTAN     0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000109-ResPak           PAKISTAN     1                    0                 0.4548647   0.2015522    1.0265423
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 2.1632141   1.0981498    4.2612540
6 months    ki1101329-Keneba           GAMBIA       0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1101329-Keneba           GAMBIA       1                    0                 3.7651727   3.1671966    4.4760486
6 months    ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL        1                    0                 0.9189438   0.5500462    1.5352489
6 months    ki1114097-CMIN             PERU         0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1114097-CMIN             PERU         1                    0                 6.2979410   3.0008372   13.2176650
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 1.0600755   0.9042332    1.2427769
24 months   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1000108-IRC              INDIA        1                    0                 0.7578719   0.5305146    1.0826654
24 months   ki1101329-Keneba           GAMBIA       0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1101329-Keneba           GAMBIA       1                    0                 0.7149992   0.5398716    0.9469360
24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.1021570   0.8405129    1.4452487


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0360302   -0.0071844    0.0792449
Birth       ki1000108-IRC              INDIA        0                    NA                -0.0090623   -0.0218444    0.0037199
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0025821   -0.0170975    0.0222617
6 months    ki1000108-IRC              INDIA        0                    NA                -0.0244020   -0.0408116   -0.0079924
6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0100904   -0.0043160    0.0244969
6 months    ki1000109-ResPak           PAKISTAN     0                    NA                -0.0260762   -0.0469750   -0.0051774
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0045274   -0.0017534    0.0108082
6 months    ki1101329-Keneba           GAMBIA       0                    NA                 0.0065911    0.0028760    0.0103062
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0019530   -0.0139807    0.0100747
6 months    ki1114097-CMIN             PERU         0                    NA                 0.0067654    0.0001667    0.0133641
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0143588   -0.0041971    0.0329147
24 months   ki1000108-IRC              INDIA        0                    NA                -0.0179680   -0.0392263    0.0032902
24 months   ki1101329-Keneba           GAMBIA       0                    NA                 0.0049978    0.0008162    0.0091794
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0055543   -0.0102527    0.0213613


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.2026700   -0.0654242    0.4033033
Birth       ki1000108-IRC              INDIA        0                    NA                -0.0781368   -0.1925231    0.0252776
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0085139   -0.0585386    0.0713191
6 months    ki1000108-IRC              INDIA        0                    NA                -0.0993161   -0.1674844   -0.0351281
6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0194489   -0.0087907    0.0468981
6 months    ki1000109-ResPak           PAKISTAN     0                    NA                -0.0738301   -0.1349613   -0.0159916
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0280796   -0.0114081    0.0660256
6 months    ki1101329-Keneba           GAMBIA       0                    NA                 0.0464311    0.0202521    0.0719105
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0092400   -0.0677729    0.0460843
6 months    ki1114097-CMIN             PERU         0                    NA                 0.1034617    0.0012472    0.1952153
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0200915   -0.0063327    0.0458218
24 months   ki1000108-IRC              INDIA        0                    NA                -0.0432289   -0.0957712    0.0067939
24 months   ki1101329-Keneba           GAMBIA       0                    NA                 0.0150609    0.0023840    0.0275767
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0124286   -0.0235960    0.0471854
