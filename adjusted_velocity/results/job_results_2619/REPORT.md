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
##          y_rate_haz
## anywast06 -0.542041192307692 -0.525379363636364 -0.375270974025974
##         0                  1                  1                  1
##         1                  0                  0                  0
##          y_rate_haz
## anywast06 -0.339263192307692 -0.23522248 -0.22711136 -0.225000246575342
##         0                  1           1           1                  1
##         1                  0           0           0                  0
##          y_rate_haz
## anywast06 -0.188103276315789 -0.12572236 -0.120065921052632
##         0                  1           1                  1
##         1                  0           0                  0
##          y_rate_haz
## anywast06 -0.0896902692307692 -0.0750541948051949 -0.0632035324675325
##         0                   1                   1                   1
##         1                   0                   0                   0
##          y_rate_haz
## anywast06 -0.0560307631578947 -0.0506945 -0.0434524285714286
##         0                   1          1                   1
##         1                   0          0                   0
##          y_rate_haz
## anywast06 0.0120065921052632 0.02534725 0.158008831168831
##         0                  1          1                 1
##         1                  0          0                 0
##          y_rate_haz
## anywast06 0.178154957142857 0.181051785714286 0.225162584415584
##         0                 1                 1                 1
##         1                 0                 0                 0
##          y_rate_haz
## anywast06 0.2775523875 0.288366116883117 0.308277364864865
##         0            1                 1                 1
##         1            0                 0                 0
##          y_rate_haz
## anywast06 0.387121636363636 0.41772268 0.45839252112676 0.460252697368421
##         0                 1          1                1                 1
##         1                 0          0                0                 0
```




# Results Detail

## Results Plots
![](/tmp/b81e5dc7-9836-41f2-8bb5-285196bc4acf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b81e5dc7-9836-41f2-8bb5-285196bc4acf/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0194368   -0.0541636    0.0152899
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0836284   -0.1596657   -0.0075911
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1979420    0.1443963    0.2514877
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.1275565   -0.0798096    0.3349226
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0106532   -0.0604591    0.0391528
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0415148   -0.1027252    0.0196956
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0752353    0.0374606    0.1130099
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.1978062    0.1357388    0.2598736
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.1642821   -0.1972914   -0.1312727
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.2211046    0.1502197    0.2919894
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0947904   -0.1418234   -0.0477574
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1572203   -0.2783643   -0.0360763
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0378615   -0.0757955    0.0000725
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.7609427   -0.9148304   -0.6070550
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.2920605   -0.4332267   -0.1508943
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0482819   -0.1837827    0.0872189
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.1550536   -0.2306748   -0.0794325
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.3374371   -0.4124333   -0.2624409
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.3555900   -0.3998704   -0.3113096
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.4948154   -0.5921480   -0.3974828
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.3367565   -0.4861025   -0.1874105
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0237049   -0.2437566    0.2911664
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0323637   -0.0520987   -0.0126286
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0647391   -0.0979245   -0.0315536
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.2766925   -0.3010064   -0.2523786
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.3230935   -0.3781329   -0.2680540
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0338604   -0.0408632    0.1085840
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.1165494   -0.0645514    0.2976501
0-3 months     ki1114097-CMIN             PERU                           0                    NA                -0.1128433   -0.1858995   -0.0397872
0-3 months     ki1114097-CMIN             PERU                           1                    NA                -0.1458219   -0.2694815   -0.0221622
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0236000   -0.0492569    0.0020568
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0399462   -0.0862195    0.0063271
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0618217    0.0240889    0.0995545
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0381819   -0.0456381    0.1220020
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0252030   -0.0549389    0.0045330
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0750123   -0.1220157   -0.0280090
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0213930   -0.0512718    0.0084857
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0217285   -0.0780941    0.0346372
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                 0.0317131   -0.0000101    0.0634364
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.0143418   -0.0451334    0.0164498
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0062761   -0.0335156    0.0460679
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0502166   -0.1781371    0.0777038
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0762184   -0.1087194   -0.0437174
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0468456   -0.0888302    0.1825214
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0645997   -0.1366001    0.0074007
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1266729   -0.1896716   -0.0636742
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0376010   -0.0843607    0.0091588
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0615396   -0.1007927   -0.0222866
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0818284    0.0511165    0.1125404
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                 0.0353671   -0.0208909    0.0916251
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0213030   -0.0449419    0.0875479
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0598792   -0.0717720    0.1915304
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0223571   -0.0397946   -0.0049196
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0357212   -0.0672778   -0.0041646
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0814717   -0.0986109   -0.0643325
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1001666   -0.1456382   -0.0546950
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0080725   -0.0272279    0.0110829
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0111660   -0.0525652    0.0302332
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1400764   -0.1615036   -0.1186493
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2163806   -0.2500198   -0.1827414
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0052508   -0.0403019    0.0298002
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0264144   -0.1077224    0.0548936
3-6 months     ki1114097-CMIN             PERU                           0                    NA                -0.0573088   -0.0809956   -0.0336221
3-6 months     ki1114097-CMIN             PERU                           1                    NA                -0.0601233   -0.1237611    0.0035146
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0797310   -0.0907752   -0.0686868
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0683761   -0.0824973   -0.0542548
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0093309   -0.0103958    0.0290576
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0197644   -0.0736412    0.0341124
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0912495   -0.1049012   -0.0775978
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0495546   -0.0699002   -0.0292091
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0514958   -0.0635161   -0.0394756
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0364436   -0.0584101   -0.0144770
6-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0361222   -0.0505411   -0.0217033
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                 0.1413720    0.1221232    0.1606207
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0564629   -0.0741640   -0.0387618
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0381803   -0.0773046    0.0009441
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1214689   -0.1374066   -0.1055312
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1713952   -0.2116231   -0.1311674
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0849093   -0.1174959   -0.0523228
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1144394   -0.1401824   -0.0886963
6-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0153066   -0.0342240    0.0036108
6-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0305292   -0.0466280   -0.0144305
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0376576    0.0011504    0.0741648
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -0.0635953   -0.1308508    0.0036602
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0650731   -0.0732976   -0.0568485
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0550762   -0.0676739   -0.0424786
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0579217   -0.0676388   -0.0482047
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0712448   -0.0939351   -0.0485544
6-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0593837   -0.0674996   -0.0512679
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0767534   -0.0933949   -0.0601119
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0570789   -0.0662209   -0.0479368
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0715411   -0.0860631   -0.0570191
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0760601   -0.0920472   -0.0600730
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0841547   -0.1210987   -0.0472107
6-12 months    ki1114097-CMIN             PERU                           0                    NA                -0.0970230   -0.1079736   -0.0860723
6-12 months    ki1114097-CMIN             PERU                           1                    NA                -0.0615707   -0.0960648   -0.0270766
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0186996   -0.0246726   -0.0127265
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0079312   -0.0154896   -0.0003728
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0021915   -0.0086043    0.0129874
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0478739   -0.0675063   -0.0282415
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0083799   -0.0145524   -0.0022074
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0129331   -0.0210207   -0.0048454
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0302772   -0.0356970   -0.0248575
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0518539   -0.0639276   -0.0397802
12-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0106127   -0.0175505   -0.0036749
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0871975    0.0802087    0.0941862
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0177589   -0.0255213   -0.0099965
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0052475   -0.0177087    0.0282036
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0390027   -0.0470775   -0.0309279
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0906994   -0.1022403   -0.0791585
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0523472   -0.0666339   -0.0380605
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0386458   -0.0525143   -0.0247773
12-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0199290   -0.0314945   -0.0083634
12-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0398782   -0.0485598   -0.0311966
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0082473   -0.0125352   -0.0039594
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0045136   -0.0120271    0.0029999
12-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0208262   -0.0249187   -0.0167337
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0238392   -0.0322625   -0.0154159
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0152292   -0.0210354   -0.0094231
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0163194   -0.0261441   -0.0064947
12-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0297854   -0.0389188   -0.0206520
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0407374   -0.0611986   -0.0202763
12-24 months   ki1114097-CMIN             PERU                           0                    NA                -0.0302841   -0.0375972   -0.0229711
12-24 months   ki1114097-CMIN             PERU                           1                    NA                -0.0420540   -0.0616627   -0.0224454


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0339062   -0.0659795   -0.0018330
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0204797   -0.0596747    0.0187152
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0746202    0.0395269    0.1097135
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.1581085   -0.1906285   -0.1255886
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1018785   -0.1458569   -0.0579001
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0461667   -0.0847570   -0.0075763
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0732952   -0.1806423    0.0340519
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2594964   -0.3154509   -0.2035418
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.3938516   -0.4364614   -0.3512419
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.1934958   -0.3384003   -0.0485914
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2850538   -0.3091443   -0.2609633
0-3 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                 0.0518708   -0.0198773    0.1236190
0-3 months     ki1114097-CMIN             PERU                           NA                   NA                -0.1173363   -0.1825933   -0.0520792
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0225211   -0.0456381    0.0005960
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0604904    0.0239698    0.0970111
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0401251   -0.0685271   -0.0117231
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0214542   -0.0480456    0.0051373
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0273803   -0.0036374    0.0583980
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0000528   -0.0382594    0.0381539
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
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
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0065644   -0.0129183    0.0260472
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0776724   -0.0898619   -0.0654829
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0488126   -0.0594641   -0.0381610
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0373127   -0.0513600   -0.0232653
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0537724   -0.0711138   -0.0364310
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1240143   -0.1396706   -0.1083579
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
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0098833   -0.0150187   -0.0047479
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0295113   -0.0345712   -0.0244514
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0092560   -0.0162726   -0.0022393
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0153445   -0.0229210   -0.0077680
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0393265   -0.0471437   -0.0315094
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0447636   -0.0549912   -0.0345359
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0317687   -0.0388357   -0.0247017
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0201603   -0.0240062   -0.0163144
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0155649   -0.0206065   -0.0105234
12-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0315963   -0.0399345   -0.0232582
12-24 months   ki1114097-CMIN             PERU                           NA                   NA                -0.0314615   -0.0385651   -0.0243578


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0641915   -0.1477835    0.0194005
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0703855   -0.2845515    0.1437805
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0308616   -0.1097751    0.0480519
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.1225709    0.0510554    0.1940863
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.3853866    0.3072525    0.4635208
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0624299   -0.1923837    0.0675238
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.7230811   -0.8816817   -0.5644805
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.2437785    0.0465692    0.4409878
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                 -0.1823835   -0.2878153   -0.0769516
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.1392254   -0.2461530   -0.0322978
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.3604614    0.0543718    0.6665511
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0323754   -0.0693610    0.0046101
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.0464010   -0.1057015    0.0128995
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.0826889   -0.1129548    0.2783326
0-3 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             PERU                           1                    0                 -0.0329785   -0.1765935    0.1106364
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0163462   -0.0692826    0.0365903
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0236397   -0.1116975    0.0644180
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0498094   -0.1003356    0.0007168
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0003354   -0.0639246    0.0632537
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.0460549   -0.0896427   -0.0024671
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0564928   -0.1904254    0.0774399
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1230640   -0.0153406    0.2614686
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0620732   -0.1577139    0.0335675
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                 -0.0239386   -0.0849900    0.0371128
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.0464613   -0.1100025    0.0170798
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.0385762   -0.1088052    0.1859575
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0133641   -0.0477106    0.0209824
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0186949   -0.0667638    0.0293741
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.0030935   -0.0483146    0.0421277
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0763042   -0.1161169   -0.0364915
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0211635   -0.1096845    0.0673574
3-6 months     ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           1                    0                 -0.0028144   -0.0706062    0.0649773
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0113550   -0.0057448    0.0284547
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0290953   -0.0838805    0.0256898
6-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0416948    0.0177361    0.0656536
6-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0150523   -0.0099880    0.0400925
6-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           1                    0                  0.1774942    0.1534782    0.2015103
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0182826   -0.0219252    0.0584905
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0499263   -0.0914689   -0.0083838
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0295300   -0.0709827    0.0119226
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0152226   -0.0396254    0.0091802
6-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.1012529   -0.1777851   -0.0247207
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0099968   -0.0050478    0.0250414
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0133231   -0.0375618    0.0109156
6-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0173696   -0.0356640    0.0009247
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0144622   -0.0312526    0.0023282
6-12 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0080946   -0.0482321    0.0320429
6-12 months    ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           1                    0                  0.0354522   -0.0007360    0.0716404
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0107684    0.0018021    0.0197347
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0500654   -0.0715683   -0.0285626
12-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0045532   -0.0144515    0.0053451
12-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0215767   -0.0348329   -0.0083205
12-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0978102    0.0884295    0.1071909
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0230064   -0.0008713    0.0468840
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0516967   -0.0657254   -0.0376680
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0137015   -0.0059073    0.0333103
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0199492   -0.0343637   -0.0055347
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0037337   -0.0047967    0.0122641
12-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0030130   -0.0122487    0.0062227
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0010902   -0.0124785    0.0102981
12-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0109520   -0.0333516    0.0114475
12-24 months   ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             PERU                           1                    0                 -0.0117699   -0.0327988    0.0092590
