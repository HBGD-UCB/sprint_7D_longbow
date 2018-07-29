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

**Intervention Variable:** anywast06

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

agecat         studyid                    country                        anywast06    n_cell      n
-------------  -------------------------  -----------------------------  ----------  -------  -----
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0               189    244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                55    244
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               468    634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1               166    634
0-3 months     ki1114097-CMIN             BANGLADESH                     0                34     43
0-3 months     ki1114097-CMIN             BANGLADESH                     1                 9     43
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               167    180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                13    180
0-3 months     ki1101329-Keneba           GAMBIA                         0              1047   1276
0-3 months     ki1101329-Keneba           GAMBIA                         1               229   1276
0-3 months     ki0047075b-MAL-ED          INDIA                          0               137    201
0-3 months     ki0047075b-MAL-ED          INDIA                          1                64    201
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                34     87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                53     87
0-3 months     ki1000108-IRC              INDIA                          0               158    377
0-3 months     ki1000108-IRC              INDIA                          1               219    377
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               143    175
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                32    175
0-3 months     ki1000109-EE               PAKISTAN                       0               217    297
0-3 months     ki1000109-EE               PAKISTAN                       1                80    297
0-3 months     ki1000109-ResPak           PAKISTAN                       0                47     78
0-3 months     ki1000109-ResPak           PAKISTAN                       1                31     78
0-3 months     ki0047075b-MAL-ED          PERU                           0               261    271
0-3 months     ki0047075b-MAL-ED          PERU                           1                10    271
0-3 months     ki1114097-CMIN             PERU                           0                79     93
0-3 months     ki1114097-CMIN             PERU                           1                14     93
0-3 months     ki1114097-CONTENT          PERU                           0                29     29
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               203    229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                26    229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               218    229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                11    229
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               180    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                51    231
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               426    574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1               148    574
3-6 months     ki1114097-CMIN             BANGLADESH                     0               153    185
3-6 months     ki1114097-CMIN             BANGLADESH                     1                32    185
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               194    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                14    208
3-6 months     ki1101329-Keneba           GAMBIA                         0              1116   1397
3-6 months     ki1101329-Keneba           GAMBIA                         1               281   1397
3-6 months     ki0047075b-MAL-ED          INDIA                          0               156    229
3-6 months     ki0047075b-MAL-ED          INDIA                          1                73    229
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0               142    307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1               165    307
3-6 months     ki1000108-IRC              INDIA                          0               160    397
3-6 months     ki1000108-IRC              INDIA                          1               237    397
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               191    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                42    233
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0               311    471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1               160    471
3-6 months     ki1000109-EE               PAKISTAN                       0               241    331
3-6 months     ki1000109-EE               PAKISTAN                       1                90    331
3-6 months     ki1000109-ResPak           PAKISTAN                       0                91    156
3-6 months     ki1000109-ResPak           PAKISTAN                       1                65    156
3-6 months     ki0047075b-MAL-ED          PERU                           0               258    267
3-6 months     ki0047075b-MAL-ED          PERU                           1                 9    267
3-6 months     ki1114097-CMIN             PERU                           0               373    407
3-6 months     ki1114097-CMIN             PERU                           1                34    407
3-6 months     ki1114097-CONTENT          PERU                           0               210    214
3-6 months     ki1114097-CONTENT          PERU                           1                 4    214
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               214    241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                27    241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               228    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                11    239
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1401   1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               259   1660
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               170    220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                50    220
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               411    545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1               134    545
6-12 months    ki1114097-CMIN             BANGLADESH                     0               137    164
6-12 months    ki1114097-CMIN             BANGLADESH                     1                27    164
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0               180    194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                14    194
6-12 months    ki1101329-Keneba           GAMBIA                         0              1050   1302
6-12 months    ki1101329-Keneba           GAMBIA                         1               252   1302
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0               167    171
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                 4    171
6-12 months    ki0047075b-MAL-ED          INDIA                          0               152    224
6-12 months    ki0047075b-MAL-ED          INDIA                          1                72    224
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               151    321
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               170    321
6-12 months    ki1000108-IRC              INDIA                          0               163    400
6-12 months    ki1000108-IRC              INDIA                          1               237    400
6-12 months    ki0047075b-MAL-ED          NEPAL                          0               189    230
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                41    230
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0               321    475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1               154    475
6-12 months    ki1000109-EE               PAKISTAN                       0                 3      4
6-12 months    ki1000109-EE               PAKISTAN                       1                 1      4
6-12 months    ki1000109-ResPak           PAKISTAN                       0                78    138
6-12 months    ki1000109-ResPak           PAKISTAN                       1                60    138
6-12 months    ki0047075b-MAL-ED          PERU                           0               227    237
6-12 months    ki0047075b-MAL-ED          PERU                           1                10    237
6-12 months    ki1114097-CMIN             PERU                           0               327    357
6-12 months    ki1114097-CMIN             PERU                           1                30    357
6-12 months    ki1114097-CONTENT          PERU                           0               209    213
6-12 months    ki1114097-CONTENT          PERU                           1                 4    213
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               205    232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                27    232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               212    223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                11    223
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               924   1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               159   1083
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               157    206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                49    206
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               341    458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               117    458
12-24 months   ki1114097-CMIN             BANGLADESH                     0               116    138
12-24 months   ki1114097-CMIN             BANGLADESH                     1                22    138
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0               153    165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                12    165
12-24 months   ki1101329-Keneba           GAMBIA                         0               937   1147
12-24 months   ki1101329-Keneba           GAMBIA                         1               210   1147
12-24 months   ki0047075b-MAL-ED          INDIA                          0               152    225
12-24 months   ki0047075b-MAL-ED          INDIA                          1                73    225
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               147    320
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               173    320
12-24 months   ki1000108-IRC              INDIA                          0               161    396
12-24 months   ki1000108-IRC              INDIA                          1               235    396
12-24 months   ki0047075b-MAL-ED          NEPAL                          0               185    226
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                41    226
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0               254    367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1               113    367
12-24 months   ki0047075b-MAL-ED          PERU                           0               184    191
12-24 months   ki0047075b-MAL-ED          PERU                           1                 7    191
12-24 months   ki1114097-CMIN             PERU                           0               152    160
12-24 months   ki1114097-CMIN             PERU                           1                 8    160
12-24 months   ki1114097-CONTENT          PERU                           0                37     38
12-24 months   ki1114097-CONTENT          PERU                           1                 1     38
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               206    230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                24    230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               196    207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                11    207
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

* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##          y_rate_len
## anywast06 2.65171230769231 2.68615012987013 3.00216779220779
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## anywast06 3.08066576923077 3.1633368 3.20833684931507 3.244448 3.2850036
##         0                1         1                1        1         1
##         1                0         0                0        0         0
##          y_rate_len
## anywast06 3.36184578947368 3.39263192307692 3.5551987012987
##         0                1                1               1
##         1                0                0               0
##          y_rate_len
## anywast06 3.58482535714286 3.59470090909091 3.60197763157895
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## anywast06 3.63420311688312 3.64199960526316 3.70459807692308
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## anywast06 3.79221194805195 3.82381371428571 3.84210947368421 3.916150125
##         0                1                1                1           1
##         1                0                0                0           0
##          y_rate_len
## anywast06 4.02922519480519 4.09177035714286 4.10822961038961
##         0                1                1                1
##         1                0                0                0
##          y_rate_len
## anywast06 4.27477945945946 4.30574064935065 4.32688267605634 4.4205604
##         0                1                1                1         1
##         1                0                0                0         0
##          y_rate_len
## anywast06 4.52248302631579
##         0                1
##         1                0
```




# Results Detail

## Results Plots
![](/tmp/df18410c-5cf3-454c-a228-1bee45193cf8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/df18410c-5cf3-454c-a228-1bee45193cf8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                3.6006449   3.5320283   3.6692616
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                3.4356111   3.2922191   3.5790032
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                4.0537278   3.9491693   4.1582863
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                4.0155488   3.5924293   4.4386683
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                3.5945876   3.4965283   3.6926470
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                3.5376279   3.4074368   3.6678189
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                3.8235227   3.7398129   3.9072324
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                3.9860296   3.8406585   4.1314007
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                3.3034134   3.2395408   3.3672859
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                3.8286032   3.7409740   3.9162324
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                3.4534119   3.3580388   3.5487851
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                3.3810038   3.1369305   3.6250770
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                3.4890492   3.4141690   3.5639294
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7234251   1.5401389   1.9067113
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                3.1520264   2.8637471   3.4403057
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                3.5700595   3.2870987   3.8530202
0-3 months     ki1000108-IRC              INDIA                          0                    NA                3.3548207   3.2051591   3.5044824
0-3 months     ki1000108-IRC              INDIA                          1                    NA                3.0379933   2.8882798   3.1877068
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                2.7339086   2.6465737   2.8212436
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                2.4462785   2.2648726   2.6276844
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.7805937   2.4760947   3.0850927
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                3.5127223   2.9991428   4.0263018
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                3.5075316   3.4631455   3.5519177
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.4127824   3.3335647   3.4920001
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                3.1619685   3.1142431   3.2096939
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                3.0641078   2.9555943   3.1726213
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    NA                3.4663761   3.3067241   3.6260281
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    NA                3.5980574   3.2570741   3.9390406
0-3 months     ki1114097-CMIN             PERU                           0                    NA                3.3384333   3.1899106   3.4869560
0-3 months     ki1114097-CMIN             PERU                           1                    NA                3.1835827   2.9304371   3.4367283
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.9347346   1.8805824   1.9888868
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.9305725   1.8292822   2.0318629
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                2.1486020   2.0657002   2.2315037
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                2.1369390   1.9017888   2.3720892
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                1.8872939   1.8180580   1.9565297
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.7023152   1.5875571   1.8170733
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                1.9585849   1.8961407   2.0210291
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                1.7401528   1.6458807   1.8344249
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                2.0267089   1.9591961   2.0942217
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                1.7776593   1.6045955   1.9507231
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.9949938   1.9103063   2.0796813
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.8718187   1.6049791   2.1386583
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8210475   1.7523248   1.8897702
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                2.9375875   2.7741831   3.1009918
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.8874060   1.7328970   2.0419151
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.7318265   1.6011438   1.8625091
3-6 months     ki1000108-IRC              INDIA                          0                    NA                1.9076786   1.8154854   1.9998718
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.8709107   1.7901273   1.9516941
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                2.0505121   1.9848443   2.1161799
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                1.9435398   1.8222004   2.0648792
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.0231117   1.8837338   2.1624897
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                2.1240945   1.8413454   2.4068436
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.9786843   1.9397353   2.0176333
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.9273484   1.8512737   2.0034231
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8014516   1.7646145   1.8382887
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7638524   1.6687098   1.8589950
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                2.0121551   1.9712406   2.0530696
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                2.0089986   1.9222495   2.0957476
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.7605117   1.7159501   1.8050732
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.5992972   1.5271151   1.6714793
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                1.9571193   1.8815611   2.0326775
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                1.9029484   1.7255043   2.0803925
3-6 months     ki1114097-CMIN             PERU                           0                    NA                1.8969429   1.8464954   1.9473904
3-6 months     ki1114097-CMIN             PERU                           1                    NA                1.8634965   1.7286580   1.9983350
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.1194701   1.0938173   1.1451229
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.1460405   1.1156485   1.1764325
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                1.3914503   1.3437199   1.4391807
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.3207485   1.1458052   1.4956918
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                1.1022756   1.0698404   1.1347108
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                1.2491684   1.1996745   1.2986623
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                1.2126789   1.1843326   1.2410251
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                1.1526550   1.1100388   1.1952712
6-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                1.2128964   1.1791787   1.2466142
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                1.6786213   1.6337470   1.7234956
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.1817488   1.1388325   1.2246651
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.2485814   1.1132685   1.3838943
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0086142   0.9709752   1.0462531
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8867503   0.7837585   0.9897420
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.0974734   1.0246733   1.1702735
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.0249580   0.9650537   1.0848623
6-12 months    ki1000108-IRC              INDIA                          0                    NA                1.2604646   1.2173466   1.3035826
6-12 months    ki1000108-IRC              INDIA                          1                    NA                1.2405970   1.2039500   1.2772439
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                1.3918532   1.3072856   1.4764209
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                1.1782316   1.0208380   1.3356252
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.1681354   1.1476226   1.1886482
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.1886289   1.1577866   1.2194712
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.2028777   1.1801688   1.2255866
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1648816   1.1158679   1.2138953
6-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                1.1861501   1.1668179   1.2054823
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                1.1419756   1.1044426   1.1795087
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.1781270   1.1554736   1.2007804
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.1473627   1.1100910   1.1846344
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                1.1033491   1.0655317   1.1411665
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                1.0879097   0.9989538   1.1768656
6-12 months    ki1114097-CMIN             PERU                           0                    NA                1.1049735   1.0788258   1.1311211
6-12 months    ki1114097-CMIN             PERU                           1                    NA                1.1770704   1.1061193   1.2480214
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.8489917   0.8303914   0.8675920
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.9148163   0.8893718   0.9402609
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.9937624   0.9621260   1.0253987
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.8259674   0.7553939   0.8965408
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.8908327   0.8703096   0.9113558
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.9215062   0.8946386   0.9483738
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.8620455   0.8456995   0.8783916
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8601868   0.8186475   0.9017260
12-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.8420171   0.8217683   0.8622660
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                1.1940228   1.1722848   1.2157609
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.8636493   0.8412043   0.8860943
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.9170823   0.8595777   0.9745869
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7677654   0.7438248   0.7917059
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6269101   0.6147766   0.6390437
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7267340   0.6887313   0.7647367
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7548143   0.7175721   0.7920565
12-24 months   ki1000108-IRC              INDIA                          0                    NA                0.8635428   0.8346933   0.8923924
12-24 months   ki1000108-IRC              INDIA                          1                    NA                0.8080316   0.7843578   0.8317053
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8581863   0.8444593   0.8719134
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8557028   0.8311400   0.8802657
12-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.8466515   0.8351523   0.8581508
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.8289781   0.8052179   0.8527383
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.8364107   0.8193988   0.8534226
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8413168   0.8099071   0.8727266
12-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.7963187   0.7693176   0.8233198
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.7718053   0.7113607   0.8322498
12-24 months   ki1114097-CMIN             PERU                           0                    NA                0.8347168   0.8140869   0.8553467
12-24 months   ki1114097-CMIN             PERU                           1                    NA                0.8409185   0.7932362   0.8886008


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.5634447   3.5006347   3.6262547
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                4.0509714   3.9492443   4.1526985
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.5764512   3.4977133   3.6551891
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.8204935   3.7444190   3.8965681
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.3158605   3.2526447   3.3790763
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.4451859   3.3559092   3.5344627
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4816904   3.4044928   3.5588880
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                3.5235318   3.3031217   3.7439420
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1729204   3.0609523   3.2848884
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.6575645   2.5739973   2.7411317
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                3.0738623   2.7876913   3.3600332
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.1440476   3.0964801   3.1916152
0-3 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                3.4939373   3.3480209   3.6398536
0-3 months     ki1114097-CMIN             PERU                           NA                   NA                3.3155510   3.1827969   3.4483051
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9280462   1.8787523   1.9773401
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1478156   2.0686357   2.2269955
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8837264   1.8224393   1.9450135
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9680995   1.9120346   2.0241643
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0183213   1.9525900   2.0840526
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9811941   1.9001209   2.0622672
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
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
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.3863464   1.3400121   1.4326807
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                1.1210558   1.0926349   1.1494766
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.2224454   1.1966480   1.2482429
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.2102315   1.1775158   1.2429472
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.1895267   1.1483723   1.2306812
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0019524   0.9648566   1.0390481
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
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9816245   0.9508764   1.0123725
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8803730   0.8630530   0.8976931
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8617083   0.8463512   0.8770654
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8463453   0.8256453   0.8670453
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8699064   0.8475321   0.8922808
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7663111   0.7428636   0.7897586
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7419316   0.7150261   0.7688371
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.8294859   0.8099817   0.8489901
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8455626   0.8347576   0.8563677
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8378848   0.8224521   0.8533174
12-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7916227   0.7669686   0.8162769
12-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.8323919   0.8123225   0.8524613


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.1650338   -0.3239924   -0.0060752
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0381790   -0.4739873    0.3976294
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0569598   -0.2199400    0.1060204
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.1625069   -0.0027658    0.3277797
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.5251898    0.4224521    0.6279275
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0724082   -0.3337101    0.1888937
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -1.7656241   -1.9658317   -1.5654166
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.4180330    0.0139504    0.8221157
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                 -0.3168275   -0.5251618   -0.1084931
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.2876301   -0.4888490   -0.0864112
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.7321286    0.1345655    1.3296916
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0947492   -0.1850908   -0.0044076
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.0978607   -0.2145499    0.0188285
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.1316813   -0.2448268    0.5081893
0-3 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             PERU                           1                    0                 -0.1548506   -0.4470625    0.1373613
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0041621   -0.1181229    0.1097987
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0116630   -0.2596918    0.2363659
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.1849787   -0.3193608   -0.0505965
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.2184321   -0.3315432   -0.1053209
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.2490496   -0.4345777   -0.0635214
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.1231750   -0.4031310    0.1567809
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  1.1165400    0.9389216    1.2941583
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.1555796   -0.3574639    0.0463048
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                 -0.0367679   -0.1566426    0.0831069
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.1069723   -0.2434636    0.0295190
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.1009828   -0.2142494    0.4162149
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0513359   -0.1366296    0.0339579
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0375992   -0.1383799    0.0631815
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.0031566   -0.0979840    0.0916709
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.1612144   -0.2457735   -0.0766554
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0541709   -0.2468025    0.1384608
3-6 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           1                    0                 -0.0334465   -0.1774224    0.1105295
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0265704   -0.0081710    0.0613117
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0707018   -0.2513312    0.1099276
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.1468928    0.0885591    0.2052265
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0600239   -0.1099544   -0.0100934
6-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           1                    0                  0.4657249    0.4092853    0.5221645
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0668326   -0.0751230    0.2087881
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1218639   -0.2286942   -0.0150336
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0725154   -0.1661551    0.0211244
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0198676   -0.0753995    0.0356643
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.2136216   -0.3923225   -0.0349208
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0204935   -0.0163835    0.0573705
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0379960   -0.0910031    0.0150110
6-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0441745   -0.0858179   -0.0025311
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0307643   -0.0742548    0.0127262
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0154394   -0.1116799    0.0808010
6-12 months    ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           1                    0                  0.0720969   -0.0035150    0.1477088
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0658247    0.0340357    0.0976136
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.1677950   -0.2444194   -0.0911707
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0306735   -0.0028389    0.0641859
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0018587   -0.0464985    0.0427810
12-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.3520057    0.3237002    0.3803112
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0534330   -0.0058933    0.1127593
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1408552   -0.1633364   -0.1183741
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0280803   -0.0248170    0.0809776
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0555113   -0.0923288   -0.0186937
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0024835   -0.0306218    0.0256548
12-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0176734   -0.0436996    0.0083527
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0049061   -0.0305714    0.0403837
12-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0245134   -0.0907486    0.0417218
12-24 months   ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             PERU                           1                    0                  0.0062017   -0.0456946    0.0580981
