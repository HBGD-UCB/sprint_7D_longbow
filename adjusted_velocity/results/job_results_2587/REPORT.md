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

**Outcome Variable:** y_rate_len

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
##          y_rate_len
## pers_wast 2.21512923913043 2.46535357894737 2.46713233333333
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.51837193548387 2.54574554347826 2.58865531914894
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.71105369565217 2.81272709677419 2.90341227272727
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.94139516483516 2.94139516483517 2.97554673913043
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.00896387096774 3.07546633333333 3.14194483516483 3.143059
##         0                1                1                1        1
##         1                0                0                0        0
##          y_rate_len
## pers_wast 3.14655517241379 3.20697815217391 3.244448 3.30053553191489
##         0                1                1        1                2
##         1                0                0        0                0
##          y_rate_len
## pers_wast 3.30331903225806 3.37963333333333 3.40143741935484
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.4093443956044 3.41342966666667 3.43840956521739
##         0               1                1                1
##         1               0                0                0
##          y_rate_len
## pers_wast 3.44276934065934 3.447226 3.45178280898876 3.46684967741935
##         0                2        1                2                1
##         1                0        0                0                0
##          y_rate_len
## pers_wast 3.50961923076923 3.51481866666667 3.52704287234043
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.53226193548387 3.54304417582418 3.548615 3.57065608695652
##         0                1                1        2                4
##         1                0                0        0                0
##          y_rate_len
## pers_wast 3.59767419354839 3.60371771739131 3.60989406593407
##         0                1                1                3
##         1                0                0                0
##          y_rate_len
## pers_wast 3.62411744680851 3.62926534090909 3.63677934782609
##         0                2                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.64331901098901 3.65647563829787 3.66984097826087
##         0                2                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.68380033333333 3.71759666666667 3.73596423913044
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.74359384615385 3.751393 3.77586620689655 3.78518933333333
##         0                1        1                1                2
##         1                0        0                0                0
##          y_rate_len
## pers_wast 3.8020875 3.81044373626374 3.81898566666667 3.83514913043478
##         0         4                1                2                1
##         1         0                0                0                0
##          y_rate_len
## pers_wast 3.852782 3.8547897029703 3.92882375 3.93433402173913
##         0        1               1          1                1
##         1        0               0          0                0
##          y_rate_len
## pers_wast 3.94513633663366 3.954171 3.96442382022472 3.97756846153846
##         0                1        3                1                1
##         1                0        0                0                0
##          y_rate_len
## pers_wast 3.98796733333333 3.99859988764045 4.0004572826087
##         0                1                1               1
##         1                0                0               0
##          y_rate_len
## pers_wast 4.01099340659341 4.01241574468085 4.02176366666667
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 4.03351891304348 4.03421494736842 4.04477393617021 4.05556
##         0                1                1                1       1
##         1                0                0                0       0
##          y_rate_len
## pers_wast 4.0778432967033 4.08826612903226 4.08935633333333
##         0               2                1                2
##         1               0                0                0
##          y_rate_len
## pers_wast 4.11126824175824 4.12097225806451 4.12798071428571
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 4.13270380434783 4.13530415730337 4.17420670212766
##         0                2                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 4.18638451612903 4.19882706521739 4.20656489361702
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 4.21909064516129 4.22109306122449 4.22454166666667
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 4.23188869565218 4.24496802197802 4.26495032608696
##         0                1                1                3
##         1                0                0                0
##          y_rate_len
## pers_wast 4.28598954545455 4.29213433333333 4.29801195652174
##         0                1                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 4.31720903225806 4.34036056179775 4.359727 4.37021551724138
##         0                1                1        1                1
##         1                0                0        0                0
##          y_rate_len
## pers_wast 4.3786678021978 4.41532741935484 4.44013896551724 4.461116
##         0               2                1                1        1
##         1               0                0                0        0
##          y_rate_len
## pers_wast 4.47894263736264 4.48073967741936 4.49491233333333
##         0                1                2                1
##         1                0                0                0
##          y_rate_len
## pers_wast 4.49638173913044 4.51236758241758 4.51344580645161
##         0                1                2                1
##         1                0                0                0
##          y_rate_len
## pers_wast 4.52944336956522 4.54579252747253 4.562505 4.57921747252747
##         0                3                3        1                3
##         1                0                0        0                0
##          y_rate_len
## pers_wast 4.59630133333333 4.67949230769231 4.68212123595506
##         0                1                2                1
##         1                0                0                0
##          y_rate_len
## pers_wast 4.71629730337079 4.72781315217391 4.75665414893617
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 4.77976714285714 4.80780096774194 4.866672 4.88004197802198
##         0                1                1        1                2
##         1                0                0        0                0
##          y_rate_len
## pers_wast 4.93862548387097 4.9831614893617 4.99230619565217
##         0                1               1                1
##         1                0               0                0
##          y_rate_len
## pers_wast 5.01374175824176 5.06945 5.09149108695652 5.10324633333333
##         0                1       1                1                1
##         1                0       0                0                0
##          y_rate_len
## pers_wast 5.17731063829787 5.18086648351648 5.24771637362637
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 5.25679923913043 5.30674340425532 5.33910159574468
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 5.34914379310345 5.39651129032258 5.39981865168539
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 5.4148410989011 5.779173 5.94815466666667 6.08334
##         0               1        1                1       1
##         1               0        0                0       0
##          y_rate_len
## pers_wast 1.37042274725275 1.76613096774193 1.79883709677419
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.81205872340426 1.91757456521739 2.03856606382979
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.07092425531915 2.11594434782609 2.13564063829787
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.21512923913044 2.22401677419355 2.24819086956522 2.2812525
##         0                1                1                1         1
##         1                0                0                0         0
##          y_rate_len
## pers_wast 2.38043739130435 2.38754741935484 2.44002098901099
##         0                1                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 2.46713233333333 2.51837193548387 2.54574554347826
##         0                1                2                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.58865531914894 2.5973811235955 2.60714571428571
##         0                1               1                1
##         1                0               0                0
##          y_rate_len
## pers_wast 2.64493043478261 2.6491964516129 2.66146125 2.68572989361702
##         0                1               1          1                2
##         1                0               0          0                0
##          y_rate_len
## pers_wast 2.71460870967742 2.737503 2.7408454945055 2.74731483870968
##         0                1        1               2                2
##         1                0        0               0                0
##          y_rate_len
## pers_wast 2.77427043956044 2.77717695652174 2.78002096774194
##         0                4                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 2.80509566666667 2.81272709677419 2.81516265957447
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.8433002173913 2.84543322580645 2.84752085106383
##         0               1                3                1
##         1               0                0                0
##          y_rate_len
## pers_wast 2.87636184782609 2.87813935483871 2.90942347826087
##         0                3                1                3
##         1                0                0                0
##          y_rate_len
## pers_wast 2.91084548387097 2.94139516483516 2.94248510869565
##         0                1                1                3
##         1                0                0                0
##          y_rate_len
## pers_wast 2.97331786516854 2.97554673913043 3.00860836956522
##         0                1                1                4
##         1                0                0                0
##          y_rate_len
## pers_wast 3.00931180851064 3.04167 3.07473163043478 3.07509494505495
##         0                1       7                1                1
##         1                0       0                0                0
##          y_rate_len
## pers_wast 3.07546633333333 3.10638638297872 3.10708225806452
##         0                1                1                3
##         1                0                0                0
##          y_rate_len
## pers_wast 3.10779326086956 3.10851989010989 3.11159344827586
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.13874457446809 3.13978838709677 3.14085489130435
##         0                1                1                3
##         1                0                0                0
##          y_rate_len
## pers_wast 3.17391652173913 3.17536978021978 3.17685533333333
##         0                1                2                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.17837426966292 3.20520064516129 3.20697815217391
##         0                2                2                2
##         1                0                0                0
##          y_rate_len
## pers_wast 3.20879472527472 3.20879472527473 3.23581914893617
##         0                2                2                3
##         1                0                0                0
##          y_rate_len
## pers_wast 3.23790677419355 3.2400397826087 3.24221967032967 3.244448
##         0                2               1                1        1
##         1                0               0                0        0
##          y_rate_len
## pers_wast 3.26817734042553 3.27061290322581 3.27310141304348
##         0                1                1                3
##         1                0                0                0
##          y_rate_len
## pers_wast 3.30053553191489 3.30331903225806 3.30616304347826
##         0                1                2                3
##         1                0                0                0
##          y_rate_len
## pers_wast 3.31204066666667 3.33289372340425 3.33289372340426
##         0                3                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.33602516129032 3.33922467391304 3.34249450549451
##         0                3                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.35274988636364 3.36873129032258 3.37228630434783
##         0                1                2                2
##         1                0                0                0
##          y_rate_len
## pers_wast 3.37591945054945 3.37963333333333 3.38308193877551
##         0                5                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.39761010638298 3.40143741935484 3.40534793478261
##         0                2                1                3
##         1                0                0                0
##          y_rate_len
## pers_wast 3.4093443956044 3.4341435483871 3.44276934065934 3.447226
##         0               2               1                1        1
##         1               0               0                0        0
##          y_rate_len
## pers_wast 3.46684967741935 3.47147119565217 3.47619428571429
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.48102233333333 3.48595887640449 3.49468468085106
##         0                2                1                3
##         1                0                0                0
##          y_rate_len
## pers_wast 3.49955580645161 3.50961923076923 3.51481866666667
##         0                2                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.52557204545454 3.52704287234043 3.53226193548387
##         0                1                1                3
##         1                0                0                0
##          y_rate_len
## pers_wast 3.53759445652174 3.54304417582417 3.548615 3.55940106382979
##         0                2                1        1                2
##         1                0                0        0                0
##          y_rate_len
## pers_wast 3.56496806451613 3.57065608695652 3.57646912087912
##         0                2                1                4
##         1                0                0                0
##          y_rate_len
## pers_wast 3.58241133333333 3.59175925531915 3.59767419354839
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.6037177173913 3.60494222222222 3.61620766666667
##         0               3                1                2
##         1               0                0                0
##          y_rate_len
## pers_wast 3.62266314606741 3.62411744680851 3.63038032258065
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.63677934782609 3.64331901098901 3.65647563829787
##         0                3                2                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.6630864516129 3.66984097826087 3.67674395604396
##         0               2                2                1
##         1               0                0                0
##          y_rate_len
## pers_wast 3.68380033333333 3.7101689010989 3.71759666666667
##         0                1               2                1
##         1                0               0                0
##          y_rate_len
## pers_wast 3.7211920212766 3.73596423913044 3.74359384615384
##         0               2                1                1
##         1               0                0                0
##          y_rate_len
## pers_wast 3.74359384615385 3.75355021276596 3.76902586956522
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.77701879120879 3.78518933333333 3.78590840425532
##         0                1                2                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.81044373626374 3.81826659574468 3.83514913043478
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.84386868131868 3.85062478723404 3.85932322580645
##         0                2                3                2
##         1                0                0                0
##          y_rate_len
## pers_wast 3.86821076086956 3.88657833333333 3.89607168539326
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.90127239130435 3.91071857142857 3.91534117021277
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.93024775280899 3.93433402173913 3.954171 3.95744161290323
##         0                1                1        1                1
##         1                0                0        0                0
##          y_rate_len
## pers_wast 3.99014774193548 4.0004572826087 4.01099340659341
##         0                3               1                2
##         1                0               0                0
##          y_rate_len
## pers_wast 4.02176366666667 4.03351891304348 4.06658054347826
##         0                1                2                3
##         1                0                0                0
##          y_rate_len
## pers_wast 4.0778432967033 4.14469318681319 4.17811813186813
##         0               1                2                1
##         1               0                0                0
##          y_rate_len
## pers_wast 4.26495032608696 4.29801195652174 4.30363946808511
##         0                2                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 4.33599765957447 4.3786678021978 4.59556663043478
##         0                1               1                1
##         1                0               0                0
##          y_rate_len
## pers_wast 4.64427032258064 4.80780096774193
##         0                1                1
##         1                0                0
##          y_rate_len
## pers_wast 1.65909272727273 1.76841279069767 1.9210547368421 2.091148125
##         0                1                1               1           1
##         1                0                0               0           0
##          y_rate_len
## pers_wast 2.129169 2.20120855263158 2.20604637362637 2.26435433333333
##         0        1                1                1                1
##         1        0                0                0                0
##          y_rate_len
## pers_wast 2.37739724137931 2.40131842105263 2.40329481481481
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.42650078651685 2.433336 2.46067685393258 2.46230428571428
##         0                1        1                1                1
##         1                0        0                0                0
##          y_rate_len
## pers_wast 2.48863909090909 2.534725 2.56320505617978 2.56526385542169
##         0                1        1                1                1
##         1                0        0                0                0
##          y_rate_len
## pers_wast 2.61225776470588 2.66146125 2.66615518518519 2.67956642857143
##         0                1          1                1                1
##         1                0          0                0                0
##          y_rate_len
## pers_wast 2.68572989361702 2.77129933333333 2.79117952941176
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.82440785714286 2.82946046511628 2.85391259259259
##         0                2                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.86274823529412 2.89329585365854 2.89682857142857
##         0                1                2                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.90648466666667 2.93914179775281 2.96562825 2.97174655172414
##         0                1                1          1                1
##         1                0                0          0                0
##          y_rate_len
## pers_wast 2.97407733333333 3.00411851851852 3.00749393258427 3.04167
##         0                1                1                1       3
##         1                0                0                0       0
##          y_rate_len
## pers_wast 3.07546633333333 3.07623443181818 3.07745435294118
##         0                2                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 3.10779326086956 3.11159344827586 3.14085489130435
##         0                2                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.14194483516483 3.14194483516484 3.14419820224719
##         0                1                1                3
##         1                0                0                0
##          y_rate_len
## pers_wast 3.14655517241379 3.14777476744186 3.1529506097561
##         0                2                1               1
##         1                0                0               0
##          y_rate_len
## pers_wast 3.15432444444444 3.16017662337662 3.17837426966292
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.17992772727273 3.20697815217391 3.20879472527473
##         0                2                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 3.22490313253012 3.24221967032967 3.244448 3.24672640449438
##         0                1                1        1                1
##         1                0                0        0                0
##          y_rate_len
## pers_wast 3.25893214285714 3.26979525 3.27564461538461 3.27564461538462
##         0                6          1                1                1
##         1                0          0                0                0
##          y_rate_len
## pers_wast 3.27824433333333 3.28362102272727 3.29216047058824
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.29819638554217 3.30453037037037 3.30616304347826
##         0                2                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.31204066666667 3.33841829268293 3.34925460674157
##         0                1                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 3.35274988636364 3.35632551724138 3.37963333333333 3.383857875
##         0                1                1                2           1
##         1                0                0                0           0
##          y_rate_len
## pers_wast 3.39761010638298 3.40534793478261 3.4093443956044
##         0                1                1               1
##         1                0                0               0
##          y_rate_len
## pers_wast 3.41760674157303 3.42187875 3.43162769230769 3.4341435483871
##         0                2          3                1               1
##         1                0          0                0               0
##          y_rate_len
## pers_wast 3.4547362962963 3.46519367088608 3.47062346153846
##         0               1                2                1
##         1               0                0                0
##          y_rate_len
## pers_wast 3.47147119565217 3.48102233333333 3.48679243902439
##         0                1                2                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.53682558139535 3.53759445652174 3.54265094117647 3.548615
##         0                1                1                1        3
##         1                0                0                0        0
##          y_rate_len
## pers_wast 3.56013647727273 3.56097951219512 3.56496806451613
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.57843529411765 3.58241133333333 3.59470090909091
##         0                2                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.6010575862069 3.611983125 3.61620766666667 3.62103571428571
##         0               1           1                1                2
##         1               0           0                0                0
##          y_rate_len
## pers_wast 3.62266314606741 3.63677934782609 3.650004 3.66382977272727
##         0                1                1        1                1
##         1                0                0        0                0
##          y_rate_len
## pers_wast 3.66984097826087 3.67674395604396 3.69839420454546
##         0                1                3                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.70935365853659 3.71759666666667 3.73596423913043
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.74359384615385 3.74644719512195 3.75514814814815
##         0                4                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 3.75936741573034 3.76120483870968 3.76902586956522
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.78354073170732 3.79354348314607 3.8020875 3.81044373626374
##         0                2                1         2                2
##         1                0                0         0                0
##          y_rate_len
## pers_wast 3.81082793103448 3.81898566666667 3.8277195505618
##         0                1                1               1
##         1                0                0               0
##          y_rate_len
## pers_wast 3.83514913043478 3.83665193181818 3.840108375 3.84386868131868
##         0                1                1           1                1
##         1                0                0           0                0
##          y_rate_len
## pers_wast 3.852782 3.86471011764706 3.87121636363636 3.88657833333333
##         0        1                1                2                1
##         1        0                0                0                0
##          y_rate_len
## pers_wast 3.89050813953488 3.91571310344828 3.92037466666667
##         0                1                2                2
##         1                0                0                0
##          y_rate_len
## pers_wast 3.92473548387097 3.93024775280899 3.93433402173913
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.94414351648352 3.954171 3.97490965909091 3.98313928571429
##         0                2        1                1                1
##         1                0        0                0                0
##          y_rate_len
## pers_wast 3.98563655172414 3.98796733333333 4.00219736842105
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 4.0319811627907 4.04403852272727 4.05556 4.0778432967033
##         0               1                1       2               1
##         1               0                0       0               0
##          y_rate_len
## pers_wast 4.07941623529412 4.11520058823529 4.12548344827586
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 4.15447609756098 4.16044517241379 4.16576543478261
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 4.17811813186813 4.18229625 4.20365629213483 4.22255364705882
##         0                1          1                1                1
##         1                0          0                0                0
##          y_rate_len
## pers_wast 4.23188869565217 4.24496802197802 4.26495032608696
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 4.31842037037037 4.33107358695652 4.34524285714286
##         0                1                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 4.39352333333333 4.41766357142857 4.43025847826087
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 4.44288876404494 4.4512243902439 4.49008428571428
##         0                1               1                1
##         1                0               0                0
##          y_rate_len
## pers_wast 4.50617777777778 4.50882847058824 4.54502413793103 4.562505
##         0                1                1                1        1
##         1                0                0                0        0
##          y_rate_len
## pers_wast 4.73532715909091 4.83735469879518 4.83902045454545
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 4.90046833333333 5.24425862068966
##         0                1                1
##         1                0                0
##          y_rate_len
## pers_wast 2.65171230769231 2.68615012987013 3.00216779220779
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.08066576923077 3.1633368 3.20833684931507 3.244448 3.2850036
##         0                1         1                1        1         1
##         1                0         0                0        0         0
##          y_rate_len
## pers_wast 3.36184578947368 3.39263192307692 3.5551987012987
##         0                1                1               1
##         1                0                0               0
##          y_rate_len
## pers_wast 3.58482535714286 3.59470090909091 3.60197763157895
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.63420311688312 3.64199960526316 3.70459807692308
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.79221194805195 3.82381371428571 3.84210947368421 3.916150125
##         0                1                1                1           1
##         1                0                0                0           0
##          y_rate_len
## pers_wast 4.02922519480519 4.09177035714286 4.10822961038961
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 4.27477945945946 4.30574064935065 4.32688267605634 4.4205604
##         0                1                1                1         1
##         1                0                0                0         0
##          y_rate_len
## pers_wast 4.52248302631579
##         0                1
##         1                0
##          y_rate_len
## pers_wast 0.441667150684931 0.455836103542234 0.464124032697547
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.59673089918256 0.600000657534247 0.608334 0.614982459016394
##         0                1                 1        1                 1
##         1                0                 0        0                 0
##          y_rate_len
## pers_wast 0.616667342465754 0.625000684931507 0.62671771978022
##         0                 1                 2                1
##         1                 0                 0                0
##          y_rate_len
## pers_wast 0.636823471074381 0.650000712328767 0.660142664835165
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.664845901639344 0.666667397260274 0.670340495867769
##         0                 1                 3                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.671322261580381 0.678719752066115 0.68333408219178
##         0                 1                 1                1
##         1                 0                 0                0
##          y_rate_len
## pers_wast 0.685211373626374 0.689777622950819 0.691667424657534
##         0                 1                 2                 2
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.69356760989011 0.701296568364611 0.703857520661157
##         0                1                 1                 1
##         1                0                 0                 0
##          y_rate_len
## pers_wast 0.704473978201635 0.706398770491803 0.708334109589041
##         0                 2                 1                 3
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.714709344262296 0.716667452054794 0.716667452054795
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.725000794520548 0.728995289256198 0.735348791208791
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.737625694822889 0.739641065573771 0.741667479452054
##         0                 2                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.741667479452055 0.743886684782609 0.745913623978202
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.750000821917808 0.75413305785124 0.758334164383561 0.7604175
##         0                 4                1                 2         1
##         1                 0                0                 0         0
##          y_rate_len
## pers_wast 0.764572786885246 0.766667506849315 0.768773736263735
##         0                 2                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.775000849315068 0.779270826446281 0.781193934426229
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.783334191780822 0.789504508196721 0.791667534246575
##         0                 1                 1                 4
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.793842445054945 0.795641198910081 0.796831859154929
##         0                 2                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.797815081967213 0.800000876712328 0.801744538043478
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.808334219178082 0.814436229508196 0.816667561643835
##         0                 3                 1                 2
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.818911153846154 0.820504986376021 0.820504986376022
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.825000904109589 0.826540760869565 0.83105737704918
##         0                 3                 1                3
##         1                 0                 0                0
##          y_rate_len
## pers_wast 0.83480616847826 0.835623626373626 0.839367950819672
##         0                1                 1                 2
##         1                0                 0                 0
##          y_rate_len
## pers_wast 0.839367950819673 0.840461447368421 0.841667589041095
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.843979862637362 0.843979862637363 0.85000093150685
##         0                 1                 1                2
##         1                 0                 0                0
##          y_rate_len
## pers_wast 0.851336983695652 0.853656702997275 0.858334273972602
##         0                 2                 2                 2
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.864299672131148 0.866667616438357 0.869048571428572
##         0                 1                 1                 2
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.872610245901639 0.87500095890411 0.880920819672132
##         0                 3                1                 1
##         1                 0                0                 0
##          y_rate_len
## pers_wast 0.888201157024793 0.891667643835617 0.90000098630137
##         0                 1                 3                2
##         1                 0                 0                0
##          y_rate_len
## pers_wast 0.903384277929155 0.904959669421487 0.908334328767123
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.911672207084469 0.914163114754098 0.916667671232877
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.919185989010989 0.92247368852459 0.925725652173913
##         0                 1                1                 1
##         1                 0                0                 0
##          y_rate_len
## pers_wast 0.927542225274726 0.928248065395096 0.933334356164384
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.933991059782608 0.939094836065574 0.941667698630137
##         0                 1                 3                 2
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.947405409836066 0.950001041095891 0.955715983606557
##         0                 1                 3                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.958334383561644 0.961399782016348 0.964026557377049
##         0                 1                 2                 2
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.967431428571428 0.969687711171662 0.972337131147541
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.975318097826087 0.975318097826088 0.980647704918033
##         0                 1                 1                 2
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.983334410958904 0.983583505434783 0.986263569482289
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.988752231404958 0.988958278688525 0.991667753424657
##         0                 1                 2                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 1.00000109589041 1.01110458791209 1.01389 1.03317595108696
##         0                1                1       1                1
##         1                0                0       0                0
##          y_rate_len
## pers_wast 1.03882172131148 1.04144135869565 1.04427907356948
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.04713229508197 1.0525670027248 1.06085493188011
##         0                1               1                1
##         1                0               0                0
##          y_rate_len
## pers_wast 1.06124200549451 1.07500117808219 1.08333452054795
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.09103380434783 1.09699573770492 1.10833454794521
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.1136168852459 1.12500123287671 1.1280918956044
##         0               1                1               1
##         1               0                0               0
##          y_rate_len
## pers_wast 1.16031008174387 1.16859801089918 1.21837201680672
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.25489663934426 1.30593440217391
##         0                1                1
##         1                0                0
##          y_rate_len
## pers_wast 0.31666701369863 0.331517166212534 0.335170247933884
##         0                1                 1                 1
##         1                0                 0                 0
##          y_rate_len
## pers_wast 0.385445785123966 0.395664390243902 0.397820599455041
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.451236758241758 0.475000520547945 0.476305467032967
##         0                 1                 1                 2
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.482013278688524 0.491667205479452 0.495924456521739
##         0                 2                 1                 2
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.500000547945205 0.501374175824176 0.512455271739131
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.53333391780822 0.550000602739726 0.566667287671233
##         0                1                 2                 1
##         1                0                 0                 0
##          y_rate_len
## pers_wast 0.568224065934066 0.568224065934067 0.575000630136987
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.576580302197803 0.580155040871935 0.581740163934426
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.58333397260274 0.584936538461538 0.586547933884297
##         0                5                 4                 1
##         1                0                 0                 0
##          y_rate_len
## pers_wast 0.590050737704919 0.603306446280992 0.616667342465754
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.631603606557377 0.638170544959128 0.641667369863014
##         0                 1                 2                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.643430192307692 0.644701793478261 0.646458474114441
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.64822475409836 0.650000712328767 0.661232608695652
##         0                1                 1                 3
##         1                0                 0                 0
##          y_rate_len
## pers_wast 0.666667397260274 0.668498901098901 0.673156475409837
##         0                 3                 2                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.683334082191781 0.685211373626374 0.689777622950819
##         0                 3                 2                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.69356760989011 0.698088196721312 0.699331329639889
##         0                1                 3                 1
##         1                0                 0                 0
##          y_rate_len
## pers_wast 0.700000767123288 0.701923846153847 0.708334109589041
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.710825054347826 0.716667452054794 0.721049836512262
##         0                 1                 2                 3
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.725000794520548 0.728995289256198 0.729337765667576
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.733334136986301 0.735348791208791 0.741870731707317
##         0                 1                 2                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.743886684782609 0.747951639344262 0.750000821917808
##         0                 1                 1                 8
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.752061263736264 0.756262213114754 0.758334164383562 0.7604175
##         0                 3                 1                 1         1
##         1                 0                 0                 0         0
##          y_rate_len
## pers_wast 0.762489482288829 0.766667506849315 0.768773736263736
##         0                 1                 2                 2
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.776948315217392 0.777129972527472 0.779065340599454
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.783334191780822 0.785486208791209 0.787353269754768
##         0                 1                 1                 2
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.789504508196721 0.793479130434782 0.793479130434783
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.795641198910081 0.797815081967213 0.800000876712328
##         0                 1                 1                 2
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.803929128065395 0.806125655737705 0.807814796747967
##         0                 1                 3                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.808334219178082 0.810554917582418 0.812217057220708
##         0                 1                 2                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.816667561643835 0.82430081300813 0.827267390109891
##         0                 2                1                 1
##         1                 0                0                 0
##          y_rate_len
## pers_wast 0.83105737704918 0.833334246575342 0.835623626373626
##         0                5                 2                 3
##         1                0                 0                 0
##          y_rate_len
## pers_wast 0.842567867036011 0.843979862637362 0.845368773841962
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.852336098901099 0.855989098360656 0.859602391304348
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.866667616438357 0.869048571428572 0.8714426446281
##         0                 1                 2               1
##         1                 0                 0               0
##          y_rate_len
## pers_wast 0.873758861788617 0.876270581717452 0.889231393442623
##         0                 1                 1                 2
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.891667643835617 0.89411728021978 0.90428027027027
##         0                 3                1                1
##         1                 0                0                0
##          y_rate_len
## pers_wast 0.909194836956522 0.910829752747253 0.916667671232877
##         0                 1                 2                 2
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.919185989010989 0.932666767955801 0.933334356164384
##         0                 1                 1                 2
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.935898461538462 0.961399782016348 0.961399782016349
##         0                 2                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.964026557377049 0.966667726027397 0.969687711171662
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.972337131147541 0.975318097826087 0.980372975206612
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.980647704918033 0.983334410958904 0.983583505434783
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.986035879120879 0.988752231404958 0.991848913043478
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.997268852459016 1.00000109589041 1.00274835164835 1.01389
##         0                 1                1                4       1
##         1                 0                0                0       0
##          y_rate_len
## pers_wast 1.01941528610354 1.02500112328767 1.03599114441417
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.05833449315069 1.06666783561644 1.06914286103542
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.08037459016393 1.08631071428571 1.10833454794521
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.12500123287671 1.13333457534247 1.38408416893733
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 0.752061263736264 0.777129972527472 0.78119393442623
##         0                 1                 1                1
##         1                 0                 0                0
##          y_rate_len
## pers_wast 0.806125655737705 0.81278785123967 0.814436229508196
##         0                 1                1                 1
##         1                 0                0                 0
##          y_rate_len
## pers_wast 0.818911153846154 0.825000904109588 0.829546363636364
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.841667589041095 0.877247142857143 0.880920819672131
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.888201157024793 0.889231393442623 0.891667643835617
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.897541967213115 0.905852540983607 0.908334328767124
##         0                 1                 2                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.916667671232877 0.933334356164384 0.939094836065574
##         0                 1                 2                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.944254697802198 0.952034641909814 0.955235206611571
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.96096717032967 0.980647704918033 0.983334410958904
##         0                1                 1                 2
##         1                0                 0                 0
##          y_rate_len
## pers_wast 0.994551498637602 1.00557942622951 1.0361732967033
##         0                 1                2               1
##         1                 0                0               0
##          y_rate_len
## pers_wast 1.04166780821918 1.14480436813187 1.15000126027397
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.2216543442623
##         0               1
##         1               0
##          y_rate_len
## pers_wast 0.568224065934067 0.60164901098901 0.859602391304346
##         0                 1                1                 1
##         1                 0                0                 0
##          y_rate_len
## pers_wast 0.888577752808989 0.958787282608695 0.991105955056177
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.991848913043478 1.00274835164835 1.04659612903226
##         0                 1                2                1
##         1                 0                0                0
##          y_rate_len
## pers_wast 1.06782031914894 1.14907533333333 1.18287166666667
##         0                1                2                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.19021869565217 1.20329802197802 1.20975511363636
##         0                1                2                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.25046433333333 1.27014791208791 1.27553903225806
##         0                1                2                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.3224652173913 1.35185333333333 1.38257727272727
##         0               1                2                1
##         1               0                0                0
##          y_rate_len
## pers_wast 1.39846896551724 1.40384769230769 1.4063635483871
##         0                1                1               1
##         1                0                0               0
##          y_rate_len
## pers_wast 1.42376042553191 1.43539483146068 1.43727263736264
##         0                1                1                3
##         1                0                0                0
##          y_rate_len
## pers_wast 1.43906967741936 1.45324233333333 1.45471173913043
##         0                1                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.47069758241758 1.48703866666667 1.50412252747253 1.520835
##         0                1                1                3        4
##         1                0                0                0        0
##          y_rate_len
## pers_wast 1.53718806451613 1.53754747252747 1.55389663043478
##         0                1                3                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.56989419354839 1.57097241758242 1.5720991011236
##         0                1                3               1
##         1                0                0               0
##          y_rate_len
## pers_wast 1.58996386363636 1.60260032258064 1.61790957446809
##         0                1                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.63782230769231 1.65026776595745 1.65308152173913
##         0                1                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.67124725274725 1.68092289473684 1.68614315217391
##         0                2                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.68981666666667 1.70071870967742 1.71920478260869
##         0                1                2                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.7192047826087 1.723613 1.73342483870968 1.73809714285714
##         0               1        1                1                4
##         1               0        0                0                0
##          y_rate_len
## pers_wast 1.74808620689655 1.75226641304348 1.75740933333333
##         0                1                2                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.77152208791209 1.77715550561798 1.78532804347826
##         0                1                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.80494703296703 1.81838967391304 1.825002 1.83837197802198
##         0                1                7        2                5
##         1                0                0        0                0
##          y_rate_len
## pers_wast 1.84441691489362 1.85145130434782 1.85145130434783
##         0                1                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.85879833333333 1.86424935483871 1.87677510638298
##         0                1                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.88451293478261 1.88793310344828 1.90104375 1.90913329787234
##         0                3                1          1                1
##         1                0                0          0                0
##          y_rate_len
## pers_wast 1.9138597752809 1.91757456521739 1.926391 1.93864681318681
##         0               1                2        1                4
##         1               0                0        0                0
##          y_rate_len
## pers_wast 1.94803584269663 1.95063619565217 1.96236774193548
##         0                1                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.97384968085106 1.98221191011236 1.99507387096774
##         0                1                2                3
##         1                0                0                0
##          y_rate_len
## pers_wast 2.0054967032967 2.00549670329671 2.00620787234043
##         0               3                1                1
##         1               0                0                0
##          y_rate_len
## pers_wast 2.04982108695652 2.06157633333333 2.07092425531915
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.07386590909091 2.0828827173913 2.09319225806452
##         0                3               1                2
##         1                0               0                0
##          y_rate_len
## pers_wast 2.10328244680851 2.10577153846154 2.11594434782609
##         0                1                4                2
##         1                0                0                0
##          y_rate_len
## pers_wast 2.11891617977528 2.12589838709677 2.13564063829787
##         0                1                3                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.13919648351649 2.14900597826087 2.17262142857143
##         0                2                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 2.18206760869565 2.18206760869566 2.18726831460674
##         0                5                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.19131064516129 2.19676166666667 2.20035702127659
##         0                2                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 2.20604637362637 2.20921294736842 2.21512923913044
##         0                2                1                3
##         1                0                0                0
##          y_rate_len
## pers_wast 2.22401677419355 2.230558 2.23271521276596 2.23947131868132
##         0                1        2                1                1
##         1                0        0                0                0
##          y_rate_len
## pers_wast 2.24668806818182 2.24819086956522 2.27289626373626
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.27289626373627 2.2812525 2.31431413043478 2.31581693181818
##         0                3         1                1                1
##         1                0         0                0                0
##          y_rate_len
## pers_wast 2.32213516129032 2.32397258426966 2.32978978723404
##         0                2                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.33974615384615 2.35484129032258 2.3621479787234
##         0                1                1               2
##         1                0                0               0
##          y_rate_len
## pers_wast 2.3731710989011 2.38043739130435 2.39232471910112
##         0               1                1                1
##         1               0                0                0
##          y_rate_len
## pers_wast 2.42650078651685 2.433336 2.44656065217391 2.46713233333333
##         0                1        1                1                1
##         1                0        0                0                0
##          y_rate_len
## pers_wast 2.4796222826087 2.49158074468085 2.50687087912088
##         0               2                1                1
##         1               0                0                0
##          y_rate_len
## pers_wast 2.51268391304348 2.54029582417582 2.54574554347826
##         0                1                3                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.57372076923077 2.57880717391304 2.5818826744186
##         0                1                1               1
##         1                0                0               0
##          y_rate_len
## pers_wast 2.60714571428571 2.61649032258065 2.64493043478261
##         0                2                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.6739956043956 2.72565233766234 2.7408454945055
##         0               2                1               1
##         1               0                0               0
##          y_rate_len
## pers_wast 2.75351178947368 2.77129933333333 2.77427043956044
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.78002096774194 2.80243752808989 2.80509566666667
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.81023858695652 2.81754694736842 2.86884784090909
##         0                2                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.87454527472528 2.87636184782609 2.87813935483871
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.90942347826087 2.94355161290323 2.97695361702128
##         0                2                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.00824505494505 3.00896387096774 3.1367221875 3.14085489130435
##         0                2                1            1                1
##         1                0                0            0                0
##          y_rate_len
## pers_wast 3.17391652173913 3.17536978021978 3.17685533333333
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.24003978260869 3.35274988636364 3.43840956521739
##         0                2                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.63677934782609 3.83514913043478
##         0                1                1
##         1                0                0
##          y_rate_len
## pers_wast 0.345644318181818 0.39673956521739 0.661232608695652
##         0                 1                1                 1
##         1                 0                0                 0
##          y_rate_len
## pers_wast 0.675926666666667 0.727355869565216 0.735348791208792
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.906029361702127 0.925725652173912 0.935898461538461
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.991848913043478 1.00274835164835 1.01389 1.0361732967033
##         0                 4                3       1               1
##         1                 0                0       0               0
##          y_rate_len
## pers_wast 1.04659612903226 1.06959824175824 1.07353058823529
##         0                1                3                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.1001785106383 1.12409543478261 1.13644813186813
##         0               1                1                2
##         1               0                0                0
##          y_rate_len
## pers_wast 1.14907533333333 1.15373689655173 1.16198629213483
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.17519068181818 1.19021869565217 1.25634195652174
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.27014791208791 1.28426066666667 1.29432765957447
##         0                1                2                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.29869056179775 1.30357285714286 1.3224652173913
##         0                1                1               2
##         1                0                0               0
##          y_rate_len
## pers_wast 1.3369978021978 1.35185333333333 1.36564775510204
##         0              11                1                1
##         1               0                0                0
##          y_rate_len
## pers_wast 1.36704269662921 1.37042274725275 1.40384769230769 1.419446
##         0                1                2                4        1
##         1                0                0                0        0
##          y_rate_len
## pers_wast 1.45471173913044 1.46586506024096 1.48703866666667 1.520835
##         0                1                1                1        1
##         1                0                0                0        0
##          y_rate_len
## pers_wast 1.53754747252747 1.53831586206896 1.55389663043478
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.56989419354839 1.60087894736842 1.60439736263736
##         0                1                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.61790957446808 1.622224 1.6353064516129 1.63782230769231
##         0                3        1               1                1
##         1                0        0               0                0
##          y_rate_len
## pers_wast 1.65308152173913 1.65602033333333 1.67124725274725
##         0                5                1                5
##         1                0                0                0
##          y_rate_len
## pers_wast 1.68262595744681 1.68981666666667 1.69365715909091
##         0                2                4                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.70071870967742 1.7046721978022 1.70880337078652 1.710939375
##         0                1               1                1           1
##         1                0               0                0           0
##          y_rate_len
## pers_wast 1.7192047826087 1.72822159090909 1.73809714285714
##         0               2                4                3
##         1               0                0                0
##          y_rate_len
## pers_wast 1.76613096774193 1.76841279069767 1.77970053191489
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.78304793103448 1.78532804347826 1.79298442105263
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.79735045454546 1.80494703296703 1.81800965517241 1.825002
##         0                1                2                2        1
##         1                0                0                0        0
##          y_rate_len
## pers_wast 1.84550764044944 1.87677510638298 1.9138597752809
##         0                2                1               1
##         1                0                0               0
##          y_rate_len
## pers_wast 1.91757456521739 1.92105473684211 1.93864681318681
##         0                2                1                3
##         1                0                0                0
##          y_rate_len
## pers_wast 1.9414914893617 1.96018733333333 1.96236774193548
##         0               1                2                2
##         1               0                0                0
##          y_rate_len
## pers_wast 1.97384968085106 1.98221191011236 1.98369782608696
##         0                1                1                8
##         1                0                0                0
##          y_rate_len
## pers_wast 2.0054967032967 2.01675945652174 2.02778 2.04982108695652
##         0              10                1       2                1
##         1               0                0       0                0
##          y_rate_len
## pers_wast 2.05056404494382 2.07234659340659 2.07386590909091
##         0                2                4                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.0828827173913 2.09537266666667 2.11594434782609
##         0               1                2                3
##         1               0                0                0
##          y_rate_len
## pers_wast 2.13564063829787 2.13919648351649 2.16762689655173
##         0                1                2                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.18206760869565 2.20035702127659 2.20604637362637
##         0                2                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.21212363636364 2.21862988235294 2.23947131868132
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.24123052631579 2.26507340425532 2.27289626373626 2.2812525
##         0                1                3                3         1
##         1                0                0                0         0
##          y_rate_len
## pers_wast 2.29815066666667 2.31431413043478 2.33974615384615
##         0                1                5                4
##         1                0                0                0
##          y_rate_len
## pers_wast 2.36574333333333 2.38043739130435 2.41349902173913
##         0                3                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.44732068965517 2.45295967741935 2.48566580645161
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.51268391304348 2.54574554347826 2.57880717391304
##         0                1                2                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.62689681818182 2.64493043478261 2.6739956043956
##         0                1                2               5
##         1                0                0               0
##          y_rate_len
## pers_wast 2.67399560439561 2.68798744186047 2.70370666666667
##         0                1                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 2.71105369565217 2.73408539325843 2.7408454945055
##         0                1                1               1
##         1                0                0               0
##          y_rate_len
## pers_wast 2.76515454545455 2.80769538461538 2.87454527472528
##         0                1                2                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.97482010989011 2.97554673913043 3.00824505494505
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.07509494505495 3.17110276595745
##         0                1                1
##         1                0                0
##          y_rate_len
## pers_wast 1.19158206185567 1.20329802197802 1.33461030612245
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.42772265306122 1.47069758241758 1.47653883495146 1.520835
##         0                1                1                1        2
##         1                0                0                0        0
##          y_rate_len
## pers_wast 1.53619696969697 1.55187244897959 1.56787113402062
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.57451152941176 1.60439736263736 1.61394734693878
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.61959051948052 1.62032887850467 1.62836878787879
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.63058597938144 1.6353064516129 1.63782230769231
##         0                1               1                1
##         1                0               0                0
##          y_rate_len
## pers_wast 1.64498479591837 1.64608023529412 1.65308152173913
##         0                2                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.66706913461538 1.67124725274725 1.6729185 1.67602224489796
##         0                1                1         1                2
##         1                0                0         0                0
##          y_rate_len
## pers_wast 1.70188678571428 1.7033352 1.70705969387755 1.71658603960396
##         0                1         1                2                1
##         1                0         0                0                0
##          y_rate_len
## pers_wast 1.72465824742268 1.7337519 1.73809714285715 1.75645732394366
##         0                1         1                1                1
##         1                0         0                0                0
##          y_rate_len
## pers_wast 1.76913459183673 1.76913459183674 1.77715550561798
##         0                2                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.78198848484848 1.80017204081633 1.80494703296703
##         0                1                3                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.80693267326733 1.81271242424242 1.825002 1.83120948979592
##         0                1                2        1                3
##         1                0                0        0                0
##          y_rate_len
## pers_wast 1.84343636363636 1.85297137931034 1.85879833333333
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.86224693877551 1.86897795180723 1.8693596875 1.87179692307692
##         0                3                1            1                1
##         1                0                0            0                0
##          y_rate_len
## pers_wast 1.87867852941176 1.88144536082474 1.88451293478261 1.8858354
##         0                1                2                1         1
##         1                0                0                0         0
##          y_rate_len
## pers_wast 1.88996970873786 1.8932843877551 1.89727930693069 1.90104375
##         0                1               4                1          1
##         1                0               0                0          0
##          y_rate_len
## pers_wast 1.90488424242424 1.92432183673469 1.926391 1.9414914893617
##         0                1                2        1               1
##         1                0                0        0               0
##          y_rate_len
## pers_wast 1.94416020618557 1.94525406976744 1.95535928571428
##         0                1                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.95535928571429 1.96595743902439 1.96633212121212
##         0                2                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.97551762886598 1.9770855 1.98221191011236 1.98639673469388
##         0                1         1                1                5
##         1                0         0                0                0
##          y_rate_len
## pers_wast 1.99705606060606 2.00687505154639 2.01743418367347 2.02778
##         0                1                2                1       1
##         1                0                0                0       0
##          y_rate_len
## pers_wast 2.04847163265306 2.05056404494382 2.0594640625 2.07234659340659
##         0                5                1            1                3
##         1                0                0            0                0
##          y_rate_len
## pers_wast 2.07950908163265 2.091148125 2.09319225806452 2.10094731958763
##         0                6           1                1                1
##         1                0           0                0                0
##          y_rate_len
## pers_wast 2.10328244680851 2.10577153846154 2.11054653061224
##         0                2                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 2.11054653061225 2.1228321875 2.13230474226804 2.14158397959183
##         0                1            1                2                1
##         1                0            0                0                0
##          y_rate_len
## pers_wast 2.14158397959184 2.15067575757576 2.16366216494846
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.17262142857143 2.20365887755102 2.21212363636364 2.2204191
##         0                1                3                1         1
##         1                0                0                0         0
##          y_rate_len
## pers_wast 2.22144438202247 2.22637701030928 2.230558 2.23469632653061
##         0                1                2        1                2
##         1                0                0        0                0
##          y_rate_len
## pers_wast 2.23821 2.23947131868132 2.24284757575757 2.25773443298969
##         0       1                1                2                1
##         1       0                0                0                0
##          y_rate_len
## pers_wast 2.25866584158416 2.2657337755102 2.27289626373627 2.2812525
##         0                1               2                1         2
##         1                0               0                0         0
##          y_rate_len
## pers_wast 2.2890918556701 2.2967712244898 2.29743159574468
##         0               2               1                1
##         1               0               0                0
##          y_rate_len
## pers_wast 2.29979926829268 2.3116692 2.33974615384615 2.36574333333333
##         0                1         1                1                3
##         1                0         0                0                0
##          y_rate_len
## pers_wast 2.38401162162162 2.38785308411215 2.38988357142857
##         0                1                1                3
##         1                0                0                0
##          y_rate_len
## pers_wast 2.39646727272727 2.40963467532468 2.42092102040816
##         0                1                1                3
##         1                0                0                0
##          y_rate_len
## pers_wast 2.42719121212121 2.44470672897196 2.44587896907217
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.45791515151515 2.47723639175258 2.48299591836735 2.5030409375
##         0                1                1                2            2
##         1                0                0                0            0
##          y_rate_len
## pers_wast 2.50687087912088 2.50859381443299 2.51403336734694
##         0                2                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 2.51936303030303 2.54507081632653 2.57610826530612
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.58993683168317 2.60266608247423 2.60714571428571
##         0                1                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 2.63402350515464 2.63818316326531 2.64225878787879 2.66146125
##         0                1                1                1          1
##         1                0                0                0          0
##          y_rate_len
## pers_wast 2.6692206122449 2.6739956043956 2.69673835051546
##         0               3               1                1
##         1               0               0                0
##          y_rate_len
## pers_wast 2.70025806122449 2.70370666666667 2.73129551020408 2.8198815625
##         0                1                1                1            1
##         1                0                0                0            0
##          y_rate_len
## pers_wast 2.91752020408163 3.00588564705882 3.07270744897959
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 3.4141193877551
##         0               1
##         1               0
##          y_rate_len
## pers_wast 0.614982459016394 0.677763423913045 0.739411491712708
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.752061263736265 0.773021104972375 0.789825911602209
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.793479130434782 0.802198681318682 0.811112 0.823435524861879
##         0                 1                 1        1                 1
##         1                 0                 0        0                 0
##          y_rate_len
## pers_wast 0.826540760869565 0.840240331491713 0.843071576086957
##         0                 2                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.843071576086958 0.859602391304348 0.8618065 0.864299672131148
##         0                 1                 1         1                 1
##         1                 0                 0         0                 0
##          y_rate_len
## pers_wast 0.869048571428572 0.876133206521739 0.885761043956043
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.892664021739129 0.902473516483515 0.902473516483517
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.909194836956522 0.912500999999999 0.919185989010989
##         0                 1                 1                 2
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.920721729729729 0.924264364640884 0.925725652173912
##         0                 1                 2                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.929399166666667 0.930784262295083 0.935898461538461
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.93716318918919 0.941069171270717 0.946297333333334
##         0                1                 1                 1
##         1                0                 0                 0
##          y_rate_len
## pers_wast 0.947405409836066 0.958787282608695 0.958787282608697 0.9631955
##         0                 1                 1                 1         2
##         1                 0                 0                 0         0
##          y_rate_len
## pers_wast 0.974678784530386 0.980647704918033 0.980647704918034
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.981183870967742 0.991848913043478 0.997268852459016
##         0                 1                 3                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 1.00846812834225 1.01389 1.01946082417583 1.01955418994413
##         0                1       3                1                1
##         1                0       0                0                0
##          y_rate_len
## pers_wast 1.02491054347826 1.02509320441989 1.03051114754098
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.0361732967033 1.04189801104972 1.04768633333333
##         0               1                2                1
##         1               0                0                0
##          y_rate_len
## pers_wast 1.05225340540541 1.05288576923077 1.05726497326203
##         0                3                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.05797217391304 1.05870281767956 1.06375344262295
##         0                2                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.06869486486486 1.07353058823529 1.07450298913043
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.08037459016393 1.08513632432432 1.08631071428571
##         0                2                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.09103380434783 1.09231243093923 1.09565532258065
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.09699573770492 1.10097257668712 1.10157778378378
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.10302318681319 1.10756461956522 1.11801924324324
##         0                3                4                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.11973565934066 1.12409543478261 1.13644813186813 1.14062625
##         0                2                1                3          3
##         1                0                0                0          0
##          y_rate_len
## pers_wast 1.14471451612903 1.14685918032787 1.15090216216216
##         0                1                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.15715706521739 1.17368788043478 1.17742064516129
##         0                2                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.18010147540984 1.18287166666667 1.18378508108108
##         0                1                2                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.19314127071823 1.19976983333333 1.20022654054054
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.20329802197802 1.20365550802139 1.20674951086957 1.216668
##         0                2                2                1        2
##         1                0                0                0        0
##          y_rate_len
## pers_wast 1.22328032608696 1.22647983870968 1.2267508839779
##         0                3                1               2
##         1                0                0               0
##          y_rate_len
## pers_wast 1.22996491803279 1.23310945945946 1.23981114130435
##         0                1                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.24283290322581 1.24658606557377 1.24955091891892
##         0                1                2                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.25634195652174 1.26599237837838 1.2673625 1.27014791208791
##         0                2                1         1                1
##         1                0                0         0                0
##          y_rate_len
## pers_wast 1.27553903225806 1.27982836065574 1.28243383783784
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.28686038461538 1.30357285714286 1.30593440217391
##         0                1                3                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.30824516129032 1.31077491712707 1.3130706557377
##         0                1                1               1
##         1                0                0               0
##          y_rate_len
## pers_wast 1.31307065573771 1.31531675675676 1.32028532967033
##         0                2                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.32969180327869 1.3369978021978 1.33899603260869
##         0                2               2                1
##         1                0               0                0
##          y_rate_len
## pers_wast 1.34095129032258 1.34438453038674 1.34631295081967
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.34819967567568 1.35552684782609 1.35730435483871
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.36464113513513 1.36464113513514 1.37042274725275
##         0                2                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.37799414364641 1.37955524590164 1.38713521978022
##         0                1                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.38858847826087 1.39752405405405 1.40384769230769
##         0                1                2                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.41396551351351 1.42056016483516 1.42165010869565
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.43818092391304 1.45324233333333 1.45398510989011
##         0                2                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.45471173913043 1.46266098360656 1.47069758241758
##         0                1                2                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.47124255434783 1.47177580645161 1.48777336956522
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.50430418478261 1.50448193548387 1.51261427027027
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.51311502538071 1.520835 1.53773316666667 1.54549718918919
##         0                1        2                1                1
##         1                0        0                0                0
##          y_rate_len
## pers_wast 1.54576672131147 1.54604220994475 1.56238786885246
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.57042744565217 1.57097241758242 1.58695826086956
##         0                1                2                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.58768489010989 1.6605874054054 1.66961233695652
##         0                1               1                1
##         1                0               0                0
##          y_rate_len
## pers_wast 1.68436564516129 1.68614315217391 1.69535704918033
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.69728546961326 1.7026739673913 1.7046721978022
##         0                1               1               1
##         1                0               0               0
##          y_rate_len
## pers_wast 1.71197819672131 1.71409027624309 1.72635324324324
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.80494703296703 1.84144345945946 1.9280531147541
##         0                1                1               1
##         1                0                0               0
##          y_rate_len
## pers_wast 1.95063619565217 2.19859842391304
##         0                1                1
##         1                0                0
##          y_rate_len
## pers_wast 0.321869841269841 0.328829189189189 0.336096132596685
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.361712108108109 0.405556000000001 0.457885806451614
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.460360864864864 0.495924456521739 0.498634426229508
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.501374175824176 0.515255573770493 0.523298064516129
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.534799120879121 0.562047717391304 0.568224065934067
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.588710322580644 0.598361311475409 0.60164901098901
##         0                 1                 1                1
##         1                 0                 0                0
##          y_rate_len
## pers_wast 0.601649010989011 0.618361483516484 0.631603606557377
##         0                 1                 1                 2
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.635073956043957 0.654122580645161 0.657658378378378
##         0                 1                 1                 2
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.664845901639344 0.668498901098901 0.67219226519337
##         0                 2                 2                1
##         1                 0                 0                0
##          y_rate_len
## pers_wast 0.681467049180327 0.690541297297295 0.690541297297298
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.701923846153847 0.718636318681318 0.723424216216217
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.764572786885245 0.768594032258065 0.768773736263736
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.793479130434782 0.797815081967213 0.802198681318681
##         0                 2                 2                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.806630718232044 0.813280748663102 0.817653225806452
##         0                 1                 2                 2
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.818911153846155 0.822072972972973 0.83105737704918
##         0                 1                 2               10
##         1                 0                 0                0
##          y_rate_len
## pers_wast 0.835623626373626 0.840240331491713 0.845811978609626
##         0                 2                 2                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.849628491620112 0.85035935483871 0.854955891891892
##         0                 3                1                 1
##         1                 0                0                 0
##          y_rate_len
## pers_wast 0.859602391304348 0.864299672131148 0.869048571428572
##         0                 2                 2                 3
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.883065483870969 0.897541967213116 0.902473516483515
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.902473516483517 0.907459558011051 0.915771612903226
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.92072172972973 0.925725652173912 0.935898461538461
##         0                1                 2                 1
##         1                0                 0                 0
##          y_rate_len
## pers_wast 0.941069171270717 0.948477741935483 0.953604648648648
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.964026557377049 0.969323406593406 0.975318097826086
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.981183870967742 0.986487567567568 0.991848913043478
##         0                 1                 5                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.997268852459016 1.00274835164835 1.00828839779006
##         0                 6                9                3
##         1                 0                0                0
##          y_rate_len
## pers_wast 1.00837972826087 1.01389 1.01937048648649 1.03051114754098
##         0                1       1                3                1
##         1                0       0                0                0
##          y_rate_len
## pers_wast 1.0361732967033 1.04768633333333 1.05225340540541
##         0               1                1                1
##         1               0                0                0
##          y_rate_len
## pers_wast 1.05353932960894 1.06959824175824 1.08513632432432
##         0                1                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.09103380434783 1.10302318681319 1.10911723756906
##         0                2                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.11801924324324 1.11973565934066 1.12409543478261
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.13644813186813 1.14471451612903 1.14714411428571
##         0                3                4                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.14907533333333 1.15090216216216 1.15715706521739
##         0                1                3                5
##         1                0                0                0
##          y_rate_len
## pers_wast 1.16348032786885 1.16987307692308 1.17368788043478
##         0                6                6                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.18287166666667 1.19021869565217 1.20329802197802 1.216668
##         0                2                1                1        1
##         1                0                0                0        0
##          y_rate_len
## pers_wast 1.22328032608696 1.22647983870968 1.22996491803279
##         0                2                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.23618673796791 1.23672296703297 1.24355569060774
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.25634195652174 1.26320721311475 1.27553903225806
##         0                1                2                3
##         1                0                0                0
##          y_rate_len
## pers_wast 1.2771653038674 1.28940358695652 1.29432765957447
##         0               1                1                1
##         1               0                0                0
##          y_rate_len
## pers_wast 1.29644950819672 1.30357285714286 1.30824516129032
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.31531675675676 1.32969180327869 1.3369978021978
##         0                1                1               4
##         1                0                0               0
##          y_rate_len
## pers_wast 1.34631295081967 1.35185333333333 1.35940558659218
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.37042274725275 1.38858847826087 1.41160375690608
##         0                2                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.42941868852459 1.43727263736264 1.43906967741935
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.45471173913043 1.46266098360656 1.50412252747253
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.50448193548387 1.51243259668508 1.54604220994475
##         0                1                2                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.56238786885246 1.61126302702703 1.84852872928177
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 2.20604637362637
##         0                1
##         1                0
##          y_rate_len
## pers_wast 0.739411491712708 0.818911153846155 0.823435524861877
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.829546363636364 0.857045138121546 0.873849944751382
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.889850265957447 0.900606201117318 0.922753820224718
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.924264364640884 0.947405409836066 0.951583910614524
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.952610934065935 0.969323406593406 0.974678784530386
##         0                 2                 1                 1
##         1                 0                 0                 0
##          y_rate_len
## pers_wast 0.98603587912088 0.990715371428572 1.00274835164835
##         0                1                 1                1
##         1                0                 0                0
##          y_rate_len
## pers_wast 1.00828839779006 1.01389 1.03051114754098 1.03654675977654
##         0                2       1                1                1
##         1                0       0                0                0
##          y_rate_len
## pers_wast 1.04189801104972 1.05288576923077 1.05353932960894
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.07762022857143 1.08513632432433 1.08631071428571
##         0                1                1                3
##         1                0                0                0
##          y_rate_len
## pers_wast 1.09103380434783 1.09231243093923 1.0950012 1.09699573770492
##         0                1                1         1                2
##         1                0                0         0                0
##          y_rate_len
## pers_wast 1.10302318681319 1.11973565934066 1.12150960893855
##         0                2                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.13644813186813 1.13840280701754 1.14272685082873
##         0                3                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.14659811518325 1.14685918032787 1.1483856122449
##         0                1                2               1
##         1                0                0               0
##          y_rate_len
## pers_wast 1.1531606043956 1.15316060439561 1.15549474860335
##         0               1                2                1
##         1               0                0                0
##          y_rate_len
## pers_wast 1.15715706521739 1.16987307692308 1.1763364640884
##         0                1                5               1
##         1                0                0               0
##          y_rate_len
## pers_wast 1.18658554945055 1.18738989304813 1.19672262295082
##         0                5                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.20329802197802 1.20647245810056 1.20994607734807
##         0                5                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.22366034482759 1.2267508839779 1.23356616666667
##         0                1               2                1
##         1                0               0                0
##          y_rate_len
## pers_wast 1.23672296703297 1.24355569060773 1.24355569060774
##         0                3                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.24658606557377 1.24742646067416 1.25046433333333
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.25343543956044 1.26036049723757 1.26451449438202 1.2673625
##         0                1                4                1         2
##         1                0                0                0         0
##          y_rate_len
## pers_wast 1.27253540816327 1.27287277173913 1.2771653038674
##         0                1                2               2
##         1                0                0               0
##          y_rate_len
## pers_wast 1.28426066666667 1.28805413265306 1.29143530726257
##         0                1                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.29397011049724 1.29644950819672 1.30357285714286
##         0                1                1                3
##         1                0                0                0
##          y_rate_len
## pers_wast 1.31077491712707 1.3138574556213 1.31577859550562
##         0                1               1                1
##         1                0               0                0
##          y_rate_len
## pers_wast 1.31751481283423 1.318057 1.32028532967033 1.32969180327869
##         0                1        1                1                1
##         1                0        0                0                0
##          y_rate_len
## pers_wast 1.33461030612245 1.33495516666667 1.3369978021978
##         0                1                1               4
##         1                0                0               0
##          y_rate_len
## pers_wast 1.34438453038674 1.34631295081967 1.35185333333333
##         0                1                2                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.35371027472527 1.35371027472528 1.35552684782609
##         0                2                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.35571577142857 1.35940558659218 1.36118933701657
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.36293409836066 1.36704269662921 1.3687515 1.37042274725275
##         0                1                1         2                2
##         1                0                0         0                0
##          y_rate_len
## pers_wast 1.37205766304348 1.37365741935484 1.37639815642458
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.38713521978022 1.39339072625698 1.39479895027624
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.40254783333333 1.41108402061856 1.41279754098361
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.42056016483516 1.42737586592179 1.43727263736264
##         0                1                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.44603983606557 1.44664792682927 1.44917261780105
##         0                2                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.45091155172414 1.45248286516854 1.45324233333333
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.45398510989011 1.45542274193548 1.47069758241758
##         0                3                1                4
##         1                0                0                0
##          y_rate_len
## pers_wast 1.47124255434783 1.47882298342541 1.48102256544503
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.48703866666667 1.48741005494506 1.49562779005525
##         0                1                1                2
##         1                0                0                0
##          y_rate_len
## pers_wast 1.50412252747253 1.51243259668508 1.51252442622951 1.520835
##         0                2                1                1        1
##         1                0                0                0        0
##          y_rate_len
## pers_wast 1.52855497461929 1.53754747252747 1.53773316666667
##         0                1                2                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.54604220994475 1.5463238547486 1.55425994505494
##         0                1               1                2
##         1                0               0                0
##          y_rate_len
## pers_wast 1.57097241758242 1.57965182320442 1.58768489010989
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.59563016393443 1.59645662983425 1.60439736263736
##         0                1                1                3
##         1                0                0                0
##          y_rate_len
## pers_wast 1.62001989130435 1.62887245901639 1.63782230769231
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.65602033333333 1.67124725274725 1.6729185 1.68614315217391
##         0                1                1         1                1
##         1                0                0         0                0
##          y_rate_len
## pers_wast 1.68981666666667 1.69728546961326 1.73324212290503
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.73809714285714 1.79424353932584 1.80494703296703
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## pers_wast 1.82165950549451 1.85145130434783 1.85508445054945
##         0                1                1                1
##         1                0                0                0
```




# Results Detail

## Results Plots
![](/tmp/546bb308-99ec-42e2-9889-cb1ecb91ccf5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/546bb308-99ec-42e2-9889-cb1ecb91ccf5/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                3.5743168   3.5121703   3.6364633
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.7792558   1.7229609   1.8355507
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                3.5846983   3.5025082   3.6668884
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                3.4662950   3.2035236   3.7290664
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                3.4467474   3.2170594   3.6764353
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                3.3047304   2.9055621   3.7038987
0-3 months     ki1000108-IRC              INDIA                          0                    NA                3.1484349   3.0333192   3.2635506
0-3 months     ki1000108-IRC              INDIA                          1                    NA                3.2881483   2.9760012   3.6002954
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                2.6815924   2.5944247   2.7687600
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                2.3247779   2.0806681   2.5688877
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.9805159   2.6831360   3.2778958
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                3.8268445   3.0058563   4.6478326
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                3.4866405   3.4472983   3.5259827
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.2069887   3.0180891   3.3958882
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                3.1569326   3.1100342   3.2038311
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                4.2739899   4.1683702   4.3796096
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.9107870   1.8593637   1.9622103
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.9261546   0.9038003   0.9485088
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                1.9032792   1.8419607   1.9645977
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                2.2802510   2.0338617   2.5266404
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.8045005   1.6953739   1.9136272
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.7995295   1.5362499   2.0628091
3-6 months     ki1000108-IRC              INDIA                          0                    NA                1.8692936   1.8008905   1.9376967
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.9356579   1.7687036   2.1026122
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                2.0386141   1.9771337   2.1000946
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                1.8205039   1.5493771   2.0916307
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.0766833   1.9269094   2.2264572
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                1.9942488   1.5611362   2.4273614
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.9724517   1.9375279   2.0073755
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.6863955   1.3890826   1.9837084
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8045201   1.7683708   1.8406695
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.5825538   1.4692962   1.6958114
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                1.9970872   1.9579240   2.0362503
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                1.1461504   0.9967381   1.2955628
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.7297538   1.6881224   1.7713852
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.5412658   1.4394495   1.6430820
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                1.9618601   1.8925257   2.0311944
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                1.6961271   1.2587338   2.1335203
3-6 months     ki1114097-CMIN             PERU                           0                    NA                1.8984851   1.8503338   1.9466365
3-6 months     ki1114097-CMIN             PERU                           1                    NA                1.6466179   1.4166084   1.8766274
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.1161423   1.0913864   1.1408983
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.5979215   0.5862243   0.6096187
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                1.1122399   1.0837914   1.1406884
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                1.2219938   1.0938991   1.3500886
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.0786951   1.0259157   1.1314746
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.9481205   0.8453914   1.0508496
6-12 months    ki1000108-IRC              INDIA                          0                    NA                1.2616047   1.2306193   1.2925900
6-12 months    ki1000108-IRC              INDIA                          1                    NA                1.1865905   1.1087614   1.2644196
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                1.3306945   1.2418728   1.4195162
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                1.0342969   0.8317998   1.2367940
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.1722611   1.1547802   1.1897420
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.2138433   1.0934271   1.3342595
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1991681   1.1773474   1.2209887
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0922169   0.9973499   1.1870840
6-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                1.1811885   1.1627281   1.1996488
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                1.0427865   0.9805983   1.1049747
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.1734623   1.1529464   1.1939783
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.1330783   1.0854724   1.1806842
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                1.1005995   1.0643186   1.1368805
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                1.1397125   1.0233592   1.2560658
6-12 months    ki1114097-CMIN             PERU                           0                    NA                1.1084943   1.0834594   1.1335291
6-12 months    ki1114097-CMIN             PERU                           1                    NA                1.2136146   1.0702561   1.3569731
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.8429456   0.8268636   0.8590277
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.5964853   0.5838440   0.6091265
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.8770182   0.8590392   0.8949971
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8729199   0.8430909   0.9027489
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7455753   0.7156998   0.7754508
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7227127   0.6624480   0.7829774
12-24 months   ki1000108-IRC              INDIA                          0                    NA                0.8388202   0.8182147   0.8594258
12-24 months   ki1000108-IRC              INDIA                          1                    NA                0.7953454   0.7531289   0.8375618
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8560678   0.8439596   0.8681759
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.9178680   0.8407246   0.9950113
12-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.8462889   0.8353196   0.8572582
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.8277096   0.7810302   0.8743890
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.8369288   0.8215286   0.8523290
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8491179   0.8020992   0.8961367


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.5634447   3.5006347   3.6262547
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.5764512   3.4977133   3.6551891
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                3.5235318   3.3031217   3.7439420
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1729204   3.0609523   3.2848884
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.6575645   2.5739973   2.7411317
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                3.0738623   2.7876913   3.3600332
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.1440476   3.0964801   3.1916152
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9280462   1.8787523   1.9773401
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8837264   1.8224393   1.9450135
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.0241201   1.9636505   2.0845898
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                2.0694234   1.9275918   2.2112551
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7957288   1.7598510   1.8316067
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.9931660   1.9537919   2.0325400
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7057418   1.6666784   1.7448052
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                1.9478477   1.8775639   2.0181315
3-6 months     ki1114097-CMIN             PERU                           NA                   NA                1.8940471   1.8464513   1.9416429
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.1143928   1.0896103   1.1391753
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                1.1210558   1.0926349   1.1494766
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.0595162   1.0116132   1.1074192
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.2485668   1.2193308   1.2778028
6-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                1.2964732   1.2129800   1.3799664
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1960560   1.1745115   1.2176004
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                1.1800762   1.1614756   1.1986767
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.1681560   1.1485303   1.1877817
6-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                1.1007081   1.0652677   1.1361485
6-12 months    ki1114097-CMIN             PERU                           NA                   NA                1.1117791   1.0868951   1.1366632
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8459764   0.8299714   0.8619814
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8803730   0.8630530   0.8976931
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7419316   0.7150261   0.7688371
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.8294859   0.8099817   0.8489901
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8455626   0.8347576   0.8563677
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8378848   0.8224521   0.8533174


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -1.7950610   -1.8767293   -1.7133928
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.1184033   -0.3937215    0.1569148
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.1420169   -0.6026211    0.3185872
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  0.1397134   -0.1903439    0.4697706
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.3568145   -0.6160170   -0.0976119
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.8463286   -0.0266788    1.7193361
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.2796518   -0.4725900   -0.0867136
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                  1.1170573    1.0022886    1.2318259
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.9846324   -1.0459930   -0.9232718
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.3769719    0.1229782    0.6309655
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0049710   -0.2900083    0.2800663
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.0663643   -0.1134583    0.2461869
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.2181103   -0.4960205    0.0598000
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0824345   -0.5404911    0.3756221
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.2860562   -0.5852523    0.0131400
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.2219663   -0.3402930   -0.1036397
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.8509368   -1.0046388   -0.6972347
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.1884880   -0.2982524   -0.0787236
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                 -0.2657330   -0.7086097    0.1771437
3-6 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           1                    0                 -0.2518673   -0.4868850   -0.0168496
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.5182208   -0.5455340   -0.4909076
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.1097539   -0.0213481    0.2408559
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.1305746   -0.2459149   -0.0152344
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0750141   -0.1586218    0.0085936
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.2963976   -0.5175011   -0.0752941
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0415822   -0.0800829    0.1632473
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1069512   -0.2037064   -0.0101959
6-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.1384019   -0.2028116   -0.0739923
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0403840   -0.0915964    0.0108284
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    0                  0.0391130   -0.0818077    0.1600336
6-12 months    ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           1                    0                  0.1051204   -0.0403932    0.2506340
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.2464604   -0.2662605   -0.2266602
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0040982   -0.0381651    0.0299686
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0228626   -0.0901211    0.0443958
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0434749   -0.0900363    0.0030866
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0618002   -0.0162837    0.1398842
12-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0185793   -0.0662237    0.0290651
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0121891   -0.0365607    0.0609389
