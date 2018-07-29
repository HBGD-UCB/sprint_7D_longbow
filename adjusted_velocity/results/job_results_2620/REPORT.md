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

**Outcome Variable:** y_rate_haz

## Predictor Variables

**Intervention Variable:** pers_wast

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* W_mhtcm
* W_nrooms
* month
* brthmon
* impfloor
* delta_W_mage
* delta_meducyrs
* delta_W_mhtcm
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        pers_wast    n_cell      n
-------------  -------------------------  -----------------------------  ----------  -------  -----
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0               237    244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                 7    244
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               619    634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                15    634
0-3 months     ki1114097-CMIN             BANGLADESH                     0                41     43
0-3 months     ki1114097-CMIN             BANGLADESH                     1                 2     43
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               180    180
0-3 months     ki1101329-Keneba           GAMBIA                         0              1246   1276
0-3 months     ki1101329-Keneba           GAMBIA                         1                30   1276
0-3 months     ki0047075b-MAL-ED          INDIA                          0               187    201
0-3 months     ki0047075b-MAL-ED          INDIA                          1                14    201
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                78     87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                 9     87
0-3 months     ki1000108-IRC              INDIA                          0               310    377
0-3 months     ki1000108-IRC              INDIA                          1                67    377
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               172    175
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                 3    175
0-3 months     ki1000109-EE               PAKISTAN                       0               277    297
0-3 months     ki1000109-EE               PAKISTAN                       1                20    297
0-3 months     ki1000109-ResPak           PAKISTAN                       0                69     78
0-3 months     ki1000109-ResPak           PAKISTAN                       1                 9     78
0-3 months     ki0047075b-MAL-ED          PERU                           0               271    271
0-3 months     ki1114097-CMIN             PERU                           0                89     93
0-3 months     ki1114097-CMIN             PERU                           1                 4     93
0-3 months     ki1114097-CONTENT          PERU                           0                29     29
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               227    229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               229    229
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               226    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                 5    231
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               560    574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                14    574
3-6 months     ki1114097-CMIN             BANGLADESH                     0               175    185
3-6 months     ki1114097-CMIN             BANGLADESH                     1                10    185
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               207    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                 1    208
3-6 months     ki1101329-Keneba           GAMBIA                         0              1359   1397
3-6 months     ki1101329-Keneba           GAMBIA                         1                38   1397
3-6 months     ki0047075b-MAL-ED          INDIA                          0               211    229
3-6 months     ki0047075b-MAL-ED          INDIA                          1                18    229
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0               263    307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                44    307
3-6 months     ki1000108-IRC              INDIA                          0               329    397
3-6 months     ki1000108-IRC              INDIA                          1                68    397
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               229    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                 4    233
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0               411    471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                60    471
3-6 months     ki1000109-EE               PAKISTAN                       0               309    331
3-6 months     ki1000109-EE               PAKISTAN                       1                22    331
3-6 months     ki1000109-ResPak           PAKISTAN                       0               141    156
3-6 months     ki1000109-ResPak           PAKISTAN                       1                15    156
3-6 months     ki0047075b-MAL-ED          PERU                           0               267    267
3-6 months     ki1114097-CMIN             PERU                           0               400    407
3-6 months     ki1114097-CMIN             PERU                           1                 7    407
3-6 months     ki1114097-CONTENT          PERU                           0               214    214
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               239    241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               239    239
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1614   1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                46   1660
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               215    220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                 5    220
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               533    545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                12    545
6-12 months    ki1114097-CMIN             BANGLADESH                     0               158    164
6-12 months    ki1114097-CMIN             BANGLADESH                     1                 6    164
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0               193    194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                 1    194
6-12 months    ki1101329-Keneba           GAMBIA                         0              1270   1302
6-12 months    ki1101329-Keneba           GAMBIA                         1                32   1302
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0               167    171
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                 4    171
6-12 months    ki0047075b-MAL-ED          INDIA                          0               206    224
6-12 months    ki0047075b-MAL-ED          INDIA                          1                18    224
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               274    321
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                47    321
6-12 months    ki1000108-IRC              INDIA                          0               331    400
6-12 months    ki1000108-IRC              INDIA                          1                69    400
6-12 months    ki0047075b-MAL-ED          NEPAL                          0               226    230
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                 4    230
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0               417    475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                58    475
6-12 months    ki1000109-EE               PAKISTAN                       0                 3      4
6-12 months    ki1000109-EE               PAKISTAN                       1                 1      4
6-12 months    ki1000109-ResPak           PAKISTAN                       0               122    138
6-12 months    ki1000109-ResPak           PAKISTAN                       1                16    138
6-12 months    ki0047075b-MAL-ED          PERU                           0               237    237
6-12 months    ki1114097-CMIN             PERU                           0               348    357
6-12 months    ki1114097-CMIN             PERU                           1                 9    357
6-12 months    ki1114097-CONTENT          PERU                           0               213    213
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               230    232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               223    223
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1054   1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                29   1083
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               200    206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 6    206
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               447    458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                11    458
12-24 months   ki1114097-CMIN             BANGLADESH                     0               134    138
12-24 months   ki1114097-CMIN             BANGLADESH                     1                 4    138
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0               164    165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1    165
12-24 months   ki1101329-Keneba           GAMBIA                         0              1115   1147
12-24 months   ki1101329-Keneba           GAMBIA                         1                32   1147
12-24 months   ki0047075b-MAL-ED          INDIA                          0               207    225
12-24 months   ki0047075b-MAL-ED          INDIA                          1                18    225
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               269    320
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                51    320
12-24 months   ki1000108-IRC              INDIA                          0               329    396
12-24 months   ki1000108-IRC              INDIA                          1                67    396
12-24 months   ki0047075b-MAL-ED          NEPAL                          0               222    226
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                 4    226
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0               326    367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                41    367
12-24 months   ki0047075b-MAL-ED          PERU                           0               191    191
12-24 months   ki1114097-CMIN             PERU                           0               157    160
12-24 months   ki1114097-CMIN             PERU                           1                 3    160
12-24 months   ki1114097-CONTENT          PERU                           0                38     38
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               228    230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               207    207
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 2      2


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##          y_rate_haz
## pers_wast -0.655648866666667 -0.637769516129032 -0.595109347826087
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.555435391304348 -0.542210739130435 -0.480263684210526
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.474238870967742 -0.469475152173913 -0.414469318681319
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.401241574468085 -0.394414351648352 -0.359767419354839
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.327824433333333 -0.290341227272727 -0.264057065934066
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.255220586206897 -0.247344593406593 -0.225672290322581
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.216296533333333 -0.206157633333333 -0.199398366666667
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.173342483870968 -0.150448193548387 -0.145471173913043
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.138564966666667 -0.135552684782609 -0.131344840909091
##         0                  2                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.130357285714286 -0.129432765957447 -0.125634195652174
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.109103380434783 -0.102491054347826 -0.100310393617021
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.0935898461538462 -0.0802198681318682 -0.0694294239130435
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0675926666666666 -0.0668498901098901 -0.0647163829787234
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0642130333333333 -0.0635073956043957 -0.058244744680851
##         0                   1                   1                  1
##         1                   0                   0                  0
##          y_rate_haz
## pers_wast -0.0580993146067416 -0.0540741333333333 -0.0528986086956522
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0454502413793104 -0.0439352333333333 -0.0410112808988764
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.033424945054945 -0.0233974615384615 -0.0101389
##         0                  1                   1          3
##         1                  0                   0          0
##          y_rate_haz
## pers_wast -0.0100274835164835 -0.00661232608695653 -0.00330616304347826
##         0                   1                    1                    1
##         1                   0                    0                    0
##          y_rate_haz
## pers_wast 0.00330616304347826 0.00337963333333334 0.0231431413043478
##         0                   1                   1                  1
##         1                   0                   0                  0
##          y_rate_haz
## pers_wast 0.0388298297872341 0.0392473548387097 0.03954171
##         0                  1                  1          1
##         1                  0                  0          0
##          y_rate_haz
## pers_wast 0.0401099340659341 0.0425179677419354 0.0439352333333333
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0534799120879121 0.0608334 0.0647163829787234
##         0                  1         1                  1
##         1                  0         0                  0
##          y_rate_haz
## pers_wast 0.0675926666666666 0.0701923846153846 0.0751873483146067
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0768773736263736 0.0878704666666667 0.09188378125
##         0                  1                  1             1
##         1                  0                  0             0
##          y_rate_haz
## pers_wast 0.0980093666666666 0.105797217391304 0.114907533333333
##         0                  1                 1                 1
##         1                  0                 0                 0
##          y_rate_haz
## pers_wast 0.116198629213483 0.125634195652174 0.1318057 0.143727263736264
##         0                 1                 1         1                 1
##         1                 0                 0         0                 0
##          y_rate_haz
## pers_wast 0.150448193548387 0.158842766666667 0.16158871875
##         0                 1                 1             1
##         1                 0                 0             0
##          y_rate_haz
## pers_wast 0.191757456521739 0.1926391 0.193864681318681 0.195535928571429
##         0                 1         1                 1                 1
##         1                 0         0                 0                 0
##          y_rate_haz
## pers_wast 0.196018733333333 0.203892164835165 0.207092425531915
##         0                 2                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.209537266666667 0.210577153846154 0.214900597826087
##         0                 1                 1                 2
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.216799882978723 0.224819086956522 0.225866584158416
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.231431413043478 0.245407465909091 0.24796222826087 0.2534725
##         0                 1                 1                1         1
##         1                 0                 0                0         0
##          y_rate_haz
## pers_wast 0.254029582417582 0.264493043478261 0.265337170212766
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.26999093258427 0.271808808510638 0.276197620689655
##         0                1                 1                 1
##         1                0                 0                 0
##          y_rate_haz
## pers_wast 0.280243752808989 0.280769538461538 0.281516265957447
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.281754694736842 0.289109227722772 0.297407733333333
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.297625774193548 0.304167 0.313978838709677 0.314085489130435
##         0                 1        2                 1                 1
##         1                 0        0                 0                 0
##          y_rate_haz
## pers_wast 0.323790677419355 0.327310141304348 0.330331903225806
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.337591945054945 0.34341435483871 0.347147119565217
##         0                 1                1                 2
##         1                 0                0                 0
##          y_rate_haz
## pers_wast 0.349955580645161 0.350961923076923 0.376120483870968
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.387729362637363 0.396739565217391 0.398563655172414
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.419074533333333 0.421909064516129 0.425213051020408
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.429801195652174 0.434524285714286 0.443025847826087 0.4562505
##         0                 1                 1                 1         1
##         1                 0                 0                 0         0
##          y_rate_haz
## pers_wast 0.4663894 0.477976714285714 0.481319208791209 0.487321322580645
##         0         1                 1                 1                 1
##         1         0                 0                 0                 0
##          y_rate_haz
## pers_wast 0.502536782608696 0.511401659340659 0.521429142857143
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.528114131868132 0.531456626373626 0.555435391304348
##         0                 2                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.561539076923077 0.5779173 0.582169096774193 0.594815466666667
##         0                 1         1                 1                 1
##         1                 0         0                 0                 0
##          y_rate_haz
## pers_wast 0.598306516483517 0.618041457446808 0.6184729 0.621558652173913
##         0                 1                 1         1                 1
##         1                 0                 0         0                 0
##          y_rate_haz
## pers_wast 0.621703978021978 0.622004426966292 0.624864815217391
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.669850921348315 0.671841395604395 0.705408574468085
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.74203378021978 0.745376274725275 0.783068234042553
##         0                1                 1                 1
##         1                0                 0                 0
##          y_rate_haz
## pers_wast 0.796011510638298 0.804570774193548 0.813316108695652
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.817653225806452 0.828592862068966 0.929213472527473
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.950094674157303 0.969954766666667 0.983689021276596
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 1.10479048275862 1.32481626666667
##         0                1                1
##         1                0                0
##          y_rate_haz
## pers_wast -1.216668 -1.01061938709677 -0.847088741935484
##         0         1                 1                  1
##         1         0                 0                  0
##          y_rate_haz
## pers_wast -0.826540760869565 -0.799247329787234 -0.792775691489362
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.767029826086957 -0.750499010869565 -0.74058052173913
##         0                  1                  1                 1
##         1                  0                  0                 0
##          y_rate_haz
## pers_wast -0.719534838709677 -0.705266340659341 -0.697600402173913
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.692824833333333 -0.669814563829787 -0.634498903225806
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.624513095744681 -0.611604612903226 -0.601792774193548
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.598306516483517 -0.591245966292135 -0.56908664516129
##         0                  1                  1                 1
##         1                  0                  0                 0
##          y_rate_haz
## pers_wast -0.548823065217391 -0.544120966666667 -0.526568677419355
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.524771637362637 -0.523298064516129 -0.515761434782609
##         0                  2                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.50471667032967 -0.503674387096774 -0.497133161290323
##         0                 2                  1                  1
##         1                 0                  0                  0
##          y_rate_haz
## pers_wast -0.493862548387097 -0.491844510638298 -0.490591935483871
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.479063025 -0.477509483870968 -0.472781315217391
##         0            1                  1                  1
##         1            0                  0                  0
##          y_rate_haz
## pers_wast -0.46769764516129 -0.462722138297872 -0.453014680851064
##         0                 1                  1                  1
##         1                 0                  0                  0
##          y_rate_haz
## pers_wast -0.449638173913044 -0.433107358695652 -0.429801195652174
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.423188869565217 -0.417420670212766 -0.415367838709677
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.409964217391304 -0.402176366666667 -0.395067482758621
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.393433402173913 -0.381826659574468 -0.38020875
##         0                  1                  1           1
##         1                  0                  0           0
##          y_rate_haz
## pers_wast -0.377701879120879 -0.366984097826087 -0.359767419354839
##         0                  1                  2                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.358241133333333 -0.347619428571429 -0.337591945054945
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.337228630434783 -0.336873129032258 -0.330616304347826
##         0                  1                  1                  2
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.327824433333333 -0.313874457446809 -0.310779326086957
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.307509494505494 -0.297482010989011 -0.294248510869565
##         0                  1                  2                  2
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.2838892 -0.274411532608696 -0.271460870967742
##         0          1                  2                  1
##         1          0                  0                  0
##          y_rate_haz
## pers_wast -0.26491964516129 -0.264493043478261 -0.260714571428571
##         0                 1                  1                  1
##         1                 0                  0                  0
##          y_rate_haz
## pers_wast -0.258378419354839 -0.252393893617021 -0.247344593406593
##         0                  1                  1                  2
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.24202535483871 -0.235814865168539 -0.234737576086957
##         0                 1                  1                  1
##         1                 0                  0                  0
##          y_rate_haz
## pers_wast -0.229815066666667 -0.229743159574468 -0.228942903225806
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.224819086956522 -0.221512923913044 -0.221512923913043
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.219131064516129 -0.217262142857143 -0.214900597826087
##         0                  2                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.213919648351648 -0.212589838709677 -0.202778
##         0                  3                  1         1
##         1                  0                  0         0
##          y_rate_haz
## pers_wast -0.201675945652174 -0.198369782608696 -0.19414914893617
##         0                  2                  1                 1
##         1                  0                  0                 0
##          y_rate_haz
## pers_wast -0.190522186813187 -0.188451293478261 -0.187677510638298
##         0                  2                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.186424935483871 -0.1825002 -0.175226641304348
##         0                  2          1                  1
##         1                  0          0                  0
##          y_rate_haz
## pers_wast -0.174297943820225 -0.17426234375 -0.1723613 -0.17046721978022
##         0                  1              1          1                 1
##         1                  0              0          0                 0
##          y_rate_haz
## pers_wast -0.170071870967742 -0.168981666666667 -0.164045123595506
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.16353064516129 -0.160260032258064 -0.155319319148936
##         0                 1                  1                  1
##         1                 0                  0                  0
##          y_rate_haz
## pers_wast -0.153718806451613 -0.148703866666667 -0.14063635483871
##         0                  1                  1                 1
##         1                  0                  0                 0
##          y_rate_haz
## pers_wast -0.139140223404255 -0.138858847826087 -0.135552684782609
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.13369978021978 -0.132668585106383 -0.13224652173913
##         0                 1                  1                 2
##         1                 0                  0                 0
##          y_rate_haz
## pers_wast -0.128426066666667 -0.123672296703297 -0.123033842696629
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.122961127659574 -0.122328032608696 -0.121012677419355
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.120329802197802 -0.115715706521739 -0.114471451612903
##         0                  1                  1                  2
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.113253670212766 -0.112409543478261 -0.111734816326531
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.108148266666667 -0.107930225806452 -0.106959824175824
##         0                  1                  1                  2
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.101389 -0.0969323406593407 -0.089266402173913
##         0         1                   1                  1
##         1         0                   0                  0
##          y_rate_haz
## pers_wast -0.0883065483870968 -0.0859602391304349 -0.0793479130434783
##         0                   2                   1                   3
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.07604175 -0.0752240967741936 -0.0752240967741935
##         0           1                   1                   1
##         1           0                   0                   0
##          y_rate_haz
## pers_wast -0.0744238404255319 -0.0735348791208791 -0.0719534838709677
##         0                   2                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0709723 -0.0694294239130435 -0.0686828709677419
##         0          1                   1                   1
##         1          0                   0                   0
##          y_rate_haz
## pers_wast -0.0675926666666667 -0.0642130333333333 -0.0628170978260869
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0622159772727273 -0.0601649010989011 -0.0595109347826087
##         0                   1                   2                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0568224065934066 -0.0562047717391305 -0.0562047717391304
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0534799120879121 -0.0523298064516129 -0.049592445652174
##         0                   1                   2                  1
##         1                   0                   0                  0
##          y_rate_haz
## pers_wast -0.0495924456521739 -0.0434524285714285 -0.0425179677419355
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0355940106382978 -0.0334249450549451 -0.0297554673913044
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0264493043478261 -0.0258865531914894 -0.0233974615384615
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.020054967032967 -0.019414914893617 -0.0168981666666667
##         0                  2                  1                   1
##         1                  0                  0                   0
##          y_rate_haz
## pers_wast -0.0167124725274725 -0.0165308152173913 -0.0150205925925926
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.00675926666666667 -0.00330616304347826 0.0101389
##         0                    1                    1         1
##         1                    0                    0         0
##          y_rate_haz
## pers_wast 0.0129432765957447 0.0161790957446808 0.0161790957446809
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0276515454545455 0.0300824505494506 0.0327061290322581
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0388298297872341 0.0396739565217391 0.040109934065934
##         0                  1                  1                 1
##         1                  0                  0                 0
##          y_rate_haz
## pers_wast 0.0401099340659341 0.0405556 0.0501374175824176
##         0                  1         1                  1
##         1                  0         0                  0
##          y_rate_haz
## pers_wast 0.0528986086956521 0.0550089255319149 0.0556004193548387
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0582447446808511 0.0601649010989012 0.0615169213483146
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0686828709677419 0.0744238404255319 0.0776596595744681
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0786049550561798 0.0826540760869566 0.0841312978723404
##         0                  1                  1                  2
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0925725652173913 0.0948477741935484 0.101389 0.10361732967033
##         0                  1                  2        2                1
##         1                  0                  0        0                0
##          y_rate_haz
## pers_wast 0.113253670212766 0.114471451612903 0.119021869565217
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.122328032608696 0.125634195652174 0.127014791208791
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.129432765957447 0.1318057 0.13369978021978 0.147069758241758
##         0                 1         1                1                 1
##         1                 0         0                0                 0
##          y_rate_haz
## pers_wast 0.160627516853933 0.165602033333333 0.17046721978022
##         0                 1                 1                3
##         1                 0                 0                0
##          y_rate_haz
## pers_wast 0.183837197802198 0.190522186813187 0.190913329787234
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.197384968085106 0.20054967032967 0.200620787234043
##         0                 1                1                 1
##         1                 0                0                 0
##          y_rate_haz
## pers_wast 0.20828827173913 0.211594434782609 0.219676166666667
##         0                1                 1                 1
##         1                0                 0                 0
##          y_rate_haz
## pers_wast 0.241349902173913 0.24796222826087 0.26739956043956
##         0                 2                1                1
##         1                 0                0                0
##          y_rate_haz
## pers_wast 0.28433002173913 0.290942347826087 0.297554673913043 0.304167
##         0                1                 1                 1        1
##         1                0                 0                 0        0
##          y_rate_haz
## pers_wast 0.317249451612903 0.331204066666667 0.434991516129032
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.491844510638298 0.522373760869565 0.788217709677419
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast -0.884849454545455 -0.7806953 -0.768773736263736
##         0                  1          1                  1
##         1                  0          0                  0
##          y_rate_haz
## pers_wast -0.763954325581395 -0.741620662921348 -0.702730655172414
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.665787766666667 -0.6387507 -0.600329605263158
##         0                  1          1                  1
##         1                  0          0                  0
##          y_rate_haz
## pers_wast -0.597964670454545 -0.584410752808989 -0.557028722891566
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.485300157303371 -0.4765283 -0.469393518518519
##         0                  1          1                  1
##         1                  0          0                  0
##          y_rate_haz
## pers_wast -0.458039717647059 -0.445387392857143 -0.439352333333333
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.438968284090909 -0.434524285714286 -0.432237315789474
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.429412235294118 -0.408935633333333 -0.391571310344828
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.388213144736842 -0.381898566666667 -0.381082793103448
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.378590840425532 -0.3650004 -0.362926534090909
##         0                  1          1                  1
##         1                  0          0                  0
##          y_rate_haz
## pers_wast -0.355431101123595 -0.341342966666667 -0.333135285714286
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.330616304347826 -0.32951425 -0.328090247191011
##         0                  1           1                  1
##         1                  0           0                  0
##          y_rate_haz
## pers_wast -0.324905659090909 -0.321065166666667 -0.317837426966292
##         0                  1                  1                  2
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.310779326086957 -0.304167 -0.300860836956522
##         0                  1         1                  1
##         1                  0         0                  0
##          y_rate_haz
## pers_wast -0.297174655172414 -0.294139516483516 -0.287454527472527
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.285620231707317 -0.282440785714286 -0.280243752808989
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.279409220930233 -0.276515454545455 -0.275198714285714
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.2737503 -0.2636114 -0.260714571428571 -0.257093535714286
##         0          1          2                  1                  1
##         1          0          0                  0                  0
##          y_rate_haz
## pers_wast -0.252320352272727 -0.2433336 -0.236574333333333
##         0                  1          1                  1
##         1                  0          0                  0
##          y_rate_haz
## pers_wast -0.235814865168539 -0.228979651685393 -0.224668806818182
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.223544421686747 -0.219879759036145 -0.218851865853659
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.218284552941176 -0.215309224719101 -0.210288296296296
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.203892164835165 -0.201638797752809 -0.200305097560976
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.19789178313253 -0.195063619565217 -0.1939064625
##         0                 1                  1             1
##         1                 0                  0             0
##          y_rate_haz
## pers_wast -0.193235505882353 -0.184672821428571 -0.175343329411765
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.17046721978022 -0.161790957446808 -0.150374696629213
##         0                 1                  1                  1
##         1                 0                  0                  0
##          y_rate_haz
## pers_wast -0.135185333333333 -0.132585615384615 -0.131344840909091
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.122366034482759 -0.119356670886076 -0.1115279 -0.1102605375
##         0                  1                  1          2             1
##         1                  0                  0          0             0
##          y_rate_haz
## pers_wast -0.107930225806452 -0.10645845 -0.103861902439024
##         0                  1           1                  1
##         1                  0           0                  0
##          y_rate_haz
## pers_wast -0.0946297333333333 -0.0901235555555556 -0.0896902692307692
##         0                   1                   2                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.089024487804878 -0.0869048571428571 -0.0859602391304349
##         0                  1                   1                   1
##         1                  0                   0                   0
##          y_rate_haz
## pers_wast -0.0859602391304348 -0.0835623626373626 -0.0832838214285714
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0802198681318681 -0.07604175 -0.0668498901098901
##         0                   1           1                   1
##         1                   0           0                   0
##          y_rate_haz
## pers_wast -0.0667683658536585 -0.0644118352941176 -0.0587595340909091
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0506945 -0.0470734642857143 -0.0467949230769231
##         0          1                   2                   1
##         1          0                   0                   0
##          y_rate_haz
## pers_wast -0.0434524285714285 -0.0393627882352941 -0.0345644318181818
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0318314302325581 -0.0289682857142857 -0.0279693793103448
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0264493043478261 -0.0239232471910112 -0.0205056404494382
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0187757407407407 -0.0165308152173913 -0.0144841428571429
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0132246521739131 -0.0130824516129032 -0.0100274835164836
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.00675926666666667 -0.00661232608695652 -0.00654122580645162
##         0                    1                    1                    1
##         1                    0                    0                    0
##          y_rate_haz
## pers_wast -0.00330616304347826 0.00334249450549458 0.00675926666666667
##         0                    1                   1                   1
##         1                    0                   0                   0
##          y_rate_haz
## pers_wast 0.0202778 0.0207386590909091 0.0222561219512195
##         0         1                  1                  1
##         1         0                  0                  0
##          y_rate_haz
## pers_wast 0.0262860370370371 0.0266146125 0.0286274823529412 0.0304167
##         0                  1            1                  1         1
##         1                  0            0                  0         0
##          y_rate_haz
## pers_wast 0.0311079886363637 0.0341760674157303 0.034961724137931
##         0                  1                  1                 1
##         1                  0                  0                 0
##          y_rate_haz
## pers_wast 0.0413066296296296 0.0439352333333333 0.04752609375
##         0                  1                  1             1
##         1                  0                  0             0
##          y_rate_haz
## pers_wast 0.0478464943820225 0.0506945 0.0528986086956521
##         0                  1         1                  1
##         1                  0         0                  0
##          y_rate_haz
## pers_wast 0.0601649010989011 0.0654122580645161 0.0656724204545455
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0668498901098901 0.070736511627907 0.0709723
##         0                  1                 1         1
##         1                  0                 0         0
##          y_rate_haz
## pers_wast 0.0727355869565217 0.0878704666666666 0.0898675227272727
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0909004827586207 0.0990311162790698 0.1026563625
##         0                  1                  1            2
##         1                  0                  0            0
##          y_rate_haz
## pers_wast 0.106959824175824 0.119356670886076 0.123033842696629
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.128070315789474 0.136350724137931 0.141220392857143 0.1520835
##         0                 1                 1                 1         1
##         1                 0                 0                 0         0
##          y_rate_haz
## pers_wast 0.160823931034483 0.162001989130435 0.162452829545455
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.1634897625 0.167462730337079 0.172822159090909 0.174896025
##         0            1                 1                 1           1
##         1            0                 0                 0           0
##          y_rate_haz
## pers_wast 0.180494703296703 0.1825002 0.185145130434783 0.185297137931034
##         0                 1         1                 1                 1
##         1                 0         0                 0                 0
##          y_rate_haz
## pers_wast 0.187968370786517 0.189259466666667 0.190104375
##         0                 1                 1           1
##         1                 0                 0           0
##          y_rate_haz
## pers_wast 0.192289482758621 0.196018733333333 0.196595743902439
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.20054967032967 0.203892164835165 0.209537266666667
##         0                1                 1                 1
##         1                0                 0                 0
##          y_rate_haz
## pers_wast 0.210577153846154 0.214706117647059 0.218376307692308
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.226270573170732 0.22812525 0.238043739130435 0.250490470588235
##         0                 2          2                 1                 1
##         1                 0          0                 0                 0
##          y_rate_haz
## pers_wast 0.257647341176471 0.261225776470588 0.2623440375
##         0                 1                 1            1
##         1                 0                 0            0
##          y_rate_haz
## pers_wast 0.294139516483516 0.296748292682927 0.300411851851852
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.300860836956522 0.304167 0.307584606741573 0.307788035714286
##         0                 1        1                 1                 1
##         1                 0        0                 0                 0
##          y_rate_haz
## pers_wast 0.318314302325581 0.327564461538462 0.332136379310345
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.340534793478261 0.360494222222222 0.365724607142857
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.367370532467532 0.373596423913043 0.386780259259259
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.418676929411765 0.422454166666667 0.423188869565217
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.466619829545455 0.544120966666667 0.545274987804878
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.640923321428571 0.65378424137931 0.686065566666667 0.722396625
##         0                 1                1                 1           1
##         1                 0                0                 0           0
##          y_rate_haz
## pers_wast 0.754920506024096 0.922989517241379
##         0                 1                 1
##         1                 0                 0
##          y_rate_haz
## pers_wast -0.542041192307692 -0.525379363636364 -0.375270974025974
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.339263192307692 -0.23522248 -0.22711136 -0.225000246575342
##         0                  1           1           1                  1
##         1                  0           0           0                  0
##          y_rate_haz
## pers_wast -0.188103276315789 -0.12572236 -0.120065921052632
##         0                  1           1                  1
##         1                  0           0                  0
##          y_rate_haz
## pers_wast -0.0896902692307692 -0.0750541948051949 -0.0632035324675325
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0560307631578947 -0.0506945 -0.0434524285714286
##         0                   1          1                   1
##         1                   0          0                   0
##          y_rate_haz
## pers_wast 0.0120065921052632 0.02534725 0.158008831168831
##         0                  1          1                 1
##         1                  0          0                 0
##          y_rate_haz
## pers_wast 0.178154957142857 0.181051785714286 0.225162584415584
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.2775523875 0.288366116883117 0.308277364864865
##         0            1                 1                 1
##         1            0                 0                 0
##          y_rate_haz
## pers_wast 0.387121636363636 0.41772268 0.45839252112676 0.460252697368421
##         0                 1          1                1                 1
##         1                 0          0                0                 0
##          y_rate_haz
## pers_wast -0.135922038147139 -0.125976523160763 -0.112500123287671
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.10916678630137 -0.0991667753424657 -0.0988958278688525
##         0                 1                   1                   1
##         1                 0                   0                   0
##          y_rate_haz
## pers_wast -0.0986263569482289 -0.096096717032967 -0.0858334273972603
##         0                   1                  1                   1
##         1                   0                  0                   0
##          y_rate_haz
## pers_wast -0.0825000904109589 -0.0808334219178082 -0.0791667534246575
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0728995289256198 -0.0700000767123288 -0.069547826446281
##         0                   1                   1                  1
##         1                   0                   0                  0
##          y_rate_haz
## pers_wast -0.0691667424657534 -0.0685211373626373 -0.0675000739726027
##         0                   1                   1                   2
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0671322261580381 -0.0653581983471074 -0.0641667369863014
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0616667342465753 -0.0611685702479339 -0.0601649010989011
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0596730899182561 -0.058333397260274 -0.0581740163934426
##         0                   1                  1                   1
##         1                   0                  0                   0
##          y_rate_haz
## pers_wast -0.0573429590163934 -0.0566667287671233 -0.0555291253405995
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0555291253405994 -0.0551511593406593 -0.0550000602739726
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0541667260273972 -0.0539789323943662 -0.0531876721311475
##         0                   1                   1                   2
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0530049731903485 -0.0522139536784741 -0.0511134628099174
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0506945 -0.0500000547945205 -0.0484661703296703
##         0          1                   1                   1
##         1          0                   0                   0
##          y_rate_haz
## pers_wast -0.0483333863013699 -0.0482013278688525 -0.0466667178082192
##         0                   2                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0462862826086957 -0.0457081557377049 -0.0440460409836066
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0433333808219178 -0.0425000465753425 -0.0400000438356164
##         0                   2                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0388474157608696 -0.0371943342391304 -0.0366667068493151
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0358333726027397 -0.0355412527173913 -0.0350961923076923
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0350000383561644 -0.0347147119565217 -0.0340733524590164
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0325000356164383 -0.0314941307901907 -0.0299180655737705
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0298365449591281 -0.0283333643835616 -0.0282559508196721
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0275755796703297 -0.026666695890411 -0.0258333616438356
##         0                   1                  2                   1
##         1                   0                  0                   0
##          y_rate_haz
## pers_wast -0.0257627786885246 -0.0251377685950413 -0.0242330851648352
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0241666931506849 -0.0236129644736842 -0.0233333589041096
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0231431413043478 -0.0225618379120879 -0.0225000246575342
##         0                   1                   2                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0200000219178082 -0.019891029972752 -0.0191143196721311
##         0                   1                  1                   1
##         1                   0                  0                   0
##          y_rate_haz
## pers_wast -0.0190622370572207 -0.0183333534246575 -0.0158768489010989
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0158333506849315 -0.0150412252747253 -0.0150000164383562
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0141279754098361 -0.0132969180327869 -0.0124658606557377
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0116987307692308 -0.0116666794520548 -0.0108333452054795
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0108333452054794 -0.00750000821917811 -0.00747951639344261
##         0                   1                    1                    1
##         1                   0                    0                    0
##          y_rate_haz
## pers_wast -0.007459136239782 -0.00666667397260271 -0.0058333397260274
##         0                  1                    1                   1
##         1                  0                    0                   0
##          y_rate_haz
## pers_wast -0.00502755371900827 -0.00500000547945206 -0.00332422950819672
##         0                    1                    1                    2
##         1                    0                    0                    0
##          y_rate_haz
## pers_wast -0.00331517166212534 -0.00250000273972603 -0.00167124725274725
##         0                    1                    1                    1
##         1                    0                    0                    0
##          y_rate_haz
## pers_wast -0.00166211475409836 -0.00083792561983473 -0.000831057377049181
##         0                    1                    1                     1
##         1                    0                    0                     0
##          y_rate_haz
## pers_wast -0.000828792915531317 0 0.000826540760869566
##         0                     1 1                    1
##         1                     0 0                    0
##          y_rate_haz
## pers_wast 0.000833334246575325 0.000833334246575343 0.00166211475409836
##         0                    1                    1                   2
##         1                    0                    0                   0
##          y_rate_haz
## pers_wast 0.00166666849315069 0.00581740163934427 0.00584936538461539
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast 0.00752061263736263 0.00997268852459017 0.0108333452054794
##         0                   1                   1                  1
##         1                   0                   0                  0
##          y_rate_haz
## pers_wast 0.0116666794520548 0.01243189373297 0.0125343543956044
##         0                  1                1                  1
##         1                  0                0                  0
##          y_rate_haz
## pers_wast 0.0140511929347826 0.0141666821917808 0.0149590327868852
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0157042744565217 0.0166666849315068 0.0190622370572207
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0191666876712329 0.0199453770491803 0.0207764344262295
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0208333561643836 0.0216074918032787 0.0226239917355372
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0241666931506849 0.0249317213114754 0.0265938360655738
##         0                  1                  2                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0275000301369863 0.0283333643835616 0.029166698630137
##         0                  1                  1                 2
##         1                  0                  0                 0
##          y_rate_haz
## pers_wast 0.0297554673913043 0.0299180655737705 0.0305820081521739
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0323229237057221 0.0333333698630137 0.0373975819672131
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0375000410958904 0.0390596967213115 0.0397820599455041
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0398907540983607 0.0400000438356164 0.0416667123287671
##         0                  1                  1                  2
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0457081557377049 0.0480699891008174 0.0525000575342466
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0528245210084034 0.0555291253405994 0.0561410165289256
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0568224065934066 0.0570313125 0.059836131147541
##         0                  1            1                 1
##         1                  0            0                 0
##          y_rate_haz
## pers_wast 0.0611640163043478 0.0621594686648501 0.0629882615803815
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0648224754098361 0.0654746403269755 0.0664845901639344
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0680481428571429 0.0683334082191781 0.0743886684782609
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0756262213114754 0.0785213722826087 0.0791667534246575
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.095000104109589 0.0961399782016349 0.105288576923077
##         0                 1                  1                 1
##         1                 0                  0                 0
##          y_rate_haz
## pers_wast 0.107743079019074 0.137955524590164 0.138032307065217
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast -0.181666865753425 -0.166587376021798 -0.158731959016393
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.155425994505494 -0.147500161643836 -0.147069758241758
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.137419801652893 -0.13675083106267 -0.135462352459016
##         0                  1                 1                  1
##         1                  0                 0                  0
##          y_rate_haz
## pers_wast -0.135000147945205 -0.132864156593407 -0.132028532967033
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.131063829268293 -0.130716396694215 -0.128686038461538
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.127500139726027 -0.123827549180328 -0.123154573369565
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.1216668 -0.120329802197802 -0.119823363636364
##         0          1                  1                  1
##         1          0                  0                  0
##          y_rate_haz
## pers_wast -0.116666794520548 -0.11563373553719 -0.113333457534247
##         0                  1                 1                  1
##         1                  0                 0                  0
##          y_rate_haz
## pers_wast -0.112409543478261 -0.107795447802198 -0.106959824175824
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.104427907356948 -0.104166780821918 -0.102220057377049
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.101110458791209 -0.100833443835616 -0.0980647704918033
##         0                  1                  1                   1
##         1                  0                  0                   0
##          y_rate_haz
## pers_wast -0.0966667726027397 -0.096096717032967 -0.0958787282608696
##         0                   1                  1                   1
##         1                   0                  0                   0
##          y_rate_haz
## pers_wast -0.095000104109589 -0.0941667698630137 -0.0916667671232877
##         0                  1                   1                   1
##         1                  0                   0                   0
##          y_rate_haz
## pers_wast -0.0911672207084469 -0.0897541967213115 -0.0877404807692308
##         0                   1                   1                   2
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0850993545706371 -0.0833334246575342 -0.0810009945652174
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0808334219178082 -0.0806125655737705 -0.0793479130434783
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0766667506849315 -0.0743705027472528 -0.0743705027472527
##         0                   1                   2                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0737625694822888 -0.0735348791208791 -0.0716667452054795
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0710280082417582 -0.0701923846153846 -0.069356760989011
##         0                   1                   1                  1
##         1                   0                   0                  0
##          y_rate_haz
## pers_wast -0.0691667424657534 -0.0679610190735695 -0.0654746403269755
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0652967201086957 -0.0651786428571429 -0.0644701793478261
##         0                   1                   2                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0641667369863013 -0.0639914180327869 -0.0625000684931507
##         0                   1                   2                   2
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0620064958677686 -0.0616667342465754 -0.0614982459016394
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0610005247252747 -0.0608334 -0.0600000657534246
##         0                   1          1                   1
##         1                   0          0                   0
##          y_rate_haz
## pers_wast -0.0591667315068493 -0.058333397260274 -0.0576580302197802
##         0                   1                  1                   1
##         1                   0                  0                   0
##          y_rate_haz
## pers_wast -0.0565119016393442 -0.055833394520548 -0.0550000602739726
##         0                   1                  2                   2
##         1                   0                  0                   0
##          y_rate_haz
## pers_wast -0.0545516902173913 -0.0541667260273972 -0.0540187295081967
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0533333917808219 -0.0527552520325203 -0.0518086648351648
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0508333890410959 -0.0506945 -0.0500000547945205
##         0                   1          1                   1
##         1                   0          0                   0
##          y_rate_haz
## pers_wast -0.049301793956044 -0.0491667205479452 -0.0483333863013699
##         0                  1                   2                   1
##         1                  0                   0                   0
##          y_rate_haz
## pers_wast -0.0475000520547945 -0.0472411961852861 -0.0464124032697548
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0457081557377049 -0.0433333808219178 -0.0413270380434783
##         0                   1                   3                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0400000438356164 -0.0387421382113821 -0.0376030631868132
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0359318159340659 -0.0350961923076923 -0.0349044098360656
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0348093024523161 -0.0338881711956522 -0.033424945054945
##         0                   1                   1                  2
##         1                   0                   0                  0
##          y_rate_haz
## pers_wast -0.031666701369863 -0.0306653378746594 -0.0300824505494505
##         0                  2                   1                   1
##         1                  0                   0                   0
##          y_rate_haz
## pers_wast -0.0290870081967213 -0.0283333643835616 -0.0278047396121884
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0267399560439561 -0.0248637874659401 -0.0240349945504087
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0239696820652174 -0.0227493324099723 -0.0215486158038147
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0206075203252033 -0.0175480961538462 -0.0174522049180328
##         0                   1                   3                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.017404651226158 -0.0165758583106267 -0.0158768489010989
##         0                  1                   1                   1
##         1                  0                   0                   0
##          y_rate_haz
## pers_wast -0.0156617154471545 -0.0125000136986301 -0.0115715706521739
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0108333452054794 -0.010000010958904 -0.00916667671232876
##         0                   1                  1                    1
##         1                   0                  0                    0
##          y_rate_haz
## pers_wast -0.00835623626373625 -0.00581740163934426 -0.00581740163934425
##         0                    1                    1                    1
##         1                    0                    0                    0
##          y_rate_haz
## pers_wast -0.00498634426229509 -0.00332422950819672 -0.00330616304347826
##         0                    1                    1                    1
##         1                    0                    0                    0
##          y_rate_haz
## pers_wast -0.000828792915531354 -0.000828792915531317 0
##         0                     1                     1 2
##         1                     0                     0 0
##          y_rate_haz
## pers_wast 0.000833334246575362 0.00166666849315069 0.00249317213114752
##         0                    1                   1                   2
##         1                    0                   0                   0
##          y_rate_haz
## pers_wast 0.00250687087912087 0.00333333698630137 0.00501374175824173
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast 0.00584936538461537 0.00584936538461539 0.00747951639344261
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast 0.00750000821917807 0.0100274835164835 0.01243189373297
##         0                   2                  1                1
##         1                   0                  0                0
##          y_rate_haz
## pers_wast 0.0134068099173554 0.0141666821917808 0.0150000164383562
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0150412252747253 0.0150826611570248 0.0157470653950954
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0158333506849315 0.0167585123966942 0.0174522049180328
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0175480961538462 0.0207198228882834 0.0225000246575342
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0233333589041096 0.0275755796703297 0.0290870081967213
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.02940841160221 0.0314085489130435 0.0348093024523161
##         0                1                  1                  1
##         1                0                  0                  0
##          y_rate_haz
## pers_wast 0.0363677934782609 0.0376030631868132 0.0382286393442623
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0401099340659341 0.0407218114754098 0.0410583553719008
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0427477945945946 0.0434524285714286 0.0491667205479452
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0505563678474115 0.0533333917808219 0.0541667260273972
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0545516902173913 0.0629882615803815 0.0666667397260274
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0669498016304348 0.0716667452054795 0.0743705027472527
##         0                  1                  2                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0764572786885246 0.0810554917582417 0.159128239782016
##         0                  1                  1                 1
##         1                  0                  0                 0
##          y_rate_haz
## pers_wast -0.0964026557377049 -0.0872610245901639 -0.0770891570247934
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0745753801652893 -0.0701923846153846 -0.0660142664835165
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0639914180327869 -0.0590050737704918 -0.0506945
##         0                   1                   1          1
##         1                   0                   0          0
##          y_rate_haz
## pers_wast -0.0475000520547945 -0.0457081557377049 -0.0450000493150685
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0408333780821918 -0.0383333753424657 -0.0382286393442623
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0366667068493151 -0.0334249450549451 -0.0325000356164384
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0251377685950413 -0.0241006639344262 -0.0233974615384616
##         0                   1                   2                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0224385491803279 -0.0182334441416894 -0.0167585123966942
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0155772857142857 -0.0116348032786885 -0.00416667123287672
##         0                   1                   1                    1
##         1                   0                   0                    0
##          y_rate_haz
## pers_wast 0.000835623626373626 0.00250000273972603 0.00501374175824176
##         0                    1                   1                   1
##         1                    0                   0                   0
##          y_rate_haz
## pers_wast 0.0108037459016393 0.0185566074270557 0.0208333561643836
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.031666701369863 0.0541667260273973 0.0614982459016393
##         0                 1                  1                  1
##         1                 0                  0                  0
##          y_rate_haz
## pers_wast 0.0668498901098901
##         0                  1
##         1                  0
##          y_rate_haz
## pers_wast -0.685211373626374 -0.665156406593407 -0.545516902173913
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.52972904494382 -0.505842945652174 -0.502388191011236
##         0                 1                  1                  1
##         1                 0                  0                  0
##          y_rate_haz
## pers_wast -0.461264241758242 -0.457885806451613 -0.424496802197802
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.419882706521739 -0.411126824175824 -0.391534117021277
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.349955580645161 -0.348102233333333 -0.335274988636364
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.331204066666667 -0.327824433333333 -0.327564461538461
##         0                  2                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.321065166666667 -0.310779326086957 -0.304167
##         0                  1                  1         1
##         1                  0                  0         0
##          y_rate_haz
## pers_wast -0.297554673913044 -0.294355161290323 -0.293678482758621
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.291223723404255 -0.284112032967033 -0.26491964516129
##         0                  1                  1                 1
##         1                  0                  0                 0
##          y_rate_haz
## pers_wast -0.251268391304348 -0.24796222826087 -0.247344593406593
##         0                  1                 1                  1
##         1                  0                 0                  0
##          y_rate_haz
## pers_wast -0.241349902173913 -0.240659604395604 -0.233974615384615
##         0                  1                  2                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.2331947 -0.231431413043478 -0.222144438202247
##         0          1                  1                  1
##         1          0                  0                  0
##          y_rate_haz
## pers_wast -0.221512923913043 -0.220604637362637 -0.214299477272727
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.213919648351648 -0.208474011235955 -0.206157633333333
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.204982108695652 -0.203892164835165 -0.197384968085106
##         0                  1                  2                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.196018733333333 -0.193864681318681 -0.191757456521739
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.189695548387097 -0.180494703296703 -0.177152208791209
##         0                  2                  2                  3
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.175226641304348 -0.17046721978022 -0.168262595744681
##         0                  1                 1                  1
##         1                  0                 0                  0
##          y_rate_haz
## pers_wast -0.160260032258064 -0.157097241758242 -0.1520835
##         0                  1                  1          2
##         1                  0                  0          0
##          y_rate_haz
## pers_wast -0.148777336956522 -0.148627056818182 -0.140384769230769
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.13369978021978 -0.130824516129032 -0.128940358695652
##         0                 1                  1                  1
##         1                 0                  0                  0
##          y_rate_haz
## pers_wast -0.127014791208791 -0.125046433333333 -0.122961127659574
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.1216668 -0.119021869565218 -0.113644813186813
##         0          1                  1                  1
##         1          0                  0                  0
##          y_rate_haz
## pers_wast -0.112409543478261 -0.10361732967033 -0.101389
##         0                  1                 1         1
##         1                  0                 0         0
##          y_rate_haz
## pers_wast -0.0981183870967742 -0.0958787282608696 -0.089266402173913
##         0                   2                   1                  1
##         1                   0                   0                  0
##          y_rate_haz
## pers_wast -0.0869048571428572 -0.0859602391304348 -0.0844908333333333
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0826540760869565 -0.0793479130434783 -0.07604175
##         0                   2                   1           2
##         1                   0                   0           0
##          y_rate_haz
## pers_wast -0.0675926666666666 -0.0661232608695652 -0.0654122580645161
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0635073956043957 -0.0635073956043956 -0.0628170978260869
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0615169213483145 -0.0601649010989011 -0.0595109347826088
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0580993146067416 -0.0550089255319149 -0.0546817078651685
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0534799120879121 -0.0528986086956522 -0.0495924456521739
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0467949230769231 -0.0439352333333333 -0.0429801195652174
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0396739565217392 -0.038829829787234 -0.0367674395604395
##         0                   1                  1                   1
##         1                   0                  0                   0
##          y_rate_haz
## pers_wast -0.0363677934782609 -0.0363677934782608 -0.0330616304347826
##         0                   2                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0323581914893617 -0.0307584606741573 -0.0304167
##         0                   1                   1          1
##         1                   0                   0          0
##          y_rate_haz
## pers_wast -0.0300824505494506 -0.0297554673913043 -0.026739956043956
##         0                   1                   1                  1
##         1                   0                   0                  0
##          y_rate_haz
## pers_wast -0.0264493043478261 -0.0261649032258065 -0.0258865531914894
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0233974615384615 -0.0228942903225806 -0.020054967032967
##         0                   1                   1                  2
##         1                   0                   0                  0
##          y_rate_haz
## pers_wast -0.0198369782608695 -0.0167124725274725 -0.0129432765957447
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0101389000000001 0 0.00327061290322581 0.0130824516129032
##         0                   1 2                   1                  1
##         1                   0 0                   0                  0
##          y_rate_haz
## pers_wast 0.0135185333333333 0.0170880337078651 0.0264493043478261
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0267399560439561 0.0323581914893617 0.0327061290322581
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0367674395604396 0.0420656489361702 0.046794923076923
##         0                  1                  1                 1
##         1                  0                  0                 0
##          y_rate_haz
## pers_wast 0.0485372872340425 0.0495924456521739 0.055303090909091
##         0                  1                  1                 1
##         1                  0                  0                 0
##          y_rate_haz
## pers_wast 0.0556004193548387 0.0635073956043956 0.0635073956043957
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0679522021276596 0.0686828709677419 0.0694294239130435
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0709723 0.0727355869565218 0.0735348791208791
##         0         1                  1                  1
##         1         0                  0                  0
##          y_rate_haz
## pers_wast 0.0751873483146066 0.0752240967741935 0.0768421894736842
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0784947096774194 0.0793479130434783 0.0820225617977528
##         0                  1                  3                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0859602391304348 0.0864110795454545 0.0902473516483517
##         0                  1                  1                  2
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0915771612903225 0.0925725652173914 0.0958787282608696
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0967804090909091 0.0969323406593406 0.100274835164835
##         0                  1                  1                 1
##         1                  0                  0                 0
##          y_rate_haz
## pers_wast 0.100310393617021 0.102491054347826 0.107930225806452
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.108148266666667 0.113644813186813 0.114471451612903
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.120329802197802 0.1216668 0.125046433333333 0.126196946808511
##         0                 2         1                 1                 1
##         1                 0         0                 0                 0
##          y_rate_haz
## pers_wast 0.13369978021978 0.135552684782609 0.142165010869565
##         0                1                 1                 1
##         1                0                 0                 0
##          y_rate_haz
## pers_wast 0.143727263736264 0.143906967741935 0.1520835 0.155319319148936
##         0                 1                 1         1                 1
##         1                 0                 0         0                 0
##          y_rate_haz
## pers_wast 0.158555138297872 0.160439736263736 0.162001989130435
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.162452829545455 0.166801258064516 0.167124725274725
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.168262595744681 0.172822159090909 0.181838967391304
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.185145130434783 0.19414914893617 0.195063619565217
##         0                 1                1                 1
##         1                 0                0                 0
##          y_rate_haz
## pers_wast 0.196236774193548 0.198221191011236 0.211594434782609
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.216296533333333 0.219676166666667 0.232397258426966
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.239232471910112 0.247344593406593 0.251837193548387
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.254029582417582 0.257880717391304 0.260714571428572
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.261186880434783 0.270742054945055 0.271105369565217
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.271808808510638 0.274084549450549 0.281023858695652
##         0                 1                 2                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.294139516483516 0.300860836956522 0.304167 0.310851989010989
##         0                 1                 1        2                 1
##         1                 0                 0        0                 0
##          y_rate_haz
## pers_wast 0.314194483516483 0.321851127906977 0.337228630434783 0.3447226
##         0                 1                 1                 1         1
##         1                 0                 0                 0         0
##          y_rate_haz
## pers_wast 0.361445201298702 0.367674395604396 0.37101689010989
##         0                 1                 1                1
##         1                 0                 0                0
##          y_rate_haz
## pers_wast 0.371403915789474 0.376902586956522 0.389202935483871
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.393433402173913 0.399859988764045 0.403421494736842
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.408935633333333 0.425179677419355 0.431181791208791
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.441532741935484 0.443307223404255 0.457921747252747
##         0                 1                 1                 2
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.462862826086957 0.466168989130435 0.466619829545455
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.469475152173913 0.487321322580645 0.535598413043478
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.54179746875 0.554259866666667 0.562047717391304 0.608334
##         0             1                 1                 1        1
##         1             0                 0                 0        0
##          y_rate_haz
## pers_wast 0.615018989010989 0.634783304347826 0.642898431818182
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.700906565217391 0.783560641304348 0.902582510869565
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast -0.720743543478261 -0.691288636363636 -0.631477141304348
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.628388967032967 -0.562047717391304 -0.54148410989011
##         0                  1                  1                 1
##         1                  0                  0                 0
##          y_rate_haz
## pers_wast -0.51245527173913 -0.506945 -0.501551968085106
##         0                 1         1                  1
##         1                 0         0                  0
##          y_rate_haz
## pers_wast -0.499230619565217 -0.4879345625 -0.484661703296703
##         0                  1             1                  1
##         1                  0             0                  0
##          y_rate_haz
## pers_wast -0.47608747826087 -0.469475152173913 -0.443025847826087
##         0                 1                  1                  1
##         1                 0                  0                  0
##          y_rate_haz
## pers_wast -0.429412235294118 -0.427839296703297 -0.424496802197802
##         0                  1                  3                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.421686068181818 -0.416576543478261 -0.413270380434783
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.412548344827586 -0.402176366666667 -0.401099340659341
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.395744161290323 -0.393433402173913 -0.391071857142857
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.37101689010989 -0.367674395604396 -0.365647563829787
##         0                 1                  1                  1
##         1                 0                  0                  0
##          y_rate_haz
## pers_wast -0.361620766666667 -0.344276934065934 -0.343840956521739
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.33834306741573 -0.337591945054945 -0.330906956043956
##         0                 1                  3                  1
##         1                 0                  0                  0
##          y_rate_haz
## pers_wast -0.327824433333333 -0.317685533333333 -0.317536978021978
##         0                  2                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.314194483516484 -0.310851989010989 -0.304167
##         0                  1                  2         1
##         1                  0                  0         0
##          y_rate_haz
## pers_wast -0.300860836956522 -0.300824505494506 -0.300824505494505
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.300749393258427 -0.297695361702128 -0.297482010989011
##         0                  1                  1                  2
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.294139516483516 -0.277427043956044 -0.273129551020408
##         0                  2                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.270370666666667 -0.26739956043956 -0.257372076923077
##         0                  1                 1                  1
##         1                  0                 0                  0
##          y_rate_haz
## pers_wast -0.251268391304348 -0.248863909090909 -0.23731710989011
##         0                  1                  1                 1
##         1                  0                  0                 0
##          y_rate_haz
## pers_wast -0.233728326315789 -0.205221108433735 -0.203892164835165
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.201675945652174 -0.200620787234043 -0.197207175824176
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.184441691489362 -0.180494703296703 -0.178532804347826
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.177152208791209 -0.173809714285714 -0.17192047826087
##         0                  1                  1                 1
##         1                  0                  0                 0
##          y_rate_haz
## pers_wast -0.170880337078652 -0.17046721978022 -0.165909272727273
##         0                  1                 1                  1
##         1                  0                 0                  0
##          y_rate_haz
## pers_wast -0.165308152173913 -0.164320103448276 -0.163782230769231
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.158695826086957 -0.1584203125 -0.156989419354839
##         0                  1             1                  1
##         1                  0             0                  0
##          y_rate_haz
## pers_wast -0.155463133333333 -0.1520835 -0.150412252747253
##         0                  1          1                  1
##         1                  0          0                  0
##          y_rate_haz
## pers_wast -0.148703866666667 -0.148627056818182 -0.147177580645161
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.142376042553191 -0.1419446 -0.139846896551724
##         0                  1          1                  1
##         1                  0          0                  0
##          y_rate_haz
## pers_wast -0.138858847826087 -0.138564966666667 -0.137042274725275
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.13369978021978 -0.13127207368421 -0.128426066666667
##         0                 1                 1                  1
##         1                 0                 0                  0
##          y_rate_haz
## pers_wast -0.127888397727273 -0.127014791208791 -0.123788895348837
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.121012677419355 -0.116987307692308 -0.110302318681319
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.108148266666667 -0.105945808988764 -0.100310393617021
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.0980093666666666 -0.0935898461538461 -0.0933239659090909
##         0                   1                   1                   3
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0922753820224719 -0.0883065483870968 -0.0873671170212766
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0727355869565217 -0.0701923846153846 -0.0679522021276596
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0629311034482759 -0.0614805638297872 -0.0601649010989011
##         0                   1                   2                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0562047717391304 -0.0528986086956521 -0.046794923076923
##         0                   1                   1                  1
##         1                   0                   0                  0
##          y_rate_haz
## pers_wast -0.0429801195652174 -0.0420656489361702 -0.0401099340659341
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0352193368421054 -0.0327061290322581 -0.032706129032258
##         0                   1                   1                  1
##         1                   0                   0                  0
##          y_rate_haz
## pers_wast -0.031465551724138 -0.0270370666666667 -0.0267399560439561
##         0                  1                   1                   1
##         1                  0                   0                   0
##          y_rate_haz
## pers_wast -0.0264493043478261 -0.0198369782608695 -0.0136704269662921
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0135185333333333 -0.013369978021978 -0.0102528202247191
##         0                   1                  1                   1
##         1                   0                  0                   0
##          y_rate_haz
## pers_wast -0.00991848913043479 -0.00661232608695653 0 0.00661232608695652
##         0                    1                    1 1                   1
##         1                    0                    0 0                   0
##          y_rate_haz
## pers_wast 0.00668498901098901 0.0132246521739131 0.013369978021978
##         0                   1                  1                 1
##         1                   0                  0                 0
##          y_rate_haz
## pers_wast 0.0165308152173913 0.0168981666666667 0.020054967032967
##         0                  1                  1                 1
##         1                  0                  0                 0
##          y_rate_haz
## pers_wast 0.0202777999999999 0.0231431413043478 0.0233974615384616
##         0                  1                  1                  2
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0297554673913044 0.0300824505494506 0.0341760674157303
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0429801195652174 0.0434524285714285 0.0434524285714286
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.049592445652174 0.0501374175824176 0.0553030909090909
##         0                 1                  1                  1
##         1                 0                  0                  0
##          y_rate_haz
## pers_wast 0.0595109347826086 0.0601649010989012 0.0661232608695652
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0675926666666667 0.0683521348314607 0.0701923846153846
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0735348791208791 0.0802198681318681 0.0808954787234042
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0859602391304348 0.0873671170212766 0.0912501
##         0                  1                  1         1
##         1                  0                  0         0
##          y_rate_haz
## pers_wast 0.0935898461538462 0.115373689655172 0.115715706521739
##         0                  1                 1                 1
##         1                  0                 0                 0
##          y_rate_haz
## pers_wast 0.116987307692308 0.1216668 0.122961127659574 0.127014791208791
##         0                 1         1                 1                 3
##         1                 0         0                 0                 0
##          y_rate_haz
## pers_wast 0.129432765957447 0.130357285714286 0.142165010869565
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.148777336956522 0.1520835 0.155389663043478 0.155463133333333
##         0                 1         2                 1                 1
##         1                 0         0                 0                 0
##          y_rate_haz
## pers_wast 0.156886136842105 0.165308152173913 0.167124725274725
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.168262595744681 0.175226641304348 0.186647931818182
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.190522186813187 0.195785655172414 0.198369782608696
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.207234659340659 0.20828827173913 0.221512923913044
##         0                 1                1                 1
##         1                 0                0                 0
##          y_rate_haz
## pers_wast 0.233974615384615 0.239953966666667 0.241349902173913 0.2534725
##         0                 1                 1                 1         1
##         1                 0                 0                 0         0
##          y_rate_haz
## pers_wast 0.257880717391304 0.258378419354839 0.267799206521739
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.271460870967742 0.276515454545455 0.277717695652174 0.304167
##         0                 1                 1                 1        2
##         1                 0                 0                 0        0
##          y_rate_haz
## pers_wast 0.307546633333333 0.310851989010989 0.3143059 0.321851127906977
##         0                 1                 1         1                 1
##         1                 0                 0         0                 0
##          y_rate_haz
## pers_wast 0.324221967032967 0.327564461538462 0.340534793478261
##         0                 2                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.342187875 0.367674395604396 0.369101528089888
##         0           1                 1                 1
##         1           0                 0                 0
##          y_rate_haz
## pers_wast 0.397756846153846 0.40004572826087 0.421154307692308
##         0                 2                1                 1
##         1                 0                0                 0
##          y_rate_haz
## pers_wast 0.431181791208791 0.471291725274725 0.518086648351648
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.528986086956522 0.621277276595745
##         0                 1                 1
##         1                 0                 0
##          y_rate_haz
## pers_wast -0.423325206185567 -0.357646912087912 -0.285544530612245
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.280769538461538 -0.276233295918367 -0.268382647058824
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.263818316326531 -0.261153484848485 -0.259870834951456
##         0                  2                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.248299591836735 -0.244587896907216 -0.220604637362637
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.220365887755102 -0.217262142857143 -0.216366216494845
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.211995181818182 -0.204847163265306 -0.201743418367347
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.201675945652174 -0.20075022 -0.196236774193548
##         0                  1           1                  1
##         1                  0           0                  0
##          y_rate_haz
## pers_wast -0.192432183673469 -0.190459710280374 -0.187179692307692
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.185660376623377 -0.184255009615385 -0.17945853
##         0                  1                  1           1
##         1                  0                  0           0
##          y_rate_haz
## pers_wast -0.176913459183673 -0.172465824742268 -0.170705969387755
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.156600831683168 -0.153619696969697 -0.148979755102041
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.141330121212121 -0.136564775510204 -0.130862546511628
##         0                  1                  3                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.130357285714286 -0.128823670588235 -0.127253540816327
##         0                  2                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.127014791208791 -0.125968151515152 -0.122895757575758
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.1216668 -0.114439069306931 -0.11254179 -0.111734816326531
##         0          1                  1           1                  1
##         1          0                  0           0                  0
##          y_rate_haz
## pers_wast -0.110335088235294 -0.108631071428571 -0.106959824175824
##         0                  1                  2                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.105527326530612 -0.103546212765957 -0.102423581632653
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.0964431951219512 -0.0931123469387755 -0.0931123469387754
##         0                   1                   2                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0903466336633663 -0.0900086020408163 -0.0899648873239436
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0878007835051546 -0.0869048571428571 -0.0860270303030303
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.07921015625 -0.0708738640776699 -0.0689863298969072
##         0              1                   1                   1
##         1              0                   0                   0
##          y_rate_haz
## pers_wast -0.0683521348314607 -0.0682823877551021 -0.068282387755102
##         0                   1                   1                  2
##         1                   0                   0                  0
##          y_rate_haz
## pers_wast -0.0669167400000001 -0.065850587628866 -0.0651786428571428
##         0                   1                  1                   1
##         1                   0                  0                   0
##          y_rate_haz
## pers_wast -0.0645202727272727 -0.0635073956043956 -0.0629311034482759
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0574537666666666 -0.0564433608247423 -0.0528986086956522
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.052230696969697 -0.0475260937500001 -0.0470361340206186
##         0                  1                   1                   1
##         1                  0                   0                   0
##          y_rate_haz
## pers_wast -0.0443576875 -0.0403486836734694 -0.0376289072164948
##         0             1                   1                   1
##         1             0                   0                   0
##          y_rate_haz
## pers_wast -0.0372449387755102 -0.0310374489795919 -0.0310374489795918
##         0                   1                   1                   2
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0279337040816327 -0.0248299591836735 -0.0186224693877551
##         0                   1                   3                   2
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0168981666666667 -0.0155187244897959 -0.00931123469387752
##         0                   1                   1                    1
##         1                   0                   0                    0
##          y_rate_haz
## pers_wast -0.00647163829787235 -0.00608334000000001 -0.00334249450549451 0
##         0                    1                    1                    2 3
##         1                    0                    0                    0 0
##          y_rate_haz
## pers_wast 0.00362103571428571 0.00620748979591837 0.0124149795918367
##         0                   1                   2                  2
##         1                   0                   0                  0
##          y_rate_haz
## pers_wast 0.013369978021978 0.0136704269662921 0.0190104375
##         0                 1                  1            1
##         1                 0                  0            0
##          y_rate_haz
## pers_wast 0.0205056404494382 0.0207386590909091 0.0217262142857143
##         0                  1                  1                  2
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0219879759036145 0.0279337040816326 0.0282216804123711
##         0                  1                  2                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0313574226804124 0.0376289072164949 0.0401099340659341
##         0                  2                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0407366517857143 0.0425179677419355 0.0465561734693879
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0470361340206186 0.0533076185567011 0.0550089255319149
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0558674081632653 0.0608334 0.0645202727272727
##         0                  2         1                  1
##         1                  0         0                  0
##          y_rate_haz
## pers_wast 0.0651786428571429 0.068282387755102 0.0701923846153847
##         0                  1                 1                  1
##         1                  0                 0                  0
##          y_rate_haz
## pers_wast 0.0815292989690721 0.0832155 0.0890994242424242
##         0                  1         1                  2
##         1                  0         0                  0
##          y_rate_haz
## pers_wast 0.0922753820224719 0.0933581881188119 0.09429177
##         0                  1                  1          1
##         1                  0                  0          0
##          y_rate_haz
## pers_wast 0.0962160918367347 0.102423581632653 0.109750979381443
##         0                  1                 1                 1
##         1                  0                 0                 0
##          y_rate_haz
## pers_wast 0.11001785106383 0.110606181818182 0.111280609756098
##         0                1                 1                 1
##         1                0                 0                 0
##          y_rate_haz
## pers_wast 0.111734816326531 0.11254179 0.117942306122449 0.119158206185567
##         0                 1          1                 1                 1
##         1                 0          0                 0                 0
##          y_rate_haz
## pers_wast 0.121046051020408 0.127014791208791 0.1318057 0.138257727272727
##         0                 2                 1         1                 1
##         1                 0                 0         0                 0
##          y_rate_haz
## pers_wast 0.147474909090909 0.1520835 0.156193864864865 0.158008831168831
##         0                 2         1                 1                 1
##         1                 0         0                 0                 0
##          y_rate_haz
## pers_wast 0.158290989795918 0.163782230769231 0.16425018 0.173809714285714
##         0                 1                 1          1                 2
##         1                 0                 0          0                 0
##          y_rate_haz
## pers_wast 0.175126454545455 0.175601567010309 0.178198848484848
##         0                 1                 2                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.181873051546392 0.181931663551402 0.183120948979592
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.190459710280374 0.19327278125 0.211054653061224
##         0                 1             1                 1
##         1                 0             0                 0
##          y_rate_haz
## pers_wast 0.220365887755102 0.2217884375 0.223947131868132
##         0                 3            1                 2
##         1                 0            0                 0
##          y_rate_haz
## pers_wast 0.224284757575758 0.22657337755102 0.22890918556701
##         0                 1                1                1
##         1                 0                0                0
##          y_rate_haz
## pers_wast 0.235884612244898 0.237912801980198 0.238988357142857
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.240798875 0.248299591836735 0.269673835051546
##         0           1                 1                 1
##         1           0                 0                 0
##          y_rate_haz
## pers_wast 0.270742054945055 0.275945319587629 0.276233295918367
##         0                 1                 1                 2
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.285544530612245 0.297959510204082 0.301063255102041
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.301094606060606 0.304167 0.337591945054945 0.3485246875
##         0                 1        1                 1            1
##         1                 0        0                 0            0
##          y_rate_haz
## pers_wast 0.394175602040816 0.468775023529412 0.515221653061224
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.605230255102041
##         0                 1
##         1                 0
##          y_rate_haz
## pers_wast -0.289207967213115 -0.243002983695652 -0.224819086956522
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.223503928176796 -0.217262142857143 -0.211740563535912
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.206635190217391 -0.202778 -0.196716701086957
##         0                  1         1                  1
##         1                  0         0                  0
##          y_rate_haz
## pers_wast -0.194935756906077 -0.193410538043478 -0.1926391
##         0                  1                  1          1
##         1                  0                  0          0
##          y_rate_haz
## pers_wast -0.191757456521739 -0.187179692307692 -0.185508445054945
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.184852872928177 -0.184494737704918 -0.1825002
##         0                  1                  1          1
##         1                  0                  0          0
##          y_rate_haz
## pers_wast -0.18149191160221 -0.180494703296703 -0.17743075
##         0                 1                  1           1
##         1                 0                  0           0
##          y_rate_haz
## pers_wast -0.175226641304348 -0.173573559782609 -0.17192047826087
##         0                  2                  1                 1
##         1                  0                  0                 0
##          y_rate_haz
## pers_wast -0.17026739673913 -0.168795972527472 -0.167124725274725
##         0                 1                  1                  1
##         1                 0                  0                  0
##          y_rate_haz
## pers_wast -0.165453478021978 -0.164414594594595 -0.163655070652174
##         0                  1                  1                  2
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.161326143646409 -0.159645662983425 -0.159563016393443
##         0                  1                  2                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.157097241758242 -0.155425994505495 -0.149590327868852
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.148777336956522 -0.142941868852459 -0.142056016483516
##         0                  1                  2                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.140511929347826 -0.139339072625698 -0.13810825945946
##         0                  1                  1                 1
##         1                  0                  0                 0
##          y_rate_haz
## pers_wast -0.13687515 -0.136118933701657 -0.134438453038674
##         0           1                  1                  1
##         1           0                  0                  0
##          y_rate_haz
## pers_wast -0.133378042780749 -0.13224652173913 -0.1318057
##         0                  1                 1          1
##         1                  0                 0          0
##          y_rate_haz
## pers_wast -0.125046433333333 -0.124658606557377 -0.123356616666667
##         0                  1                  2                  2
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.119672262295082 -0.119377370967742 -0.119314127071823
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.119021869565217 -0.116987307692308 -0.11283614516129
##         0                  1                  1                 1
##         1                  0                  0                 0
##          y_rate_haz
## pers_wast -0.112409543478261 -0.111973565934066 -0.110911723756906
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.110756461956522 -0.110157778378378 -0.108513632432432
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.106869486486486 -0.103566064417178 -0.102491054347826
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.101389 -0.100828839779006 -0.0991848913043478
##         0         2                  1                   1
##         1         0                  0                   0
##          y_rate_haz
## pers_wast -0.0957873977900553 -0.0953604648648649 -0.0943405668449198
##         0                   1                   2                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0930784262295082 -0.092072172972973 -0.087834320855615
##         0                   1                  1                  1
##         1                   0                  0                  0
##          y_rate_haz
## pers_wast -0.0876133206521739 -0.0859602391304348 -0.0835623626373626
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0826540760869565 -0.0814436229508197 -0.0810009945652174
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0802198681318681 -0.0797815081967213 -0.0789190054054054
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0785486208791209 -0.0781193934426229 -0.07604175
##         0                   1                   1           1
##         1                   0                   0           0
##          y_rate_haz
## pers_wast -0.0752061263736264 -0.0723424216216216 -0.0718636318681318
##         0                   2                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0714709344262295 -0.0701923846153846 -0.0694294239130435
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0675926666666667 -0.067047564516129 -0.0661232608695652
##         0                   2                  1                   1
##         1                   0                  0                   0
##          y_rate_haz
## pers_wast -0.0657658378378378 -0.0628170978260869 -0.0608334
##         0                   1                   1          1
##         1                   0                   0          0
##          y_rate_haz
## pers_wast -0.0605063387096774 -0.0575451081081081 -0.0568224065934066
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0562047717391305 -0.055455861878453 -0.0531876721311475
##         0                   1                  1                   1
##         1                   0                  0                   0
##          y_rate_haz
## pers_wast -0.0526126702702703 -0.0520499679144385 -0.0518086648351648
##         0                   2                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0490591935483871 -0.0462862826086957 -0.0462862826086956
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0460360864864865 -0.0413270380434783 -0.0405556
##         0                   1                   2          1
##         1                   0                   0          0
##          y_rate_haz
## pers_wast -0.0401099340659341 -0.0361712108108108 -0.0347147119565217
##         0                   1                   2                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0310708225806451 -0.0284112032967033 -0.0281023858695652
##         0                   1                   1                   2
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0265938360655738 -0.0261649032258065 -0.0260249839572192
##         0                   1                   2                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0236574333333333 -0.0201657679558011 -0.0198369782608696
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0198369782608695 -0.0147973135135135 -0.0132969180327869
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0116987307692308 -0.0100828839779006 -0.0100274835164835
##         0                   2                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.00826540760869566 -0.00654122580645162 -0.00498634426229509
##         0                    1                    1                    1
##         1                    0                    0                    0
##          y_rate_haz
## pers_wast -0.00493243783783784 -0.00167124725274725 0.0016621147540984
##         0                    1                    1                  1
##         1                    0                    0                  0
##          y_rate_haz
## pers_wast 0.0032882918918919 0.00498634426229509 0.00664845901639345
##         0                  1                   2                   1
##         1                  0                   0                   0
##          y_rate_haz
## pers_wast 0.00672192265193371 0.0082207297297297 0.00831057377049181
##         0                   1                  1                   1
##         1                   0                  0                   0
##          y_rate_haz
## pers_wast 0.0116987307692308 0.0132246521739131 0.0132969180327869
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.013369978021978 0.0148777336956522 0.016353064516129
##         0                 1                  1                 1
##         1                 0                  0                 0
##          y_rate_haz
## pers_wast 0.0164414594594595 0.0183837197802198 0.0197297513513514
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.020054967032967 0.0213738972972973 0.0218462486187846
##         0                 1                  1                  1
##         1                 0                  0                  0
##          y_rate_haz
## pers_wast 0.0233974615384615 0.0250687087912088 0.0261649032258064
##         0                  1                  2                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0314085489130435 0.0315801803278688 0.0349044098360656
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0350961923076923 0.0361712108108108 0.0363677934782609
##         0                  2                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0394595027027027 0.0403315359116022 0.0429801195652174
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0467949230769231 0.0518086648351648 0.0526126702702703
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0534799120879121 0.0562047717391305 0.0595109347826087
##         0                  1                  1                  2
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0601649010989011 0.0637769516129032 0.0644701793478261
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0674099837837838 0.0685211373626374 0.0692824833333333
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0698088196721312 0.0739865675675676 0.0756307135135135
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0826540760869565 0.0859602391304348 0.0864299672131147
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0935898461538462 0.0952610934065934 0.0997536935483871
##         0                  2                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.100274835164835 0.11259220441989 0.11531606043956
##         0                 1                1                1
##         1                 0                0                0
##          y_rate_haz
## pers_wast 0.116348032786885 0.116987307692308 0.118115611675127
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.119021869565217 0.119314127071823 0.123356616666667
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.129644950819672 0.132028532967033 0.142941868852459
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.143818092391304 0.145471173913043 0.159482156756757
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.166801258064516 0.166961233695652 0.17026739673913
##         0                 1                 1                1
##         1                 0                 0                0
##          y_rate_haz
## pers_wast 0.172635324324324 0.178823456043956 0.188213834254144
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.197791655737705 0.212248401098901 0.253198475675676
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.256227635869565 0.287545852459016 0.395086483695652
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast -0.440285933701657 -0.431305587301587 -0.391306735135135
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.366644545945946 -0.360067962162162 -0.356551316666667
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.353759445652174 -0.346684967741935 -0.342395639344262
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.339263192307692 -0.328696596774193 -0.319126032786885
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.313978838709677 -0.310851989010989 -0.302504885245902
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.300824505494505 -0.297590416216216 -0.290797021978022
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.287545852459016 -0.280897393442623 -0.271105369565217
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.270742054945055 -0.269639935135135 -0.269262590163934
##         0                  3                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.269070807692308 -0.265938360655738 -0.262614131147541
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.259043324175824 -0.257113541436464 -0.256486767567568
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.253198475675676 -0.238988357142857 -0.238754741935484
##         0                  1                  2                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.237119435483871 -0.234224855614973 -0.231033950819672
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.22812525 -0.227709721311475 -0.224385491803279
##         0           1                  1                  1
##         1           0                  0                  0
##          y_rate_haz
## pers_wast -0.22283892513369 -0.22272337704918 -0.222275884615385
##         0                 1                 1                  1
##         1                 0                 0                  0
##          y_rate_haz
## pers_wast -0.217262142857143 -0.215860451612903 -0.215383118918919
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.214106379888268 -0.213421044198895 -0.211740563535912
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.211088573770492 -0.210450681081081 -0.202778
##         0                  1                  1         1
##         1                  0                  0         0
##          y_rate_haz
## pers_wast -0.201115885245902 -0.20054967032967 -0.199453770491803
##         0                  1                 1                  2
##         1                  0                 0                  0
##          y_rate_haz
## pers_wast -0.198941659459459 -0.198878423076923 -0.198369782608696
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.197872080645161 -0.196129540983607 -0.194601467741935
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.194009221621622 -0.191143196721311 -0.190522186813187
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.190104375 -0.189481081967213 -0.188617525139665
##         0            1                  1                  1
##         1            0                  0                  0
##          y_rate_haz
## pers_wast -0.183801449197861 -0.179883709677419 -0.178823456043956
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.177152208791209 -0.17645046961326 -0.169535704918033
##         0                  2                 1                  1
##         1                  0                 0                  0
##          y_rate_haz
## pers_wast -0.163655070652174 -0.163128670391061 -0.160439736263736
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.160348907608696 -0.159645662983425 -0.159563016393443
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.157900901639344 -0.157097241758242 -0.156238786885246
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.155425994505494 -0.154604220994475 -0.152905572972973
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.1520835 -0.151252442622951 -0.147928213114754
##         0          1                  1                  1
##         1          0                  0                  0
##          y_rate_haz
## pers_wast -0.147177580645161 -0.146266098360656 -0.145471173913043
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.145398510989011 -0.139001048387097 -0.138108259459459
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.137365741935484 -0.137042274725275 -0.135371027472527
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.133175821621622 -0.12988752972973 -0.129644950819672
##         0                  1                 2                  1
##         1                  0                 0                  0
##          y_rate_haz
## pers_wast -0.128243383783784 -0.126320721311475 -0.125343543956044
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.123672296703297 -0.123310945945946 -0.122346502793296
##         0                  2                  2                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.122001049450549 -0.1216668 -0.12133437704918
##         0                  1          1                 1
##         1                  0          0                 0
##          y_rate_haz
## pers_wast -0.120674951086956 -0.120329802197802 -0.119314127071823
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.119021869565217 -0.118010147540984 -0.11763364640884
##         0                  1                  2                 1
##         1                  0                  0                 0
##          y_rate_haz
## pers_wast -0.11531606043956 -0.113217716666667 -0.110756461956522
##         0                 1                  1                  1
##         1                 0                  0                  0
##          y_rate_haz
## pers_wast -0.109231243093923 -0.106959824175824 -0.106869486486487
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.106869486486486 -0.105288576923077 -0.10361732967033
##         0                  1                  1                 2
##         1                  0                  0                 0
##          y_rate_haz
## pers_wast -0.0991483591160221 -0.0975318097826087 -0.0946297333333334
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0876133206521739 -0.0871397351351351 -0.0854955891891892
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0843071576086957 -0.0781193934426229 -0.0772748594594594
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0722606685082873 -0.0686828709677419 -0.0668498901098901
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0661232608695652 -0.0621416451612903 -0.0614982459016394
##         0                   3                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0595109347826087 -0.0591435833333333 -0.0584936538461539
##         0                   1                   1                   2
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0578578532608695 -0.0575451081081081 -0.0562047717391305
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0540741333333333 -0.0539651129032258 -0.0534799120879121
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0531876721311475 -0.0526126702702703 -0.051245527173913
##         0                   1                   1                  1
##         1                   0                   0                  0
##          y_rate_haz
## pers_wast -0.0501374175824176 -0.0498634426229508 -0.0490046833333333
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0482013278688525 -0.0476802324324324 -0.0465392131147541
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0427477945945946 -0.0417811813186813 -0.0411036486486486
##         0                   1                   2                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0382286393442623 -0.038020875 -0.0367674395604396
##         0                   1            1                   1
##         1                   0            0                   0
##          y_rate_haz
## pers_wast -0.0357843529411765 -0.034341435483871 -0.033424945054945
##         0                   1                  2                  1
##         1                   0                  0                  0
##          y_rate_haz
## pers_wast -0.0317536978021978 -0.0300824505494505 -0.0284112032967033
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0268876906077348 -0.0247962228260869 -0.02433336
##         0                   1                   1           1
##         1                   0                   0           0
##          y_rate_haz
## pers_wast -0.0228942903225806 -0.0198369782608696 -0.016353064516129
##         0                   1                   1                  1
##         1                   0                   0                  0
##          y_rate_haz
## pers_wast -0.0100828839779006 -0.0100274835164835 -0.00981183870967743
##         0                   1                   1                    1
##         1                   0                   0                    0
##          y_rate_haz
## pers_wast -0.00167124725274725 0.00332422950819672 0.00668498901098902
##         0                    1                   1                   1
##         1                    0                   0                   0
##          y_rate_haz
## pers_wast 0.00981183870967739 0.0116348032786885 0.0132969180327869
##         0                   1                  1                  1
##         1                   0                  0                  0
##          y_rate_haz
## pers_wast 0.0199453770491803 0.020054967032967 0.0202778 0.023269606557377
##         0                  1                 1         1                 1
##         1                  0                 0         0                 0
##          y_rate_haz
## pers_wast 0.0242686436170213 0.026739956043956 0.0285681712707182
##         0                  1                 1                  1
##         1                  0                 0                  0
##          y_rate_haz
## pers_wast 0.034341435483871 0.0396739565217391 0.0434524285714286
##         0                 1                  1                  1
##         1                 0                  0                  0
##          y_rate_haz
## pers_wast 0.0484661703296703 0.0498634426229508 0.0518086648351648
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0543762234636871 0.078982591160221 0.0847678524590164
##         0                  1                 1                  1
##         1                  0                 0                  0
##          y_rate_haz
## pers_wast 0.0857045138121547 0.0899418548387097 0.0942256467391304
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.11763364640884 0.128686038461538 0.136464113513514
##         0                1                 1                 1
##         1                0                 0                 0
##          y_rate_haz
## pers_wast 0.144603983606557 0.196616237569061 0.350961923076923
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast -0.260474502762431 -0.235038136363636 -0.228545370165746
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.214412803278689 -0.213421044198895 -0.208474011235955
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.198878423076923 -0.197113810055866 -0.190913329787234
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.189894314917127 -0.188213834254144 -0.185219011173184
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.172138467032967 -0.171409027624309 -0.162110983516484
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.160439736263736 -0.155425994505494 -0.15123387150838
##         0                  1                  1                 1
##         1                  0                  0                 0
##          y_rate_haz
## pers_wast -0.146266098360656 -0.141160375690608 -0.140785868571429
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.135371027472527 -0.132028532967033 -0.129397011049724
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.126320721311475 -0.12267508839779 -0.118010147540984
##         0                  1                 1                  2
##         1                  0                 0                  0
##          y_rate_haz
## pers_wast -0.116987307692308 -0.11531606043956 -0.11136168852459
##         0                  1                 2                 1
##         1                  0                 0                 0
##          y_rate_haz
## pers_wast -0.110302318681319 -0.109231243093923 -0.108752446927374
##         0                  2                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.105288576923077 -0.104144135869565 -0.103051114754098
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.101946082417582 -0.100828839779006 -0.100274835164835
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast -0.0990715371428572 -0.0986487567567568 -0.0974678784530387
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.09733344 -0.0969323406593407 -0.0952610934065934
##         0           1                   1                   2
##         1           0                   0                   0
##          y_rate_haz
## pers_wast -0.0919185989010989 -0.090745955801105 -0.0895602833333333
##         0                   2                  1                   1
##         1                   0                  0                   0
##          y_rate_haz
## pers_wast -0.0869048571428571 -0.0852336098901099 -0.0844023612565445
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.083801112244898 -0.0823435524861878 -0.0818911153846154
##         0                  1                   1                   1
##         1                  0                   0                   0
##          y_rate_haz
## pers_wast -0.0802198681318681 -0.0798650782122905 -0.0752061263736264
##         0                   1                   1                   2
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0685211373626373 -0.0675926666666666 -0.067219226519337
##         0                   1                   1                  1
##         1                   0                   0                  0
##          y_rate_haz
## pers_wast -0.0668498901098901 -0.0651786428571429 -0.0638582651933702
##         0                   2                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0631603606557377 -0.0622564035087719 -0.0621777845303867
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0618361483516483 -0.0604973038674033 -0.0594739944134078
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0589711530612245 -0.0585562139037433 -0.0584936538461538
##         0                   1                   1                   3
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0568224065934066 -0.0543762234636871 -0.052972904494382
##         0                   1                   1                  1
##         1                   0                   0                  0
##          y_rate_haz
## pers_wast -0.0515255573770492 -0.0512455271739131 -0.0509777094972067
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0487339392265193 -0.0484661703296703 -0.0467949230769231
##         0                   1                   2                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.04562505 -0.0448770983606557 -0.0403315359116022
##         0           1                   1                   1
##         1           0                   0                   0
##          y_rate_haz
## pers_wast -0.0390374759358289 -0.0386510552486188 -0.0369705745856354
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0367674395604396 -0.0352900939226519 -0.0347147119565217
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0336096132596685 -0.0319291325966851 -0.0304167
##         0                   1                   1          1
##         1                   0                   0          0
##          y_rate_haz
## pers_wast -0.0297554673913043 -0.0284112032967033 -0.026739956043956
##         0                   1                   1                  1
##         1                   0                   0                  0
##          y_rate_haz
## pers_wast -0.0256320505617978 -0.0250687087912088 -0.0239232471910113
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0233974615384615 -0.0202778 -0.0201657679558011
##         0                   1          1                   1
##         1                   0          0                   0
##          y_rate_haz
## pers_wast -0.0174808620689655 -0.0168981666666667 -0.0168048066298343
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0155187244897959 -0.0150412252747253 -0.0118287166666667
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast -0.0115715706521739 -0.00849628491620112 -0.00664845901639344
##         0                   1                    1                    1
##         1                   0                    0                    0
##          y_rate_haz
## pers_wast -0.00509777094972067 -0.00498634426229509 -0.00337963333333334
##         0                    1                    1                    1
##         1                    0                    0                    0
##          y_rate_haz
## pers_wast -0.00167124725274725 -0.00165308152173917 0 0.00167124725274725
##         0                    2                    1 1                   1
##         1                    0                    0 0                   0
##          y_rate_haz
## pers_wast 0.00336096132596685 0.00501374175824176 0.00668498901098902
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## pers_wast 0.00695238857142857 0.0108631071428571 0.0118287166666666
##         0                   1                  1                  1
##         1                   0                  0                  0
##          y_rate_haz
## pers_wast 0.0125986331360947 0.0149590327868853 0.0150412252747253
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0167124725274725 0.0168981666666667 0.018283262295082
##         0                  1                  1                 1
##         1                  0                  0                 0
##          y_rate_haz
## pers_wast 0.0184852872928177 0.0196236774193548 0.020054967032967
##         0                  1                  1                 1
##         1                  0                  0                 0
##          y_rate_haz
## pers_wast 0.0218462486187845 0.0219676166666667 0.0235180670103093
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0239232471910113 0.0250687087912088 0.0254888547486034
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0264493043478261 0.026739956043956 0.0315801803278688
##         0                  1                 1                  1
##         1                  0                 0                  0
##          y_rate_haz
## pers_wast 0.0317536978021978 0.033424945054945 0.033442445026178
##         0                  2                 1                 1
##         1                  0                 0                 0
##          y_rate_haz
## pers_wast 0.0359767419354839 0.0367674395604396 0.0369705745856354
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0373836536312849 0.0388657833333333 0.04562505
##         0                  1                  1          1
##         1                  0                  0          0
##          y_rate_haz
## pers_wast 0.0484661703296703 0.0501374175824176 0.0506945
##         0                  1                  1         1
##         1                  0                  0         0
##          y_rate_haz
## pers_wast 0.0512641011235955 0.0541906724137931 0.0545516902173913
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0548497868852459 0.055455861878453 0.0560754804469273
##         0                  1                 1                  1
##         1                  0                 0                  0
##          y_rate_haz
## pers_wast 0.0581740163934426 0.0584936538461538 0.0618361483516483
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.063059012195122 0.0645717653631285 0.0651786428571429
##         0                 1                  1                  2
##         1                 0                  0                  0
##          y_rate_haz
## pers_wast 0.0663917817258883 0.0664845901639344 0.066884890052356
##         0                  1                  1                 1
##         1                  0                  0                 0
##          y_rate_haz
## pers_wast 0.0692824833333334 0.0731330491803279 0.0752061263736264
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0756216298342541 0.0818911153846154 0.0930784262295082
##         0                  1                  2                  1
##         1                  0                  0                  0
##          y_rate_haz
## pers_wast 0.0935898461538461 0.0980093666666667 0.100274835164835
##         0                  1                  1                 1
##         1                  0                  0                 0
##          y_rate_haz
## pers_wast 0.100828839779006 0.101389 0.105870281767956 0.10645845
##         0                 1        1                 1          1
##         1                 0        0                 0          0
##          y_rate_haz
## pers_wast 0.106959824175824 0.108752446927374 0.109231243093923
##         0                 2                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.122001049450549 0.130357285714286 0.145398510989011
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## pers_wast 0.147069758241758 0.1520835 0.163006624309392 0.163655070652174
##         0                 1         1                 1                 1
##         1                 0         0                 0                 0
##          y_rate_haz
## pers_wast 0.168614315217391 0.170188678571429 0.18885093956044
##         0                 1                 1                1
##         1                 0                 0                0
##          y_rate_haz
## pers_wast 0.190522186813187 0.222275884615385 0.223853241573034
##         0                 1                 1                 1
##         1                 0                 0                 0
```




# Results Detail

## Results Plots
![](/tmp/094eddc1-c2ea-4e9c-a1c8-c8df6016c39b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/094eddc1-c2ea-4e9c-a1c8-c8df6016c39b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0288677   -0.0606802    0.0029447
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.8301095   -0.8609486   -0.7992704
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0177525   -0.0589215    0.0234166
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0569083   -0.1747131    0.0608965
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1093744   -0.2200366    0.0012878
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.2065755   -0.4413335    0.0281825
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.2680793   -0.3256279   -0.2105306
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.2319530   -0.3754428   -0.0884632
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.3822557   -0.4266069   -0.3379045
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.5544653   -0.6858132   -0.4231174
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.2362023   -0.3866052   -0.0857993
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.1339200   -0.3078040    0.5756439
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0392330   -0.0574269   -0.0210391
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1283180   -0.2279434   -0.0286925
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.2785443   -0.3022578   -0.2548309
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.1689453    0.1173729    0.2205177
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0301009   -0.0541389   -0.0060628
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.4403090   -0.4497899   -0.4308280
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0337599   -0.0621736   -0.0053463
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.1138002   -0.2412947    0.0136944
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0969074   -0.1485081   -0.0453066
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1042623   -0.2279999    0.0194752
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0550858   -0.0873094   -0.0228621
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0364458   -0.1153159    0.0424244
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0776152    0.0489792    0.1062512
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.0252739   -0.1427354    0.0921877
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0421991   -0.0278903    0.1122886
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0024896   -0.2006609    0.2056401
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0239236   -0.0402812   -0.0075660
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0170494   -0.0471426    0.0812413
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0800364   -0.0967817   -0.0632910
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1867170   -0.2376874   -0.1357465
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0152161   -0.0335893    0.0031572
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.4372693   -0.5073516   -0.3671869
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1548320   -0.1744954   -0.1351685
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2398591   -0.2751243   -0.2045939
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0037601   -0.0359144    0.0283941
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0936021   -0.2883811    0.1011769
3-6 months     ki1114097-CMIN             PERU                           0                    NA                -0.0556745   -0.0783125   -0.0330366
3-6 months     ki1114097-CMIN             PERU                           1                    NA                -0.1677108   -0.2695951   -0.0658265
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0798107   -0.0901590   -0.0694623
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.2868500   -0.2912023   -0.2824976
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0812739   -0.0932767   -0.0692710
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0523041   -0.0862613   -0.0183469
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0928858   -0.1152995   -0.0704721
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1456523   -0.1837321   -0.1075725
6-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0191341   -0.0325072   -0.0057611
6-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0552668   -0.0863061   -0.0242275
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0082271   -0.0308213    0.0472755
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -0.1242672   -0.2048189   -0.0437155
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0632871   -0.0702775   -0.0562967
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0830350   -0.1202680   -0.0458020
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0588083   -0.0681173   -0.0494993
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0955519   -0.1368002   -0.0543036
6-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0614415   -0.0692327   -0.0536502
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1226850   -0.1574751   -0.0878949
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0598857   -0.0685165   -0.0512549
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0726414   -0.0926756   -0.0526073
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0775181   -0.0927225   -0.0623137
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0533863   -0.1065897   -0.0001828
6-12 months    ki1114097-CMIN             PERU                           0                    NA                -0.0953703   -0.1058687   -0.0848718
6-12 months    ki1114097-CMIN             PERU                           1                    NA                -0.0553901   -0.1264480    0.0156678
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0184812   -0.0239197   -0.0130427
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.1182445   -0.1217537   -0.1147352
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0106028   -0.0158414   -0.0053642
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0133612   -0.0255187   -0.0012037
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0449468   -0.0560605   -0.0338331
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0434027   -0.0638993   -0.0229060
12-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0280883   -0.0355402   -0.0206363
12-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0466495   -0.0620613   -0.0312377
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0089751   -0.0128052   -0.0051449
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0244716   -0.0068134    0.0557566
12-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0202444   -0.0241536   -0.0163351
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0170495   -0.0337891   -0.0003099
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0161508   -0.0212660   -0.0110357
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0107485   -0.0251390    0.0036421


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0339062   -0.0659795   -0.0018330
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0204797   -0.0596747    0.0187152
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0732952   -0.1806423    0.0340519
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2594964   -0.3154509   -0.2035418
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.3938516   -0.4364614   -0.3512419
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.1934958   -0.3384003   -0.0485914
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2850538   -0.3091443   -0.2609633
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0225211   -0.0456381    0.0005960
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0401251   -0.0685271   -0.0117231
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                 0.0701161    0.0419135    0.0983187
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0387792   -0.0275800    0.1051384
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0844665   -0.1011169   -0.0678162
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0167995   -0.0352345    0.0016355
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1659967   -0.1845182   -0.1474752
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0085806   -0.0411510    0.0239898
3-6 months     ki1114097-CMIN             PERU                           NA                   NA                -0.0576273   -0.0800097   -0.0352449
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0807393   -0.0911050   -0.0703737
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0776724   -0.0898619   -0.0654829
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1005481   -0.1211684   -0.0799278
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0260151   -0.0389122   -0.0131180
6-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.0070783   -0.0435451    0.0293884
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0598587   -0.0690454   -0.0506721
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0617247   -0.0695829   -0.0538665
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0614960   -0.0697225   -0.0532696
6-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0773003   -0.0921728   -0.0624278
6-12 months    ki1114097-CMIN             PERU                           NA                   NA                -0.0939324   -0.1044393   -0.0834255
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0178490   -0.0232486   -0.0124494
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0098833   -0.0150187   -0.0047479
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0447636   -0.0549912   -0.0345359
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0317687   -0.0388357   -0.0247017
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0201603   -0.0240062   -0.0163144
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0155649   -0.0206065   -0.0105234


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.8012418   -0.8452293   -0.7572543
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0391558   -0.1639471    0.0856355
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0972011   -0.3553243    0.1609222
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  0.0361262   -0.1169983    0.1892507
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.1722096   -0.3107271   -0.0336920
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.3701222   -0.0965051    0.8367496
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0890850   -0.1896807    0.0115107
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.4474896    0.3911330    0.5038463
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.4102081   -0.4381860   -0.3822302
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0800402   -0.2103216    0.0502411
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0073550   -0.1414137    0.1267038
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.0186400   -0.0661679    0.1034479
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.1028891   -0.2234913    0.0177131
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0397095   -0.2547187    0.1752996
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0409730   -0.0245530    0.1064990
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1066806   -0.1600845   -0.0532767
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.4220532   -0.4942325   -0.3498739
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0850272   -0.1250734   -0.0449810
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0898419   -0.2872487    0.1075648
3-6 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           1                    0                 -0.1120363   -0.2162756   -0.0077969
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.2070393   -0.2183035   -0.1957751
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0289698   -0.0057155    0.0636550
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0527665   -0.0967472   -0.0087859
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0361327   -0.0696084   -0.0026569
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.1324943   -0.2219792   -0.0430094
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0197479   -0.0576170    0.0181212
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0367436   -0.0787645    0.0052773
6-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0612436   -0.0967837   -0.0257034
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0127557   -0.0343810    0.0088695
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    0                  0.0241318   -0.0308529    0.0791165
6-12 months    ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           1                    0                  0.0399801   -0.0318434    0.1118037
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0997632   -0.1063308   -0.0931957
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0027584   -0.0155063    0.0099895
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0015441   -0.0213940    0.0244822
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0185612   -0.0355115   -0.0016109
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0334466    0.0019266    0.0649667
12-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0031948   -0.0139027    0.0202923
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0054024   -0.0096111    0.0204159
