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

**Outcome Variable:** y_rate_haz

## Predictor Variables

**Intervention Variable:** single

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        single    n_cell       n
-------------  -------------------------  -----------------------------  -------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0            244     244
0-3 months     ki1119695-PROBIT           BELARUS                        0          12251   12745
0-3 months     ki1119695-PROBIT           BELARUS                        1            494   12745
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0            157     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1             23     180
0-3 months     ki1135781-COHORTS          GUATEMALA                      0            632     676
0-3 months     ki1135781-COHORTS          GUATEMALA                      1             44     676
0-3 months     ki0047075b-MAL-ED          INDIA                          0            200     200
0-3 months     ki1135781-COHORTS          INDIA                          0           4655    4662
0-3 months     ki1135781-COHORTS          INDIA                          1              7    4662
0-3 months     ki0047075b-MAL-ED          NEPAL                          0            175     175
0-3 months     ki0047075b-MAL-ED          PERU                           0            238     271
0-3 months     ki0047075b-MAL-ED          PERU                           1             33     271
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0            131     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1             98     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            220     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              9     229
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0           7344    7835
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1            491    7835
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0            231     231
3-6 months     ki1119695-PROBIT           BELARUS                        0          12773   13309
3-6 months     ki1119695-PROBIT           BELARUS                        1            536   13309
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0            178     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1             30     208
3-6 months     ki1135781-COHORTS          GUATEMALA                      0            696     754
3-6 months     ki1135781-COHORTS          GUATEMALA                      1             58     754
3-6 months     ki0047075b-MAL-ED          INDIA                          0            227     227
3-6 months     ki1135781-COHORTS          INDIA                          0           4711    4719
3-6 months     ki1135781-COHORTS          INDIA                          1              8    4719
3-6 months     ki0047075b-MAL-ED          NEPAL                          0            233     233
3-6 months     ki0047075b-MAL-ED          PERU                           0            235     267
3-6 months     ki0047075b-MAL-ED          PERU                           1             32     267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0            133     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1            108     241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            231     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              8     239
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1503    1651
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            148    1651
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0           5504    5869
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1            365    5869
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0            220     220
6-12 months    ki1119695-PROBIT           BELARUS                        0          12394   12896
6-12 months    ki1119695-PROBIT           BELARUS                        1            502   12896
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0            167     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1             27     194
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0            161     180
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1             19     180
6-12 months    ki1135781-COHORTS          GUATEMALA                      0            745     810
6-12 months    ki1135781-COHORTS          GUATEMALA                      1             65     810
6-12 months    ki0047075b-MAL-ED          INDIA                          0            222     222
6-12 months    ki1135781-COHORTS          INDIA                          0           3813    3821
6-12 months    ki1135781-COHORTS          INDIA                          1              8    3821
6-12 months    ki0047075b-MAL-ED          NEPAL                          0            230     230
6-12 months    ki0047075b-MAL-ED          PERU                           0            208     237
6-12 months    ki0047075b-MAL-ED          PERU                           1             29     237
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0           2333    2391
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1             58    2391
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0            129     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1            103     232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            217     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6     223
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            983    1078
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             95    1078
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0           4276    4554
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            278    4554
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0            206     206
12-24 months   ki1119695-PROBIT           BELARUS                        0           2453    2533
12-24 months   ki1119695-PROBIT           BELARUS                        1             80    2533
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0            144     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1             21     165
12-24 months   ki1135781-COHORTS          GUATEMALA                      0            767     840
12-24 months   ki1135781-COHORTS          GUATEMALA                      1             73     840
12-24 months   ki0047075b-MAL-ED          INDIA                          0            223     223
12-24 months   ki1135781-COHORTS          INDIA                          0           3164    3172
12-24 months   ki1135781-COHORTS          INDIA                          1              8    3172
12-24 months   ki0047075b-MAL-ED          NEPAL                          0            226     226
12-24 months   ki0047075b-MAL-ED          PERU                           0            168     191
12-24 months   ki0047075b-MAL-ED          PERU                           1             23     191
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0           2175    2232
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1             57    2232
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0            128     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1            102     230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            201     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6     207
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              2       2
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            274     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             29     303


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##       y_rate_haz
## single -0.858426866666666 -0.799247329787234 -0.71835185106383
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## single -0.707444595505618 -0.618586820224719 -0.611713633333333
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.544671139534884 -0.536056693069307 -0.471629730337079
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.454579252747253 -0.451236758241758 -0.442731966666667
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.440517724137931 -0.417811813186813 -0.408935633333333
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.402176366666667 -0.394034522727273 -0.392473548387097
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.389202935483871 -0.383514913043478 -0.381044373626374
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.357065608695652 -0.341342966666667 -0.337228630434783
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.333922467391304 -0.317685533333333 -0.310926266666667
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.310851989010989 -0.307546633333333 -0.304167 -0.297482010989011
##      0                  1                  1         1                  1
##      1                  0                  0         0                  0
##       y_rate_haz
## single -0.2940281 -0.290648466666667 -0.290496573033708 -0.287454527472527
##      0          1                  1                  1                  1
##      1          0                  0                  0                  0
##       y_rate_haz
## single -0.287078966292135 -0.282440785714286 -0.280509566666667
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.270742054945055 -0.265337170212766 -0.264057065934066
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.261186880434783 -0.257372076923077 -0.254029582417582 -0.2534725
##      0                  1                  1                  1          1
##      1                  0                  0                  0          0
##       y_rate_haz
## single -0.246067685393258 -0.2433336 -0.242686436170213 -0.240659604395604
##      0                  1          1                  1                  1
##      1                  0          0                  0                  0
##       y_rate_haz
## single -0.236574333333333 -0.227289626373626 -0.226435433333333 -0.2230558
##      0                  1                  1                  1          1
##      1                  0                  0                  0          0
##       y_rate_haz
## single -0.222401677419355 -0.222144438202247 -0.215309224719101 -0.2129169
##      0                  1                  1                  1          1
##      1                  0                  0                  0          0
##       y_rate_haz
## single -0.211891617977528 -0.196018733333333 -0.189695548387097
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.189259466666667 -0.185145130434783 -0.183154322580645 -0.1825002
##      0                  1                  1                  1          1
##      1                  0                  0                  0          0
##       y_rate_haz
## single -0.177970053191489 -0.177152208791209 -0.175343329411765 -0.1723613
##      0                  1                  1                  1          1
##      1                  0                  0                  0          0
##       y_rate_haz
## single -0.165602033333333 -0.1622224 -0.160439736263736 -0.156989419354839
##      0                  1          2                  1                  1
##      1                  0          0                  0                  0
##       y_rate_haz
## single -0.155620325581395 -0.153754747252747 -0.1520835 -0.150335413793104
##      0                  1                  1          1                  1
##      1                  0                  0          0                  0
##       y_rate_haz
## single -0.148703866666667 -0.145324233333333 -0.1419446 -0.137042274725275
##      0                  1                  1          1                  1
##      1                  0                  0          0                  0
##       y_rate_haz
## single -0.133286662921348 -0.13224652173913 -0.127014791208791
##      0                  1                 1                  1
##      1                  0                 0                  0
##       y_rate_haz
## single -0.125046433333333 -0.118287166666667 -0.115715706521739
##      0                  1                  3                  2
##      1                  0                  0                  0
##       y_rate_haz
## single -0.113644813186813 -0.111877517241379 -0.111200838709677
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.109103380434783 -0.106959824175824 -0.100274835164835
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.099110595505618 -0.0958787282608697 -0.0958787282608696
##      0                  1                   1                   1
##      1                  0                   0                   0
##       y_rate_haz
## single -0.0948477741935484 -0.0912501 -0.0902473516483517
##      0                   1          2                   1
##      1                   0          0                   0
##       y_rate_haz
## single -0.0883065483870968 -0.0869048571428571 -0.0859602391304348
##      0                   1                   2                   2
##      1                   0                   0                   0
##       y_rate_haz
## single -0.085035935483871 -0.0826540760869565 -0.0743519333333333
##      0                  1                   1                   2
##      1                  0                   0                   0
##       y_rate_haz
## single -0.0691288636363637 -0.0687996785714286 -0.0675926666666666
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0668498901098901 -0.0661232608695652 -0.0601649010989011
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0568224065934066 -0.0540741333333333 -0.0439352333333334
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0434524285714286 -0.0429801195652174 -0.0410112808988764
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0371759666666667 -0.0304167000000001 -0.0294355161290323
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0270370666666667 -0.0264493043478261 -0.020054967032967
##      0                   1                   1                  1
##      1                   0                   0                  0
##       y_rate_haz
## single -0.00991848913043479 -0.00691288636363637 -0.00345644318181819
##      0                    1                    1                    1
##      1                    0                    0                    0
##       y_rate_haz
## single -0.00327061290322581 0.00675926666666667 0.0135185333333333
##      0                    1                   1                  1
##      1                    0                   0                  0
##       y_rate_haz
## single 0.0167124725274725 0.0172822159090909 0.0202778 0.0226507340425531
##      0                  1                  1         2                  1
##      1                  0                  0         0                  0
##       y_rate_haz
## single 0.0228942903225806 0.026739956043956 0.0270370666666667
##      0                  1                 1                  1
##      1                  0                 0                  0
##       y_rate_haz
## single 0.0304167000000001 0.0323581914893617 0.0367674395604395
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0371759666666667 0.0375936741573033 0.0384578965517242
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0439352333333334 0.0457885806451613 0.0473148666666666
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0478464943820225 0.049592445652174 0.0506945 0.0523298064516129
##      0                  1                 1         1                  1
##      1                  0                 0         0                  0
##       y_rate_haz
## single 0.053307618556701 0.0622159772727273 0.0675926666666667
##      0                 1                  1                  1
##      1                 0                  0                  0
##       y_rate_haz
## single 0.0701923846153846 0.0717697415730337 0.0743519333333333
##      0                  2                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0793479130434783 0.0802198681318681 0.0835623626373626
##      0                  1                  2                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0864110795454546 0.0883065483870968 0.0912501 0.0941469285714286
##      0                  1                  1         1                  1
##      1                  0                  0         0                  0
##       y_rate_haz
## single 0.101389 0.102491054347826 0.103546212765957 0.104768633333333
##      0        1                 1                 1                 1
##      1        0                 0                 0                 0
##       y_rate_haz
## single 0.106959824175824 0.110302318681319 0.111877517241379
##      0                 2                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.112409543478261 0.114471451612903 0.119021869565217
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.122328032608696 0.128426066666667 0.1318057 0.13369978021978
##      0                 1                 1         1                2
##      1                 0                 0         0                0
##       y_rate_haz
## single 0.137365741935484 0.143727263736264 0.157097241758242
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.158555138297872 0.158695826086957 0.162001989130435
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.164045123595506 0.165602033333333 0.167124725274725
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.168614315217391 0.173809714285714 0.175343329411765
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.177715550561798 0.181133157303371 0.207234659340659
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.216296533333333 0.218206760869565 0.22556204494382
##      0                 1                 1                1
##      1                 0                 0                0
##       y_rate_haz
## single 0.230632120879121 0.234737576086957 0.246067685393258
##      0                 1                 2                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.246713233333333 0.24822824137931 0.255220586206897
##      0                 1                1                 1
##      1                 0                0                 0
##       y_rate_haz
## single 0.257372076923077 0.261186880434783 0.261649032258064
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.262689681818182 0.264057065934066 0.267799206521739
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.276515454545455 0.280769538461538 0.284112032967033
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.297407733333333 0.317391652173913 0.320879472527472
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.331507853932584 0.34093443956044 0.356496806451613
##      0                 1                1                 1
##      1                 0                0                 0
##       y_rate_haz
## single 0.37101689010989 0.383514913043478 0.3852782 0.399859988764045
##      0                2                 1         1                 1
##      1                0                 0         0                 0
##       y_rate_haz
## single 0.405556 0.412315266666667 0.417811813186813 0.419074533333333
##      0        1                 1                 1                 1
##      1        0                 0                 0                 0
##       y_rate_haz
## single 0.43641352173913 0.469769033333333 0.472429595744681 0.494271375
##      0                1                 1                 1           1
##      1                0                 0                 0           0
##       y_rate_haz
## single 0.494689186813187 0.6286118 0.9023621
##      0                 1         1         1
##      1                 0         0         0
##       y_rate_haz
## single -0.683521348314607 -0.6488896 -0.641395630434783 -0.601862361702128
##      0                  1          1                  1                  1
##      1                  0          0                  0                  0
##       y_rate_haz
## single -0.581594043956044 -0.558741554347826 -0.550397428571428
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.518086648351648 -0.508059164835165 -0.453146755102041
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.43641352173913 -0.432593066666667 -0.4156949 -0.406658054347826
##      0                 1                  1          1                  1
##      1                 0                  0          0                  0
##       y_rate_haz
## single -0.393024775280899 -0.392473548387097 -0.386821076086956
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.383514913043478 -0.372604575 -0.37101689010989
##      0                  1            1                 1
##      1                  0            0                 0
##       y_rate_haz
## single -0.370594275862069 -0.366984097826087 -0.361620766666667
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.357646912087912 -0.348595887640449 -0.331818545454545 -0.3244448
##      0                  1                  1                  1          1
##      1                  0                  0                  0          0
##       y_rate_haz
## single -0.321065166666667 -0.314194483516484 -0.307509494505494
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.307437612903226 -0.294355161290323 -0.294139516483516
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.290942347826087 -0.287813935483871 -0.281272709677419
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.268572989361702 -0.261186880434783 -0.254029582417582
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.246067685393258 -0.227289626373626 -0.223947131868132
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.222144438202247 -0.221512923913044 -0.221212363636364
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.220604637362637 -0.2129169 -0.202778 -0.201638797752809
##      0                  1          1         1                  1
##      1                  0          0         0                  0
##       y_rate_haz
## single -0.199398366666667 -0.197207175824176 -0.192432183673469
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.179298442105263 -0.174297943820225 -0.17046721978022
##      0                  1                  2                 1
##      1                  0                  0                 0
##       y_rate_haz
## single -0.170071870967742 -0.167124725274725 -0.165602033333333
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.165308152173913 -0.163782230769231 -0.1622224 -0.1520835
##      0                  1                  1          1          1
##      1                  0                  0          0          0
##       y_rate_haz
## single -0.148703866666667 -0.145324233333333 -0.138564966666667
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.137042274725275 -0.129869056179775 -0.121012677419355
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.11278102247191 -0.111200838709677 -0.106959824175824 -0.101389
##      0                 1                  1                  1         1
##      1                 0                  0                  0         0
##       y_rate_haz
## single -0.0991848913043478 -0.099110595505618 -0.0958787282608696
##      0                   1                  1                   1
##      1                   0                  0                   0
##       y_rate_haz
## single -0.0946297333333333 -0.0902473516483517 -0.0894608823529412
##      0                   1                   2                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0883065483870968 -0.0847047341772152 -0.0802198681318681
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0793479130434783 -0.0777315666666667 -0.0735348791208791
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0686828709677419 -0.0668498901098901 -0.0642130333333333
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0635073956043956 -0.0546817078651685 -0.0523298064516129
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0462862826086956 -0.0444288876404494 -0.0439352333333333
##      0                   2                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.033424945054945 -0.0330616304347826 -0.0297554673913043
##      0                  1                   1                   1
##      1                  0                   0                   0
##       y_rate_haz
## single -0.0261649032258065 -0.013369978021978 -0.0132246521739131
##      0                   1                  1                   1
##      1                   0                  0                   0
##       y_rate_haz
## single -0.0125245235294117 -0.0114062625000001 -0.0102528202247191
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.00683521348314607 -0.00668498901098902 -0.00661232608695653
##      0                    1                    1                    1
##      1                    0                    0                    0
##       y_rate_haz
## single -0.00334249450549451 -0.00334249450549443 0.00683521348314607
##      0                    2                    1                   1
##      1                    0                    0                   0
##       y_rate_haz
## single 0.0136704269662921 0.0138257727272727 0.0165308152173913
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0167124725274725 0.0207386590909091 0.0300824505494506 0.0304167
##      0                  1                  1                  1         1
##      1                  0                  0                  0         0
##       y_rate_haz
## single 0.0345644318181818 0.0392473548387097 0.0462862826086957
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0467949230769231 0.0490591935483871 0.0501374175824176 0.0506945
##      0                  2                  1                  1         1
##      1                  0                  0                  0         0
##       y_rate_haz
## single 0.0534799120879121 0.0568224065934066 0.058244744680851
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## single 0.0608334000000001 0.0683521348314607 0.0709723 0.0743519333333333
##      0                  1                  1         1                  1
##      1                  0                  0         0                  0
##       y_rate_haz
## single 0.0752240967741935 0.07604175 0.0777315666666667 0.0826540760869565
##      0                  1          1                  1                  1
##      1                  0          0                  0                  0
##       y_rate_haz
## single 0.0906029361702127 0.0922753820224719 0.0933239659090909
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.10361732967033 0.108148266666667 0.11278102247191
##      0                1                 1                1
##      1                0                 0                0
##       y_rate_haz
## single 0.114907533333333 0.125046433333333 0.126451449438202
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.129869056179775 0.130357285714286 0.13224652173913
##      0                 1                 1                1
##      1                 0                 0                0
##       y_rate_haz
## single 0.135552684782609 0.140384769230769 0.143539483146067
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.148703866666667 0.155463133333333 0.158555138297872 0.1723613
##      0                 1                 1                 1         1
##      1                 0                 0                 0         0
##       y_rate_haz
## single 0.174297943820225 0.186647931818182 0.189695548387097 0.1926391
##      0                 1                 1                 1         1
##      1                 0                 0                 0         0
##       y_rate_haz
## single 0.196018733333333 0.199398366666667 0.207234659340659
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.211594434782609 0.218726831460674 0.219131064516129
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.222144438202247 0.223947131868132 0.228979651685393
##      0                 2                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.239232471910112 0.244656065217391 0.247344593406593
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.256852133333333 0.266991033333333 0.267799206521739
##      0                 2                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.290496573033708 0.294139516483516 0.307546633333333
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.331204066666667 0.343840956521739 0.361620766666667 0.3852782
##      0                 1                 1                 1         1
##      1                 0                 0                 0         0
##       y_rate_haz
## single 0.413270380434783 0.41418485106383 0.416576543478261
##      0                 1                1                 1
##      1                 0                0                 0
##       y_rate_haz
## single 0.420365629213483 0.453014680851064 0.491346692307692
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.51245527173913 0.564881571428571 0.595109347826087
##      0                1                 1                 1
##      1                0                 0                 0
##       y_rate_haz
## single 0.617368663366337 0.634783304347826 0.6691674 0.775796730337079
##      0                 1                 1         1                 1
##      1                 0                 0         0                 0
##       y_rate_haz
## single 0.972533960526316 0.994523561797753
##      0                 1                 1
##      1                 0                 0
##       y_rate_haz
## single -0.412315266666667 -0.397490965909091 -0.386189561797753
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.358241133333333 -0.337963333333333 -0.327824433333333 -0.3244448
##      0                  1                  2                  1          2
##      1                  0                  0                  0          0
##       y_rate_haz
## single -0.307663172413793 -0.300896387096774 -0.284112032967033
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.271105369565217 -0.2636114 -0.256320505617977 -0.255776795454545
##      0                  1          1                  1                  1
##      1                  0          0                  0                  0
##       y_rate_haz
## single -0.247344593406593 -0.2433336 -0.216296533333333 -0.214299477272727
##      0                  1          1                  1                  1
##      1                  0          0                  0                  0
##       y_rate_haz
## single -0.210577153846154 -0.20054967032967 -0.200473704545455 -0.1926391
##      0                  1                 1                  1          2
##      1                  0                 0                  0          0
##       y_rate_haz
## single -0.190104375 -0.189259466666667 -0.1825002 -0.167124725274725
##      0            1                  1          1                  1
##      1            0                  0          0                  0
##       y_rate_haz
## single -0.1520835 -0.145324233333333 -0.1419446 -0.136704269662921
##      0          2                  1          1                  1
##      1          0                  0          0                  0
##       y_rate_haz
## single -0.135185333333333 -0.128940358695652 -0.124431954545455 -0.1216668
##      0                  1                  1                  1          2
##      1                  0                  0                  0          0
##       y_rate_haz
## single -0.117519068181818 -0.111877517241379 -0.0902473516483517
##      0                  1                  1                   1
##      1                  0                  0                   0
##       y_rate_haz
## single -0.0878704666666667 -0.0844908333333333 -0.0811112
##      0                   1                   1          2
##      1                   0                   0          0
##       y_rate_haz
## single -0.080622578313253 -0.0777315666666667 -0.0694294239130435
##      0                  1                   2                   1
##      1                  0                   0                   0
##       y_rate_haz
## single -0.0574537666666666 -0.0546817078651685 -0.0540741333333333
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0444288876404494 -0.0439759518072289 -0.0419540689655172
##      0                   1                   1                   2
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0410112808988764 -0.0396739565217392 -0.0264493043478261
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0236574333333334 -0.0102528202247191 -0.00699234482758637
##      0                   1                   1                    1
##      1                   0                   0                    0
##       y_rate_haz
## single -0.00683521348314607 -0.00661232608695651 0.0100274835164835
##      0                    1                    1                  1
##      1                    0                    0                  0
##       y_rate_haz
## single 0.0135185333333333 0.0136704269662921 0.020054967032967 0.0202778
##      0                  1                  2                 1         1
##      1                  0                  0                 0         0
##       y_rate_haz
## single 0.0205056404494382 0.0207386590909091 0.0228942903225806
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0270370666666666 0.0270370666666667 0.0273408539325843
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.033424945054945 0.0439352333333334 0.0444288876404494
##      0                 1                  1                  1
##      1                 0                  0                  0
##       y_rate_haz
## single 0.0473148666666667 0.0478464943820224 0.0506945 0.0512641011235955
##      0                  1                  1         1                  1
##      1                  0                  0         0                  0
##       y_rate_haz
## single 0.0574537666666667 0.0638375185185185 0.066427275862069
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## single 0.0675926666666666 0.0735348791208791 0.0743519333333333
##      0                  1                  1                  2
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0777315666666667 0.0811112 0.0844908333333333 0.0980093666666667
##      0                  2         1                  2                  1
##      1                  0         0                  0                  0
##       y_rate_haz
## single 0.102528202247191 0.104768633333333 0.113644813186813
##      0                 1                 2                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.116987307692308 0.119616235955056 0.1216668 0.13369978021978
##      0                 2                 1         1                1
##      1                 0                 0         0                0
##       y_rate_haz
## single 0.135185333333333 0.136350724137931 0.143906967741935
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.150374696629213 0.155539943181818 0.157097241758242
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.158996386363636 0.162001989130435 0.1622224 0.162452829545455
##      0                 1                 1         1                 1
##      1                 0                 0         0                 0
##       y_rate_haz
## single 0.165308152173913 0.168981666666667 0.183837197802198
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.190522186813187 0.194803584269663 0.196018733333333
##      0                 2                 1                 2
##      1                 0                 0                 0
##       y_rate_haz
## single 0.199398366666667 0.2129169 0.214299477272727 0.215309224719101
##      0                 1         2                 1                 1
##      1                 0         0                 0                 0
##       y_rate_haz
## single 0.219676166666667 0.232397258426966 0.233974615384615
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.240659604395604 0.247344593406593 0.250687087912088
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.251724413793103 0.256852133333333 0.26491964516129 0.266146125
##      0                 1                 2                1           1
##      1                 0                 0                0           0
##       y_rate_haz
## single 0.270370666666667 0.277129933333333 0.280243752808989
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.287268833333333 0.293797670454545 0.2940281 0.300787366666667
##      0                 1                 1         2                 2
##      1                 0                 0         0                 0
##       y_rate_haz
## single 0.321647862068966 0.3244448 0.333602516129032 0.3345837
##      0                 1         1                 1         1
##      1                 0         0                 0         0
##       y_rate_haz
## single 0.334925460674157 0.336873129032258 0.339128724137931 0.3447226
##      0                 1                 1                 1         1
##      1                 0                 0                 0         0
##       y_rate_haz
## single 0.371759666666667 0.3751393 0.38277195505618 0.385062478723404
##      0                 1         1                1                 1
##      1                 0         0                0                 0
##       y_rate_haz
## single 0.3954171 0.407860295454545 0.422454166666667 0.426533034482759
##      0         1                 1                 1                 1
##      1         0                 0                 0                 0
##       y_rate_haz
## single 0.427839296703297 0.432593066666667 0.473532715909091 0.4765283
##      0                 1                 1                 1         1
##      1                 0                 0                 0         0
##       y_rate_haz
## single 0.515010034090909 0.553030909090909 0.645509966666667
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.655648866666667 0.83389604494382 0.865186133333333
##      0                 1                1                 1
##      1                 0                0                 0
##       y_rate_haz
## single -0.12450792032967 -0.116987307692308 -0.109466695054945
##      0                 1                  1                  1
##      1                 0                  0                  0
##       y_rate_haz
## single -0.105000115068493 -0.0953111852861035 -0.0914163114754098
##      0                  1                   1                   1
##      1                  0                   0                   0
##       y_rate_haz
## single -0.0877404807692308 -0.0870232561307902 -0.0866667616438356
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0843979862637363 -0.0825000904109589 -0.0818911153846154
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0803929128065395 -0.0775000849315069 -0.0758334164383562
##      0                   1                   1                   2
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0747951639344262 -0.0719090461956522 -0.0712236776859504
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0710280082417582 -0.0706398770491803 -0.0698088196721312
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0676855137362637 -0.0661961239669421 -0.0656535327868853
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0639914180327869 -0.0625000684931507 -0.0620064958677686
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0610005247252747 -0.0604973038674033 -0.0601649010989011
##      0                   2                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.059836131147541 -0.0593292774725275 -0.0583333972602739
##      0                  1                   1                   1
##      1                  0                   0                   0
##       y_rate_haz
## single -0.0581740163934426 -0.0575000630136986 -0.0571363425414364
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0556808442622951 -0.0550000602739726 -0.0543155357142857
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0534799120879121 -0.0525000575342466 -0.0516667232876712
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0471838005540166 -0.0469851463414634 -0.0467949230769231
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0464699583333333 -0.0458333835616438 -0.0455836103542234
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0442880521978022 -0.0442571031746032 -0.0433333808219178
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0421535788043478 -0.0411717762430939 -0.0408333780821918
##      0                   1                   1                   2
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0407218114754099 -0.0403907398373984 -0.0396739565217391
##      0                   1                   2                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0384386868131868 -0.0366667068493151 -0.0357354672131147
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0353878504155125 -0.0351928760330578 -0.0350000383561644
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0346206341463415 -0.0340733524590164 -0.0339805095367847
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0338881711956522 -0.0337963333333333 -0.0323229237057221
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0301653223140496 -0.0300000328767123 -0.0290870081967213
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0290077520435967 -0.0284112032967033 -0.0282559508196721
##      0                   1                   2                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0275000301369863 -0.027424893442623 -0.026739956043956
##      0                   2                  1                  1
##      1                   0                  0                  0
##       y_rate_haz
## single -0.0264493043478261 -0.0243669696132597 -0.0242998429752066
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.022812525 -0.0226239917355372 -0.0225000246575342
##      0            1                   1                   2
##      1            0                   0                   0
##       y_rate_haz
## single -0.0217262142857143 -0.0216666904109589 -0.0216074918032787
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0214900597826087 -0.0208905906593407 -0.0208333561643836
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0207198228882834 -0.018655576 -0.0183837197802198
##      0                   1            1                   1
##      1                   0            0                   0
##       y_rate_haz
## single -0.0166666849315069 -0.0165758583106267 -0.0164181051136364
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0158768489010989 -0.0150826611570248 -0.0148374146341464
##      0                   2                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0141666821917808 -0.013369978021978 -0.0132969180327869
##      0                   2                  1                   2
##      1                   0                  0                   0
##       y_rate_haz
## single -0.0131531675675676 -0.0125343543956044 -0.0125000136986301
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.01243189373297 -0.0109231243093923 -0.0108631071428571
##      0                 1                   1                   1
##      1                 0                   0                   0
##       y_rate_haz
## single -0.0108333452054795 -0.0091918598901099 -0.00914163114754097
##      0                   1                   1                    1
##      1                   0                   0                    0
##       y_rate_haz
## single -0.00911672207084469 -0.00837925619834711 -0.00826540760869566
##      0                    1                    1                    1
##      1                    0                    0                    0
##       y_rate_haz
## single -0.00747951639344261 -0.00745913623978202 -0.00668498901098898
##      0                    1                    1                    1
##      1                    0                    0                    0
##       y_rate_haz
## single -0.00666667397260275 -0.00661232608695653 -0.00581740163934425
##      0                    1                    1                    2
##      1                    0                    0                    0
##       y_rate_haz
## single -0.00502755371900827 -0.00498634426229509 -0.00418962809917356
##      0                    1                    1                    1
##      1                    0                    0                    0
##       y_rate_haz
## single -0.00336096132596685 -0.00332422950819672 -0.00250000273972605
##      0                    1                    1                    1
##      1                    0                    0                    0
##       y_rate_haz
## single -0.00247290243902439 -0.00166211475409836 0 0.000826540760869566
##      0                    1                    1 1                    1
##      1                    0                    0 0                    0
##       y_rate_haz
## single 0.00166211475409836 0.00332422950819669 0.00336096132596685
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single 0.00417811813186814 0.00494580487804878 0.00498634426229508
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single 0.0056626835106383 0.0058333397260274 0.00663034332425069
##      0                  1                  1                   1
##      1                  0                  0                   0
##       y_rate_haz
## single 0.007459136239782 0.00806809018567638 0.00831057377049177
##      0                 1                   1                   1
##      1                 0                   0                   0
##       y_rate_haz
## single 0.00831057377049181 0.00835623626373627 0.00921718181818181
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single 0.0100274835164835 0.0107743079019073 0.0116348032786885
##      0                  1                  1                  2
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0116987307692308 0.0125000136986301 0.0125343543956044
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0132606866485013 0.0148777336956522 0.0149590327868853
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0166211475409836 0.0167585123966942 0.0174522049180328
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0192193434065934 0.0207764344262295 0.0208905906593407
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0216074918032787 0.0216666904109589 0.0217860661157025
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0225000246575342 0.0233974615384615 0.0233974615384616
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0250000273972603 0.0268876906077348 0.027424893442623
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## single 0.0321477317073171 0.0326790991735537 0.0331517166212534
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0338881711956522 0.0343549504132231 0.0350000383561644
##      0                  1                  1                  2
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0353491378378378 0.0367674395604396 0.0373975819672131
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0390596967213115 0.0408333780821918 0.0425000465753425
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0435676870026525 0.0462862826086957 0.0482013278688524
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0491667205479452 0.0509730412087912 0.0526442884615385
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0540187295081967 0.0550788891891892 0.0558333945205479
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.065833405479452 0.0733334136986301 0.116198629213483
##      0                 1                  1                 1
##      1                 0                  0                 0
##       y_rate_haz
## single -0.114685918032787 -0.113957884297521 -0.0930097438016529
##      0                  1                  1                   1
##      1                  0                  0                   0
##       y_rate_haz
## single -0.0913338925619834 -0.0910829752747253 -0.0891667643835616
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0829546363636364 -0.0800000876712328 -0.0789190054054054
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0783334191780822 -0.0772883360655737 -0.07604175
##      0                   1                   1           1
##      1                   0                   0           0
##       y_rate_haz
## single -0.0750000821917808 -0.0743705027472528 -0.0722184217877095
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0716667452054795 -0.0708334109589041 -0.0696186049046321
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.06894452 -0.0687898119891008 -0.0687099008264463
##      0           1                   1                   1
##      1           0                   0                   0
##       y_rate_haz
## single -0.0670340495867768 -0.0619905570652174 -0.0594927190082645
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0581740163934426 -0.0581371828254848 -0.057816867768595
##      0                   1                   1                  1
##      1                   0                   0                  0
##       y_rate_haz
## single -0.0567230351351351 -0.0541667260273973 -0.0537251494565217
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0525000575342466 -0.0518086648351648 -0.0513966398891967
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0512546602209945 -0.0506945 -0.0505540720221607
##      0                   1          1                   1
##      1                   0          0                   0
##       y_rate_haz
## single -0.0494376115702479 -0.049301793956044 -0.0480699891008174
##      0                   1                  1                   1
##      1                   0                  0                   0
##       y_rate_haz
## single -0.0477617603305785 -0.0465994011142062 -0.0458333835616438
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0455836103542234 -0.0447548174386921 -0.0445327375690608
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0442880521978022 -0.0440460409836066 -0.0429709612188365
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0426168049450549 -0.0425000465753425 -0.0410583553719008
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0397820599455041 -0.0394912955801105 -0.0382286393442623
##      0                   1                   2                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.038020875 -0.0367674395604396 -0.0359318159340659
##      0            1                   1                   1
##      1            0                   0                   0
##       y_rate_haz
## single -0.0340733524590164 -0.0335170247933884 -0.0330616304347826
##      0                   2                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0326790991735537 -0.0325893214285714 -0.0308333671232877
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0305820081521739 -0.0293273966942149 -0.0290870081967213
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0285681712707182 -0.0276515454545455 -0.0275000301369863
##      0                   2                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.026739956043956 -0.0266666958904109 -0.0265938360655738
##      0                  1                   1                   1
##      1                  0                   0                   0
##       y_rate_haz
## single -0.025975694214876 -0.0252072099447514 -0.0249317213114754
##      0                  2                   2                   1
##      1                  0                   0                   0
##       y_rate_haz
## single -0.0242330851648352 -0.0237895977653631 -0.0233333589041096
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0230804227642276 -0.0208333561643836 -0.0207198228882834
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0200000219178082 -0.0193255276243094 -0.0191143196721311
##      0                   2                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0175480961538462 -0.0168048066298342 -0.0167585123966942
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0159645662983425 -0.0158333506849315 -0.0150000164383562
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0142056016483516 -0.0134438453038674 -0.013369978021978
##      0                   1                   2                  1
##      1                   0                   0                  0
##       y_rate_haz
## single -0.0125688842975206 -0.0116987307692308 -0.0116666794520548
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0108930330578512 -0.0108631071428571 -0.0108333452054795
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0108333452054794 -0.00916667671232877 -0.00768961516853933
##      0                   2                    1                    1
##      1                   0                    0                    0
##       y_rate_haz
## single -0.00754133057851238 -0.00750000821917809 -0.00670340495867769
##      0                    1                    1                    1
##      1                    0                    0                    0
##       y_rate_haz
## single -0.00666667397260274 -0.00661232608695653 -0.00581740163934429
##      0                    1                    1                    1
##      1                    0                    0                    0
##       y_rate_haz
## single -0.00577010569105692 -0.00501374175824176 -0.00501374175824175
##      0                    1                    1                    1
##      1                    0                    0                    0
##       y_rate_haz
## single -0.00500000547945206 -0.00497275749318802 -0.00420120165745859
##      0                    1                    1                    1
##      1                    0                    0                    0
##       y_rate_haz
## single -0.00335170247933885 -0.00332422950819672 -0.0025632050561798
##      0                    1                    1                   1
##      1                    0                    0                   0
##       y_rate_haz
## single -0.00250000273972605 -0.00166211475409836 -0.000833334246575343
##      0                    1                    1                     1
##      1                    0                    0                     0
##       y_rate_haz
## single -0.000826540760869566 0 0.000826540760869566 0.000835623626373627
##      0                     1 1                    1                    1
##      1                     0 0                    0                    0
##       y_rate_haz
## single 0.000840240331491713 0.00167124725274725 0.00167585123966942
##      0                    1                   1                   1
##      1                    0                   0                   0
##       y_rate_haz
## single 0.0024796222826087 0.00250000273972601 0.00250000273972603
##      0                  1                   1                   1
##      1                  0                   0                   0
##       y_rate_haz
## single 0.00250687087912088 0.00333333698630137 0.00334249450549451
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single 0.00335170247933881 0.00412150406504065 0.00415528688524591
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single 0.00416667123287673 0.00420120165745857 0.00497275749318802
##      0                   1                   1                   2
##      1                   0                   0                   0
##       y_rate_haz
## single 0.00578578532608696 0.00581740163934427 0.00750000821917807
##      0                   1                   2                   1
##      1                   0                   0                   0
##       y_rate_haz
## single 0.0075413305785124 0.00824300813008131 0.00833334246575341
##      0                  1                   1                   1
##      1                  0                   0                   0
##       y_rate_haz
## single 0.0115090216216216 0.0116031008174387 0.0116348032786885
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0116666794520548 0.0124658606557377 0.0126036049723757
##      0                  1                  2                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0133333479452055 0.013369978021978 0.014918272479564
##      0                  1                 1                 1
##      1                  0                 0                 0
##       y_rate_haz
## single 0.0157470653950954 0.0166666849315069 0.0167124725274725
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0167585123966942 0.0174522049180328 0.0182334441416894
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0190104375 0.0192193434065934 0.019891029972752
##      0            1                  2                 1
##      1            0                  0                 0
##       y_rate_haz
## single 0.0199453770491803 0.0200000219178082 0.0224385491803279
##      0                  2                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0230804227642276 0.0232062016348774 0.0241666931506849
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0242998429752066 0.0251377685950413 0.0259043324175824
##      0                  1                  2                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0267399560439561 0.0281023858695652 0.0281789591280654
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.029166698630137 0.0298365449591281 0.0307491229508197
##      0                 1                  1                  1
##      1                 0                  0                  0
##       y_rate_haz
## single 0.0310032479338843 0.0315801803278688 0.0333333698630137
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.034166704109589 0.0349044098360656 0.0363677934782609
##      0                 1                  1                  1
##      1                 0                  0                  0
##       y_rate_haz
## single 0.037706652892562 0.0378108149171271 0.0382286393442623
##      0                 1                  1                  1
##      1                 0                  0                  0
##       y_rate_haz
## single 0.0388474157608696 0.0397820599455041 0.0414396457765668
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.042616804945055 0.0448770983606557 0.0455836103542234
##      0                 1                  1                  1
##      1                 0                  0                  0
##       y_rate_haz
## single 0.0465392131147541 0.0476305467032967 0.0484661703296703
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0497275749318801 0.0508333890410959 0.0544038536585366
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0616667342465753 0.0625000684931507 0.063368125 0.063682347107438
##      0                  1                  1           1                 1
##      1                  0                  0           0                 0
##       y_rate_haz
## single 0.0719090461956522 0.0725000794520548 0.0727355869565218
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.073100908839779 0.0741870731707317 0.102500112328767
##      0                 1                  1                 1
##      1                 0                  0                 0
##       y_rate_haz
## single -0.152914557377049 -0.122165434426229 -0.113544629427793
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.111973565934066 -0.107450298913043 -0.107206401639344
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.102220057377049 -0.101110458791209 -0.0939094836065574
##      0                  1                  1                   1
##      1                  0                  0                   0
##       y_rate_haz
## single -0.0935898461538462 -0.0933334356164384 -0.0886808419618528
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0866667616438356 -0.0863063388429752 -0.0846304876033058
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0839367950819672 -0.0835623626373626 -0.083105737704918
##      0                   1                   1                  1
##      1                   0                   0                  0
##       y_rate_haz
## single -0.0801744538043478 -0.0791667534246575 -0.0787353269754768
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0779065340599455 -0.0777129972527472 -0.0764572786885246
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.075835674796748 -0.0756307135135135 -0.0756262213114754
##      0                  1                   1                   1
##      1                  0                   0                   0
##       y_rate_haz
## single -0.0750000821917808 -0.0747951639344262 -0.0743705027472528
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0737374545454545 -0.0731330491803279 -0.0725000794520548
##      0                   1                   2                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0721049836512262 -0.0716667452054794 -0.0714709344262295
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0708334109589041 -0.0700000767123287 -0.068977762295082
##      0                   1                   1                  1
##      1                   0                   0                  0
##       y_rate_haz
## single -0.0679610190735695 -0.0673156475409836 -0.0651786428571429
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0646458474114441 -0.0643430192307692 -0.062671771978022
##      0                   1                   1                  1
##      1                   0                   0                  0
##       y_rate_haz
## single -0.0613306757493188 -0.0609982601626016 -0.0606671885245902
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.059836131147541 -0.0596730899182561 -0.0591667315068493
##      0                  1                   1                   1
##      1                  0                   0                   0
##       y_rate_haz
## single -0.0588442970027248 -0.0580155040871934 -0.0579765828729282
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.057816867768595 -0.0565119016393443 -0.0558333945205479
##      0                  1                   2                   2
##      1                  0                   0                   0
##       y_rate_haz
## single -0.0553030909090909 -0.0552281544715447 -0.0536272396694215
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0523566147540984 -0.0516667232876712 -0.0506945
##      0                   1                   1          1
##      1                   0                   0          0
##       y_rate_haz
## single -0.0502755371900826 -0.0500000547945205 -0.0498634426229508
##      0                   1                   2                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0497275749318801 -0.0491667205479452 -0.0467949230769231
##      0                   2                   2                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0465392131147541 -0.0464124032697548 -0.0460859090909091
##      0                   2                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0459592994505495 -0.0450000493150685 -0.0447548174386921
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0446332010869565 -0.0441667150684932 -0.0426168049450549
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0425000465753425 -0.041552868852459 -0.0406108528610354
##      0                   1                  1                   1
##      1                   0                  0                   0
##       y_rate_haz
## single -0.0390596967213115 -0.0384386868131868 -0.0382286393442623
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0373975819672131 -0.0372956811989101 -0.0366667068493151
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0357354672131148 -0.0347147119565217 -0.034166704109589
##      0                   1                   1                  1
##      1                   0                   0                  0
##       y_rate_haz
## single -0.0340733524590164 -0.0333333698630137 -0.0325000356164383
##      0                   3                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0317536978021978 -0.031666701369863 -0.0313234308943089
##      0                   1                  1                   1
##      1                   0                  0                   0
##       y_rate_haz
## single -0.0311545714285714 -0.0310032479338843 -0.0306653378746594
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0300000328767123 -0.029166698630137 -0.0284112032967033
##      0                   1                  1                   2
##      1                   0                  0                   0
##       y_rate_haz
## single -0.0283333643835616 -0.0281789591280654 -0.0273501662125341
##      0                   1                   1                   2
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0272758451086956 -0.026666695890411 -0.0259043324175824
##      0                   2                  1                   1
##      1                   0                  0                   0
##       y_rate_haz
## single -0.0257627786885246 -0.0250000273972603 -0.0249317213114754
##      0                   1                   1                   2
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0242330851648352 -0.0241666931506849 -0.0240349945504087
##      0                   2                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0239696820652174 -0.0233333589041096 -0.0232696065573771
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0224385491803279 -0.0217860661157025 -0.0208905906593407
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0208333561643836 -0.0207198228882834 -0.020054967032967
##      0                   1                   1                  1
##      1                   0                   0                  0
##       y_rate_haz
## single -0.0200000219178082 -0.0199453770491803 -0.019891029972752
##      0                   1                   1                  1
##      1                   0                   0                  0
##       y_rate_haz
## single -0.0190622370572207 -0.018283262295082 -0.0182334441416894
##      0                   1                  1                   3
##      1                   0                  0                   0
##       y_rate_haz
## single -0.0165308152173913 -0.0159645662983425 -0.0158768489010989
##      0                   1                   1                   2
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0157900901639344 -0.0157470653950954 -0.0157042744565217
##      0                   1                   2                   2
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0150000164383562 -0.0124658606557377 -0.012364512195122
##      0                   1                   2                  1
##      1                   0                   0                  0
##       y_rate_haz
## single -0.00997268852459016 -0.00831057377049177 -0.00741870731707316
##      0                    1                    1                    1
##      1                    0                    0                    0
##       y_rate_haz
## single -0.00668498901098902 -0.00666667397260274 -0.00583333972602738
##      0                    1                    1                    1
##      1                    0                    0                    0
##       y_rate_haz
## single -0.00581740163934427 -0.00581740163934426 -0.00500000547945206
##      0                    1                    1                    1
##      1                    0                    0                    0
##       y_rate_haz
## single -0.00498634426229509 -0.0049592445652174 -0.00415528688524591
##      0                    1                   1                    1
##      1                    0                   0                    0
##       y_rate_haz
## single -0.00334249450549451 -0.00248637874659399 -0.00166211475409836
##      0                    1                    1                    1
##      1                    0                    0                    0
##       y_rate_haz
## single -0.00165758583106267 -0.00165308152173913 0 0.00166211475409836
##      0                    2                    1 1                   2
##      1                    0                    0 0                   0
##       y_rate_haz
## single 0.00332422950819672 0.00497275749318801 0.00500000547945205
##      0                   3                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single 0.00578578532608696 0.00581740163934427 0.00584936538461537
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single 0.00661232608695651 0.00739865675675674 0.00916667671232877
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single 0.00983828571428571 0.0108037459016393 0.01243189373297
##      0                   1                  1                1
##      1                   0                  0                0
##       y_rate_haz
## single 0.0134068099173554 0.0140894795640327 0.0141279754098361
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0150826611570248 0.0188567142857143 0.020054967032967
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## single 0.0208905906593407 0.0209481404958678 0.023269606557377
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## single 0.0240349945504087 0.0250687087912088 0.0259043324175824
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0275755796703297 0.0284894710743802 0.0290077520435967
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0290870081967213 0.0300000328767123 0.0337049918918919
##      0                  1                  2                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0342605686813187 0.0357354672131148 0.0360308016528926
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0362692357723577 0.0371943342391304 0.037917837398374
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## single 0.0381244741144414 0.0390596967213115 0.0400000438356164
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0495924456521739 0.0551511593406593 0.0573429590163934
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0595109347826087 0.0725000794520548
##      0                  1                  1
##      1                  0                  0
##       y_rate_haz
## single -0.452350923076923 -0.431181791208791 -0.401099340659341
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.393024775280899 -0.38020875 -0.371759666666667
##      0                  1           1                  1
##      1                  0           0                  0
##       y_rate_haz
## single -0.356609586206897 -0.352013494382022 -0.334925460674157
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.321449215909091 -0.317642753164557 -0.314194483516484
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.310779326086957 -0.290496573033708 -0.281272709677419
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.275945319587629 -0.274731483870968 -0.274084549450549
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.267799206521739 -0.26210135106383 -0.261649032258065
##      0                  1                 1                  1
##      1                  0                 0                  0
##       y_rate_haz
## single -0.260714571428571 -0.2598093125 -0.259738112359551
##      0                  1             1                  1
##      1                  0             0                  0
##       y_rate_haz
## single -0.255629712765957 -0.238043739130435 -0.235484129032258
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.233974615384615 -0.233728326315789 -0.227324810526316
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.224819086956522 -0.2230558 -0.211316021052632 -0.207234659340659
##      0                  1          1                  1                  3
##      1                  0          0                  0                  0
##       y_rate_haz
## single -0.20054967032967 -0.199507387096774 -0.187677510638298
##      0                 1                  1                  1
##      1                 0                  0                  0
##       y_rate_haz
## single -0.187179692307692 -0.179120566666667 -0.175740933333333
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.175226641304348 -0.171498414893617 -0.168981666666667
##      0                  2                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.167462730337079 -0.164608023529412 -0.158842766666667
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.153718806451613 -0.1520835 -0.143539483146067 -0.13624146875
##      0                  1          2                  1              1
##      1                  0          0                  0              0
##       y_rate_haz
## single -0.129869056179775 -0.128940358695652 -0.126451449438202
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.125634195652174 -0.119725308510638 -0.118287166666667
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.113644813186813 -0.110302318681319 -0.109363415730337
##      0                  3                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.109103380434783 -0.1077258125 -0.106959824175824
##      0                  1             1                  1
##      1                  0             0                  0
##       y_rate_haz
## single -0.105658010526316 -0.10361732967033 -0.102491054347826 -0.101389
##      0                  1                 1                  1         3
##      1                  0                 0                  0         0
##       y_rate_haz
## single -0.0991848913043478 -0.0969323406593407 -0.0958787282608696
##      0                   2                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0948477741935484 -0.0902473516483516 -0.0888577752808989
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0844908333333333 -0.0829546363636364 -0.08212509
##      0                   1                   1           1
##      1                   0                   0           0
##       y_rate_haz
## single -0.0820225617977528 -0.0806225783132529 -0.0802198681318681
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0768773736263736 -0.07604175 -0.0751873483146066
##      0                   1           2                   1
##      1                   0           0                   0
##       y_rate_haz
## single -0.0738269417475728 -0.0728733437500001 -0.07287334375
##      0                   1                   1              1
##      1                   0                   0              0
##       y_rate_haz
## single -0.0719534838709678 -0.0711880212765958 -0.0701923846153846
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0654122580645161 -0.0642130333333333 -0.062817097826087
##      0                   1                   1                  1
##      1                   0                   0                  0
##       y_rate_haz
## single -0.0622159772727272 -0.0601649010989011 -0.0534799120879121
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0512641011235955 -0.0506945 -0.0490591935483871
##      0                   1          1                   1
##      1                   0          0                   0
##       y_rate_haz
## single -0.0462862826086956 -0.0444288876404495 -0.0439352333333334
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0429801195652174 -0.0410112808988764 -0.0405556
##      0                   1                   1          1
##      1                   0                   0          0
##       y_rate_haz
## single -0.0367674395604396 -0.0359767419354839 -0.0345644318181818
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0297554673913044 -0.0297554673913043 -0.0273408539325843
##      0                   1                   2                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0226507340425532 -0.0165308152173913 -0.0129432765957447
##      0                   1                   3                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0103693295454546 -0.0100274835164835 -0.00960527368421053
##      0                   1                   1                    1
##      1                   0                   0                    0
##       y_rate_haz
## single -0.00675926666666667 -0.00633681250000001 -0.0032706129032258 0
##      0                    1                    1                   1 1
##      1                    0                    0                   0 0
##       y_rate_haz
## single 0.0032358191489361 0.00330616304347834 0.00341760674157302
##      0                  1                   1                   1
##      1                  0                   0                   0
##       y_rate_haz
## single 0.00345644318181819 0.00633681250000001 0.00960527368421053
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single 0.00981183870967743 0.013369978021978 0.0135185333333333
##      0                   1                 1                  1
##      1                   0                 0                  0
##       y_rate_haz
## single 0.0168981666666666 0.02217884375 0.0226507340425532
##      0                  1             1                  1
##      1                  0             0                  0
##       y_rate_haz
## single 0.0231431413043478 0.0261649032258065 0.026739956043956
##      0                  1                  1                 2
##      1                  0                  0                 0
##       y_rate_haz
## single 0.0273408539325843 0.0300824505494506 0.0375936741573034
##      0                  1                  2                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.038829829787234 0.0396739565217392 0.0401099340659341
##      0                 1                  1                  1
##      1                 0                  0                  0
##       y_rate_haz
## single 0.0414773181818182 0.0429801195652174 0.0434524285714286
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0448246105263157 0.0462862826086956 0.0467949230769231 0.0506945
##      0                  1                  1                  1         1
##      1                  0                  0                  0         0
##       y_rate_haz
## single 0.053307618556701 0.0534799120879121 0.0546817078651685
##      0                 1                  2                  1
##      1                 0                  0                  0
##       y_rate_haz
## single 0.0580993146067416 0.0595109347826088 0.0601649010989011
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0635073956043956 0.0658053605769231 0.07604175 0.0786049550561798
##      0                  1                  1          1                  1
##      1                  0                  0          0                  0
##       y_rate_haz
## single 0.0811112 0.0864110795454545 0.0933239659090909 0.0958787282608696
##      0         1                  1                  1                  1
##      1         0                  0                  0                  0
##       y_rate_haz
## single 0.0969323406593407 0.104659612903226 0.106959824175824
##      0                  1                 1                 1
##      1                  0                 0                 0
##       y_rate_haz
## single 0.107930225806452 0.110302318681319 0.116987307692308
##      0                 1                 2                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.119021869565217 0.122328032608696 0.127014791208791
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.128426066666667 0.130357285714286 0.135185333333333
##      0                 1                 1                 2
##      1                 0                 0                 0
##       y_rate_haz
## single 0.140121876404494 0.141714170454545 0.142376042553191
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.145324233333333 0.147177580645161 0.148777336956522 0.1520835
##      0                 1                 1                 1         1
##      1                 0                 0                 0         0
##       y_rate_haz
## single 0.155463133333333 0.158842766666667 0.158996386363636
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.160439736263736 0.162001989130435 0.165308152173913
##      0                 1                 1                 2
##      1                 0                 0                 0
##       y_rate_haz
## single 0.167124725274725 0.170880337078652 0.175226641304348
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.181800965517241 0.191757456521739 0.195063619565217
##      0                 1                 2                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.20054967032967 0.201675945652174 0.20828827173913
##      0                1                 1                1
##      1                0                 0                0
##       y_rate_haz
## single 0.210577153846154 0.234737576086957 0.247344593406593
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.258378419354839 0.260714571428571 0.271105369565217
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.317249451612903 0.336525191489362 0.347619428571429
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.348102233333333 0.360989406593407 0.374359384615385
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.387121636363636 0.428450290322581 0.449337613636364
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.492618293478261 0.706343366666667
##      0                 1                 1
##      1                 0                 0
##       y_rate_haz
## single -0.915918606741573 -0.852336098901099 -0.634783304347826
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.615246886363636 -0.591621527472527 -0.512641011235955
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.481319208791209 -0.429213433333333 -0.412315266666667
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.408826612903226 -0.404441835164835 -0.399859988764045
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.387729362637363 -0.381044373626374 -0.37101689010989
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## single -0.368883382978723 -0.353759445652174 -0.34623264893617
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## single -0.327564461538462 -0.323418075949367 -0.320879472527473
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.307473163043478 -0.297482010989011 -0.290797021978022
##      0                  1                  2                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.284752085106383 -0.280769538461538 -0.275044627659574
##      0                  1                  2                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.271460870967742 -0.262689681818182 -0.25871675862069
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## single -0.254574554347826 -0.240659604395604 -0.23731710989011
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## single -0.235484129032258 -0.233974615384615 -0.230632120879121
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.22812525 -0.214299477272727 -0.213919648351648
##      0           1                  1                  1
##      1           0                  0                  0
##       y_rate_haz
## single -0.207950908163265 -0.203892164835165 -0.20379189 -0.202778
##      0                  1                  2           1         1
##      1                  0                  0           0         0
##       y_rate_haz
## single -0.20054967032967 -0.190522186813187 -0.187179692307692
##      0                 2                  1                  1
##      1                 0                  0                  0
##       y_rate_haz
## single -0.186424935483871 -0.185879833333333 -0.183154322580645 -0.1825002
##      0                  1                  1                  1          1
##      1                  0                  0                  0          0
##       y_rate_haz
## single -0.180494703296703 -0.177970053191489 -0.175740933333333
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.173809714285714 -0.172957705882353 -0.17046721978022
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## single -0.168981666666667 -0.167124725274725 -0.1622224 -0.150374696629213
##      0                  1                  1          1                  1
##      1                  0                  0          0                  0
##       y_rate_haz
## single -0.147069758241758 -0.145611861702128 -0.139409875
##      0                  1                  1            1
##      1                  0                  0            0
##       y_rate_haz
## single -0.138858847826087 -0.13369978021978 -0.13224652173913
##      0                  1                 1                 1
##      1                  0                 0                 0
##       y_rate_haz
## single -0.130357285714286 -0.128426066666667 -0.127014791208791
##      0                  1                  1                  3
##      1                  0                  0                  0
##       y_rate_haz
## single -0.125046433333333 -0.123672296703297 -0.116198629213483
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.114907533333333 -0.113644813186813 -0.112409543478261
##      0                  1                  2                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.109363415730337 -0.109103380434783 -0.1077258125
##      0                  2                  1             1
##      1                  0                  0             0
##       y_rate_haz
## single -0.106959824175824 -0.10361732967033 -0.102610554216867 -0.101389
##      0                  1                 1                  1         1
##      1                  0                 0                  0         0
##       y_rate_haz
## single -0.100274835164835 -0.0902473516483517 -0.0902473516483516
##      0                  1                   1                   1
##      1                  0                   0                   0
##       y_rate_haz
## single -0.0869048571428571 -0.0826540760869564 -0.0768773736263736
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0709723 -0.0701923846153846 -0.0668498901098901
##      0          1                   2                   1
##      1          0                   0                   0
##       y_rate_haz
## single -0.0568224065934066 -0.0534799120879121 -0.0495924456521739
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0490591935483871 -0.0401099340659341 -0.038829829787234
##      0                   1                   1                  1
##      1                   0                   0                  0
##       y_rate_haz
## single -0.0352193368421053 -0.0337963333333333 -0.0236574333333333
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0233974615384615 -0.0167124725274725 -0.013369978021978
##      0                   1                   1                  1
##      1                   0                   0                  0
##       y_rate_haz
## single -0.013224652173913 -0.0101389 -0.0100274835164835
##      0                  1          1                   2
##      1                  0          0                   0
##       y_rate_haz
## single -0.00675926666666667 -0.00668498901098901 -0.00654122580645162
##      0                    1                    1                    1
##      1                    0                    0                    0
##       y_rate_haz
## single -0.00337963333333333 -0.00334249450549451 -0.00330616304347826
##      0                    1                    3                    1
##      1                    0                    0                    0
##       y_rate_haz
## single -0.00323581914893617 0 0.0032358191489361 0.00341760674157304
##      0                    1 1                  1                   1
##      1                    0 0                  0                   0
##       y_rate_haz
## single 0.00668498901098902 0.00675926666666667 0.00991848913043472
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single 0.0132246521739131 0.013369978021978 0.0135185333333333
##      0                  2                 2                  1
##      1                  0                 0                  0
##       y_rate_haz
## single 0.0168981666666667 0.0177759935064936 0.0198369782608696
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.020054967032967 0.0202778 0.0228942903225807 0.0231431413043479
##      0                 1         1                  1                  1
##      1                 0         0                  0                  0
##       y_rate_haz
## single 0.0236574333333334 0.0270370666666666 0.0276515454545454
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0279693793103449 0.0294355161290323 0.0367674395604395 0.0405556
##      0                  1                  1                  1         1
##      1                  0                  0                  0         0
##       y_rate_haz
## single 0.0425179677419354 0.0473148666666667 0.049592445652174
##      0                  1                  2                 1
##      1                  0                  0                 0
##       y_rate_haz
## single 0.0501374175824175 0.0506945 0.0528986086956522 0.0540741333333333
##      0                  1         1                  1                  1
##      1                  0         0                  0                  0
##       y_rate_haz
## single 0.0562047717391304 0.0568224065934066 0.0570313125
##      0                  1                  1            1
##      1                  0                  0            0
##       y_rate_haz
## single 0.0601649010989012 0.0635073956043956 0.0735348791208791
##      0                  1                  2                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0743519333333333 0.0743519333333334 0.0744898775510204
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0752240967741935 0.0768773736263736 0.0802198681318682 0.0811112
##      0                  1                  1                  1         1
##      1                  0                  0                  0         0
##       y_rate_haz
## single 0.0902473516483517 0.0912501 0.104659612903226 0.107149738636364
##      0                  1         1                 1                 1
##      1                  0         0                 0                 0
##       y_rate_haz
## single 0.11278102247191 0.113644813186813 0.116198629213483
##      0                1                 1                 1
##      1                0                 0                 0
##       y_rate_haz
## single 0.125634195652174 0.130357285714286 0.130824516129032
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.133286662921348 0.13369978021978 0.137042274725275
##      0                 1                1                 2
##      1                 0                0                 0
##       y_rate_haz
## single 0.142165010869565 0.145471173913044 0.148777336956522 0.1520835
##      0                 1                 1                 1         1
##      1                 0                 0                 0         0
##       y_rate_haz
## single 0.155389663043478 0.160439736263736 0.16353064516129
##      0                 1                 1                1
##      1                 0                 0                0
##       y_rate_haz
## single 0.168614315217391 0.171498414893617 0.1723613 0.180494703296703
##      0                 1                 1         1                 1
##      1                 0                 0         0                 0
##       y_rate_haz
## single 0.188451293478261 0.198369782608696 0.199156964285714
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.199281827586207 0.213919648351648 0.227289626373626
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.229743159574468 0.233974615384615 0.2344620625 0.240659604395604
##      0                 1                 3            1                 1
##      1                 0                 0            0                 0
##       y_rate_haz
## single 0.242650078651685 0.244002098901099 0.24796222826087
##      0                 1                 2                1
##      1                 0                 0                0
##       y_rate_haz
## single 0.256140631578947 0.258378419354839 0.264057065934066
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.281023858695652 0.294139516483516 0.294248510869565
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.317837426966292 0.341342966666667 0.386821076086956
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.401099340659341 0.418638451612903 0.420365629213483
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.453014680851064 0.492960310344828
##      0                 1                 1
##      1                 0                 0
##       y_rate_haz
## single -0.732617290322581 -0.508059164835165 -0.494689186813187
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.469475152173913 -0.46769764516129 -0.439719684782609
##      0                  1                 1                  1
##      1                  0                 0                  0
##       y_rate_haz
## single -0.391071857142857 -0.384386868131868 -0.383514913043478
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.37101689010989 -0.362266314606742 -0.3548615 -0.3447226
##      0                 2                  1          1          1
##      1                 0                  0          0          0
##       y_rate_haz
## single -0.344276934065934 -0.330906956043956 -0.327310141304348
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.32400397826087 -0.317391652173913 -0.310779326086957 -0.304167
##      0                 1                  1                  1         1
##      1                 0                  0                  0         0
##       y_rate_haz
## single -0.300710556818182 -0.290942347826087 -0.287454527472527
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.266991033333333 -0.26491964516129 -0.261186880434783
##      0                  1                 1                  2
##      1                  0                 0                  0
##       y_rate_haz
## single -0.254574554347826 -0.252393893617021 -0.251837193548387
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.244656065217391 -0.2331947 -0.228942903225806 -0.226507340425532
##      0                  1          1                  1                  1
##      1                  0          0                  0                  0
##       y_rate_haz
## single -0.224819086956522 -0.216296533333333 -0.2129169 -0.211891617977528
##      0                  1                  1          1                  1
##      1                  0                  0          0                  0
##       y_rate_haz
## single -0.211594434782609 -0.210020071428571 -0.207092425531915
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.204847163265306 -0.20054967032967 -0.196236774193548
##      0                  1                 1                  1
##      1                  0                 0                  0
##       y_rate_haz
## single -0.195063619565217 -0.190522186813187 -0.188451293478261
##      0                  1                  3                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.183837197802198 -0.181800965517241 -0.180494703296703
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.179120566666667 -0.176613096774194 -0.175740933333333
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.170071870967742 -0.165308152173913 -0.164045123595506
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.163782230769231 -0.16353064516129 -0.1622224 -0.158695826086957
##      0                  1                 1          1                  1
##      1                  0                 0          0                  0
##       y_rate_haz
## single -0.143727263736264 -0.134473831578947 -0.13369978021978
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## single -0.125046433333333 -0.121012677419355 -0.120329802197802
##      0                  1                  2                  2
##      1                  0                  0                  0
##       y_rate_haz
## single -0.119021869565217 -0.118287166666667 -0.116987307692308
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.116489489361702 -0.116198629213483 -0.113644813186813
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.11278102247191 -0.111200838709677 -0.110302318681319
##      0                 1                  1                  1
##      1                 0                  0                  0
##       y_rate_haz
## single -0.100274835164835 -0.0925725652173913 -0.089266402173913
##      0                  1                   2                  1
##      1                  0                   0                  0
##       y_rate_haz
## single -0.0883065483870968 -0.0873671170212766 -0.0864474631578947
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0854401685393258 -0.0817653225806452 -0.0786049550561798
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0784947096774194 -0.0776596595744681 -0.0752240967741935
##      0                   2                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0711880212765957 -0.0675926666666667 -0.0654122580645161
##      0                   1                   1                   3
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0588710322580645 -0.0574537666666667 -0.0453014680851064
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0439352333333334 -0.0434524285714286 -0.0396739565217391
##      0                   1                   1                   2
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0375936741573034 -0.0363677934782608 -0.0330616304347826
##      0                   1                   1                   3
##      1                   0                   0                   0
##       y_rate_haz
## single -0.026449304347826 -0.0239232471910113 -0.0231431413043478
##      0                  1                   1                   1
##      1                  0                   0                   0
##       y_rate_haz
## single -0.0198369782608696 -0.019414914893617 -0.0167124725274725
##      0                   1                  1                   2
##      1                   0                  0                   0
##       y_rate_haz
## single -0.0165308152173913 -0.013224652173913 -0.0130824516129032
##      0                   1                  1                   2
##      1                   0                  0                   0
##       y_rate_haz
## single -0.0100274835164835 -0.00991848913043479 -0.00981183870967743
##      0                   1                    1                    1
##      1                   0                    0                    0
##       y_rate_haz
## single -0.00661232608695653 -0.00334249450549458 0 0.00330616304347825
##      0                    1                    1 4                   1
##      1                    0                    0 0                   0
##       y_rate_haz
## single 0.00330616304347826 0.00668498901098898 0.0101389 0.013369978021978
##      0                   1                   1         1                 3
##      1                   0                   0         0                 0
##       y_rate_haz
## single 0.016353064516129 0.0167124725274725 0.0168981666666668 0.0202778
##      0                 1                  1                  1         1
##      1                 0                  0                  0         0
##       y_rate_haz
## single 0.026739956043956 0.0267399560439561 0.0294355161290322
##      0                 1                  1                  1
##      1                 0                  0                  0
##       y_rate_haz
## single 0.0330616304347826 0.0334249450549451 0.0359767419354839
##      0                  1                  2                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0392473548387097 0.0401099340659341 0.0429801195652174
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0434524285714286 0.0467949230769231 0.0501374175824177 0.0506945
##      0                  1                  1                  1         1
##      1                  0                  0                  0         0
##       y_rate_haz
## single 0.0528986086956522 0.0534799120879121 0.0562047717391304
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0580993146067416 0.0661232608695652 0.0675926666666667
##      0                  2                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0727355869565217 0.0776596595744681 0.0784947096774193
##      0                  2                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0793479130434783 0.0873671170212766 0.0888577752808988
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0925725652173913 0.101389 0.106782031914894 0.111200838709677
##      0                  1        1                 1                 1
##      1                  0        0                 0                 0
##       y_rate_haz
## single 0.114471451612903 0.124283290322581 0.1330730625 0.14063635483871
##      0                 1                 1            1                1
##      1                 0                 0            0                0
##       y_rate_haz
## single 0.142376042553191 0.145471173913043 0.147177580645161
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.148703866666667 0.153754747252747 0.153792303370787
##      0                 1                 2                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.158695826086957 0.160627516853933 0.161790957446808
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.168614315217391 0.168981666666667 0.169693168421053
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.177152208791209 0.1825002 0.183154322580645 0.187179692307692
##      0                 1         1                 1                 1
##      1                 0         0                 0                 0
##       y_rate_haz
## single 0.197207175824176 0.203930147727273 0.20513588372093
##      0                 1                 1                1
##      1                 0                 0                0
##       y_rate_haz
## single 0.208474011235955 0.213919648351648 0.219131064516129
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.224819086956522 0.228979651685393 0.229815066666667 0.2331947
##      0                 2                 1                 1         1
##      1                 0                 0                 0         0
##       y_rate_haz
## single 0.233974615384615 0.234737576086957 0.246067685393258
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.249158074468085 0.254029582417582 0.265709103448276
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.268798744186046 0.274084549450549 0.276826146067416
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.280769538461538 0.291223723404255 0.304167 0.317391652173913
##      0                 2                 1        1                 1
##      1                 0                 0        0                 0
##       y_rate_haz
## single 0.33424945054945 0.3345837 0.360371771739131 0.371759666666667
##      0                1         1                 1                 1
##      1                0         0                 0                 0
##       y_rate_haz
## single 0.373596423913043 0.378518933333333 0.388657833333333
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.392037466666667 0.392473548387097 0.404441835164835
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.408935633333333 0.409964217391304 0.522373760869565
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single -0.292595429347826 -0.287454527472527 -0.281272709677419
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.250859381443299 -0.247030657458563 -0.23526729281768
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## single -0.228960873626374 -0.226047606557377 -0.219859842391304
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.213247516304348 -0.212248401098901 -0.211740563535912
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.208379602209945 -0.206699121546961 -0.205563412087912
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.199453770491803 -0.194935756906077 -0.192193434065934
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.19072092972973 -0.189695548387097 -0.186424935483871
##      0                 1                  1                  1
##      1                 0                  0                  0
##       y_rate_haz
## single -0.185508445054945 -0.182174887700535 -0.181170508196721
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.179508393442623 -0.178823456043956 -0.175480961538462
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.174769988950276 -0.171409027624309 -0.168981666666667
##      0                  1                  2                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.164827927374302 -0.162110983516484 -0.160348907608696
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.159645662983425 -0.158768489010989 -0.157838010810811
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.157097241758242 -0.152905572972973 -0.152896780748663
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.150412252747253 -0.148812887096774 -0.148741005494506
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.147069758241758 -0.145471173913043 -0.144603983606557
##      0                  1                  1                  3
##      1                  0                  0                  0
##       y_rate_haz
## single -0.140511929347826 -0.140384769230769 -0.138108259459459
##      0                  2                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.137955524590164 -0.135552684782609 -0.134836917525773
##      0                  3                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.13224652173913 -0.129432765957447 -0.127287277173913
##      0                 1                  1                  1
##      1                 0                  0                  0
##       y_rate_haz
## single -0.126871796791444 -0.126320721311475 -0.126036049723757
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.125634195652174 -0.123981114130435 -0.123310945945946
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.120292033898305 -0.118658554945055 -0.116987307692308
##      0                  1                  1                  2
##      1                  0                  0                  0
##       y_rate_haz
## single -0.116734362162162 -0.116348032786885 -0.11344607027027
##      0                  1                  2                 1
##      1                  0                  0                 0
##       y_rate_haz
## single -0.113023803278689 -0.11283614516129 -0.110606181818182
##      0                  1                 1                  1
##      1                  0                 0                  0
##       y_rate_haz
## single -0.109838083333333 -0.108037459016393 -0.107450298913044
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.105726497326203 -0.105288576923077 -0.103078816666667
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.102528202247191 -0.100837972826087 -0.0997268852459016
##      0                  1                  1                   1
##      1                  0                  0                   0
##       y_rate_haz
## single -0.0991483591160221 -0.0980647704918033 -0.0969323406593407
##      0                   1                   1                   2
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0953604648648649 -0.0925725652173913 -0.0919185989010989
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0897541967213115 -0.0876133206521739 -0.0869048571428571
##      0                   2                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0859602391304348 -0.0854401685393258 -0.0840240331491713
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0818911153846154 -0.0811112 -0.0797815081967213
##      0                   1          1                   1
##      1                   0          0                   0
##       y_rate_haz
## single -0.0794213833333333 -0.0793479130434783 -0.0785486208791209
##      0                   1                   1                   3
##      1                   0                   0                   0
##       y_rate_haz
## single -0.07604175 -0.0756307135135135 -0.0756216298342541
##      0           1                   1                   1
##      1           0                   0                   0
##       y_rate_haz
## single -0.0747951639344262 -0.0743886684782609 -0.0735887903225806
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0726621166666667 -0.0722606685082873 -0.0714709344262295
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0703181774193548 -0.0694294239130435 -0.0685211373626374
##      0                   1                   2                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0677763423913043 -0.067219226519337 -0.0671637791878173
##      0                   1                  1                   1
##      1                   0                  0                   0
##       y_rate_haz
## single -0.0668498901098901 -0.0644701793478261 -0.0638582651933702
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.062817097826087 -0.0601649010989012 -0.0595109347826087
##      0                  1                   1                   1
##      1                  0                   0                   0
##       y_rate_haz
## single -0.0578578532608696 -0.0571363425414365 -0.0560754804469273
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0556004193548387 -0.0537753812154696 -0.0534799120879121
##      0                   2                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0504144198895028 -0.0498634426229509 -0.0495924456521739
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0493243783783784 -0.0482013278688525 -0.0474238870967742
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0471702834224599 -0.0467949230769231 -0.0465392131147541
##      0                   1                   1                   2
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0462862826086957 -0.0450617777777778 -0.0432149836065574
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0425179677419354 -0.0417811813186813 -0.041552868852459
##      0                   1                   1                  1
##      1                   0                   0                  0
##       y_rate_haz
## single -0.0403315359116022 -0.0398907540983606 -0.0396739565217392
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0396739565217391 -0.0390374759358289 -0.0367674395604396
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0363677934782609 -0.0359767419354839 -0.0357843529411765
##      0                   2                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0328829189189189 -0.0299180655737705 -0.0297554673913043
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0279504810810811 -0.0276515454545455 -0.02534725
##      0                   1                   1           1
##      1                   0                   0           0
##       y_rate_haz
## single -0.0250687087912088 -0.0232696065573771 -0.0217262142857143
##      0                   2                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0216074918032787 -0.0214900597826087 -0.015293312849162
##      0                   1                   1                  1
##      1                   0                   0                  0
##       y_rate_haz
## single -0.0135940558659218 -0.013224652173913 -0.0116348032786885
##      0                   1                  1                   1
##      1                   0                  0                   0
##       y_rate_haz
## single -0.0100274835164835 -0.00849628491620112 -0.00844908333333333
##      0                   1                    1                    1
##      1                   0                    0                    0
##       y_rate_haz
## single -0.0084490833333333 -0.00831057377049177 -0.00650624598930482
##      0                   1                    1                    1
##      1                   0                    0                    0
##       y_rate_haz
## single -0.0050137417582418 -0.00330616304347826 -0.00169925698324022
##      0                   1                    1                    1
##      1                   0                    0                    0
##       y_rate_haz
## single -0.00164414594594595 -0.0016353064516129 0.00323581914893617
##      0                    1                   1                   1
##      1                    0                   0                   0
##       y_rate_haz
## single 0.00506945 0.00840240331491714 0.00991848913043479
##      0          1                   1                   1
##      1          0                   0                   0
##       y_rate_haz
## single 0.0115715706521739 0.016353064516129 0.0164414594594594
##      0                  1                 1                  1
##      1                  0                 0                  0
##       y_rate_haz
## single 0.0178921764705882 0.0197297513513514 0.0214900597826087
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0228564797687861 0.0249317213114754 0.0250687087912088
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0282559508196721 0.0317536978021978 0.038020875
##      0                  2                  1           2
##      1                  0                  0           0
##       y_rate_haz
## single 0.0420120165745856 0.0501374175824176 0.0520949005524862
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.055455861878453 0.0568224065934066 0.0578578532608696
##      0                 1                  1                  1
##      1                 0                  0                  0
##       y_rate_haz
## single 0.0681467049180328 0.0731330491803279 0.0735348791208791
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.102509320441989 0.13224652173913 0.138713521978022
##      0                 1                1                 1
##      1                 0                0                 0
##       y_rate_haz
## single -0.32411237704918 -0.297482010989011 -0.268482603351955
##      0                 1                  1                  1
##      1                 0                  0                  0
##       y_rate_haz
## single -0.252358335164835 -0.250979327868853 -0.248711138121547
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.245295967741935 -0.238628254143646 -0.225184408839779
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.224819086956522 -0.219283186046512 -0.215860451612903
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.214412803278689 -0.2129169 -0.209319225806452 -0.208905906593407
##      0                  1          1                  1                  1
##      1                  0          0                  0                  0
##       y_rate_haz
## single -0.205563412087912 -0.203892164835165 -0.199398366666667
##      0                  2                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.198369782608696 -0.197872080645161 -0.197791655737705
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.194467426229508 -0.190104375 -0.189076783783784
##      0                  1            1                  1
##      1                  0            0                  0
##       y_rate_haz
## single -0.185788491891892 -0.185619861538462 -0.185508445054945
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.184494737704918 -0.179508393442623 -0.177846278688525
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.174769988950276 -0.174522049180328 -0.173564220338983
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.172138467032967 -0.17192047826087 -0.171197819672131
##      0                  1                 1                  1
##      1                  0                 0                  0
##       y_rate_haz
## single -0.167873590163934 -0.160348907608696 -0.159563016393443
##      0                  2                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.158030899441341 -0.157965182320442 -0.157776465240642
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.157042744565217 -0.152914557377049 -0.149562779005525
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.148777336956522 -0.148017096256684 -0.147124255434783
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.146201817679558 -0.145679984210526 -0.143818092391304
##      0                  2                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.142840856353591 -0.140384769230769 -0.137205766304348
##      0                  2                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.136464113513514 -0.136293409836066 -0.134631295081967
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.134438453038674 -0.132969180327869 -0.130593440217391
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.129644950819672 -0.125343543956044 -0.123981114130435
##      0                  2                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.12267508839779 -0.122647983870968 -0.122001049450549 -0.1216668
##      0                 1                  1                  1          1
##      1                 0                  0                  0          0
##       y_rate_haz
## single -0.121012677419355 -0.120994607734807 -0.120365550802139
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.120022654054054 -0.118658554945055 -0.118010147540984
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.116987307692308 -0.114907533333333 -0.114471451612903
##      0                  3                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.11344607027027 -0.113217716666667 -0.113023803278689
##      0                 1                  1                  1
##      1                 0                  0                  0
##       y_rate_haz
## single -0.110911723756906 -0.110302318681319 -0.107930225806452
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.104189801104972 -0.10361732967033 -0.103051114754098
##      0                  1                 1                  1
##      1                  0                 0                  0
##       y_rate_haz
## single -0.102491054347826 -0.101389 -0.0997268852459016
##      0                  1         2                   1
##      1                  0         0                   0
##       y_rate_haz
## single -0.0952610934065934 -0.0919185989010989 -0.0915771612903226
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0880920819672131 -0.08618065 -0.085035935483871
##      0                   1           1                  1
##      1                   0           0                  0
##       y_rate_haz
## single -0.0843071576086957 -0.0834006290322581 -0.0808954787234042
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.078119393442623 -0.07604175 -0.0756216298342541
##      0                  2           1                   2
##      1                  0           0                   0
##       y_rate_haz
## single -0.0744238404255319 -0.0743886684782609 -0.0731952673796791
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0731330491803279 -0.0727355869565218 -0.0701923846153846
##      0                   1                   1                   3
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0677763423913043 -0.0668498901098901 -0.0661232608695652
##      0                   1                   2                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0655387458563536 -0.0650624598930481 -0.0642130333333333
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0641216918918919 -0.0618361483516484 -0.0614982459016394
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0591892540540541 -0.0591435833333333 -0.0581740163934426
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0571363425414364 -0.0559009621621621 -0.0556004193548387
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0553030909090909 -0.0551511593406594 -0.0542568162162162
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0523298064516129 -0.0520499679144385 -0.0509685243243243
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0498634426229508 -0.049592445652174 -0.0470534585635359
##      0                   1                  1                   1
##      1                   0                  0                   0
##       y_rate_haz
## single -0.0462862826086956 -0.0457885806451613 -0.0453014680851064
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.041552868852459 -0.0413270380434783 -0.0398907540983606
##      0                  1                   1                   1
##      1                  0                   0                   0
##       y_rate_haz
## single -0.0382286393442624 -0.0382286393442623 -0.0376120483870968
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0363677934782608 -0.0350961923076923 -0.0336096132596685
##      0                   1                   1                   2
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0330616304347826 -0.0328829189189189 -0.0317536978021978
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0310708225806451 -0.0299180655737705 -0.0271881117318436
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0267399560439561 -0.0232696065573771 -0.0230180432432432
##      0                   1                   2                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0199453770491803 -0.0184852872928177 -0.0181838967391304
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0167124725274725 -0.0155539943181819 -0.0149590327868853
##      0                   1                   1                   2
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0146390534759358 -0.013369978021978 -0.0132969180327869
##      0                   1                  1                   1
##      1                   0                  0                   0
##       y_rate_haz
## single -0.011763364640884 -0.00835623626373625 -0.00498634426229509
##      0                  1                    1                    1
##      1                  0                    0                    0
##       y_rate_haz
## single -0.00167124725274725 0.00167124725274722 0.00167124725274725
##      0                    1                   1                   2
##      1                    0                   0                   0
##       y_rate_haz
## single 0.00336096132596685 0.00501374175824173 0.00661232608695653
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single 0.00668498901098902 0.00826540760869566 0.00840240331491714
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single 0.0100274835164835 0.0100828839779005 0.0135185333333333
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0168981666666667 0.0181838967391304 0.0183837197802198
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0199453770491803 0.0201657679558011 0.0267399560439561
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0284112032967033 0.0288158210526316 0.0330616304347826
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0349044098360656 0.0398907540983607 0.041552868852459
##      0                  1                  2                 1
##      1                  0                  0                 0
##       y_rate_haz
## single 0.0451236758241758 0.0548497868852459 0.0668498901098901
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0743886684782609 0.0752061263736264 0.0773021104972376
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0818911153846154 0.085035935483871 0.0902473516483516
##      0                  1                 1                  1
##      1                  0                 0                  0
##       y_rate_haz
## single 0.0914259190751445 0.109231243093923 0.125046433333333
##      0                  1                 1                 1
##      1                  0                 0                 0
##       y_rate_haz
## single 0.139617639344262 0.142271661290323 0.153754747252747
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.294248510869565
##      0                 1
##      1                 0
##       y_rate_haz
## single -0.260714571428571 -0.236390657608696 -0.225247994594595
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.224819086956522 -0.223399491525424 -0.221823447513812
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.206102229508197 -0.202778 -0.196018733333333 -0.195535928571429
##      0                  1         1                  1                  1
##      1                  0         0                  0                  0
##       y_rate_haz
## single -0.194009221621622 -0.190104375 -0.18653335359116
##      0                  1            1                 1
##      1                  0            0                 0
##       y_rate_haz
## single -0.183837197802198 -0.181838967391304 -0.181170508196721
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.178823456043956 -0.168795972527473 -0.163655070652174
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.16353064516129 -0.160439736263736 -0.158768489010989
##      0                 1                  1                  1
##      1                 0                  0                  0
##       y_rate_haz
## single -0.155425994505495 -0.153754747252747 -0.153736581521739
##      0                  1                  1                  2
##      1                  0                  0                  0
##       y_rate_haz
## single -0.149562779005525 -0.146136100558659 -0.144521337016575
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.142165010869565 -0.140511929347826 -0.138564966666667
##      0                  2                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.136293409836066 -0.12988752972973 -0.126320721311475
##      0                  2                 1                  1
##      1                  0                 0                  0
##       y_rate_haz
## single -0.126036049723757 -0.125918596774194 -0.124355569060773
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.12133437704918 -0.121012677419355 -0.120329802197802
##      0                 1                  1                  1
##      1                 0                  0                  0
##       y_rate_haz
## single -0.119021869565217 -0.118378508108108 -0.116987307692308
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.116348032786885 -0.115715706521739 -0.115090216216216
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.113859304812834 -0.113644813186813 -0.11344607027027
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## single -0.113023803278689 -0.112409543478261 -0.110302318681319
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.110157778378378 -0.109103380434783 -0.106375344262295
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single -0.10361732967033 -0.103078816666667 -0.101389 -0.100837972826087
##      0                 1                  1         1                  1
##      1                 0                  0         0                  0
##       y_rate_haz
## single -0.0991483591160221 -0.0986035879120879 -0.0958787282608696
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0951583910614525 -0.0925725652173913 -0.0919185989010989
##      0                   1                   2                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.090745955801105 -0.0897541967213115 -0.089266402173913
##      0                  1                   1                  1
##      1                  0                   0                  0
##       y_rate_haz
## single -0.0859602391304348 -0.0854955891891892 -0.0849628491620112
##      0                   2                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0814436229508197 -0.0810009945652174 -0.0797815081967213
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0793479130434783 -0.0789190054054054 -0.078119393442623
##      0                   1                   2                  1
##      1                   0                   0                  0
##       y_rate_haz
## single -0.0768773736263736 -0.0764572786885246 -0.07604175
##      0                   1                   1           1
##      1                   0                   0           0
##       y_rate_haz
## single -0.0752061263736264 -0.0735348791208791 -0.0731330491803279
##      0                   1                   2                   2
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0719534838709678 -0.0719534838709677 -0.0718636318681319
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0694294239130435 -0.0688997071823205 -0.0681467049180328
##      0                   2                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0651786428571429 -0.0642130333333333 -0.0638582651933702
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0635073956043956 -0.062817097826087 -0.0581740163934426
##      0                   2                  1                   1
##      1                   0                  0                   0
##       y_rate_haz
## single -0.0568224065934066 -0.0551511593406594 -0.0548497868852459
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0545516902173913 -0.0534799120879121 -0.0518086648351648
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.051245527173913 -0.0498634426229508 -0.0487339392265194
##      0                  1                   1                   1
##      1                  0                   0                   0
##       y_rate_haz
## single -0.0482013278688525 -0.0476802324324324 -0.0471702834224599
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.046137691011236 -0.0446332010869565 -0.0443919405405405
##      0                  1                   1                   1
##      1                  0                   0                   0
##       y_rate_haz
## single -0.0434524285714286 -0.0429801195652174 -0.041552868852459
##      0                   1                   1                  1
##      1                   0                   0                  0
##       y_rate_haz
## single -0.0411036486486486 -0.0396739565217391 -0.0384386868131868
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0382286393442623 -0.038020875 -0.0371759666666667
##      0                   3            2                   1
##      1                   0            0                   0
##       y_rate_haz
## single -0.0367674395604396 -0.0363677934782609 -0.0349044098360656
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0341760674157303 -0.0334249450549451 -0.0332422950819672
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0330616304347826 -0.0317536978021978 -0.0300824505494506
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.02534725 -0.0250687087912088 -0.0236574333333333
##      0           1                   1                   1
##      1           0                   0                   0
##       y_rate_haz
## single -0.0232696065573771 -0.0202778 -0.0183837197802198
##      0                   1          1                   1
##      1                   0          0                   0
##       y_rate_haz
## single -0.0168048066298342 -0.0167124725274725 -0.0166211475409836
##      0                   1                   2                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.0151243259668508 -0.0150412252747253 -0.0148777336956522
##      0                   1                   2                   1
##      1                   0                   0                   0
##       y_rate_haz
## single -0.013224652173913 -0.0116348032786885 -0.00840240331491713
##      0                  1                   1                    1
##      1                  0                   0                    0
##       y_rate_haz
## single -0.00501374175824176 -0.00493243783783784 -0.00330616304347819
##      0                    1                    1                    1
##      1                    0                    0                    0
##       y_rate_haz
## single -0.00165308152173913 0 0.00168981666666667 0.00330616304347825
##      0                    2 2                   1                   1
##      1                    0 0                   0                   0
##       y_rate_haz
## single 0.00495924456521736 0.0049592445652174 0.00501374175824176
##      0                   1                  1                   1
##      1                   0                  0                   0
##       y_rate_haz
## single 0.00654122580645162 0.00668498901098902 0.00997268852459017
##      0                   1                   1                   1
##      1                   0                   0                   0
##       y_rate_haz
## single 0.0132969180327869 0.013369978021978 0.0135185333333333
##      0                  1                 1                  1
##      1                  0                 0                  0
##       y_rate_haz
## single 0.0148777336956522 0.0151243259668508 0.0166211475409836
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0179883709677419 0.0183837197802198 0.0184852872928177
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0198369782608696 0.0202778 0.0233974615384615 0.023526729281768
##      0                  1         1                  1                 1
##      1                  0         0                  0                 0
##       y_rate_haz
## single 0.0239232471910112 0.0250687087912088 0.026739956043956
##      0                  1                  1                 1
##      1                  0                  0                 0
##       y_rate_haz
## single 0.0268876906077348 0.0282559508196721 0.0294355161290322
##      0                  1                  2                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0300824505494505 0.0314085489130435 0.0365665245901639
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0401099340659341 0.0436924972375691 0.0460360864864865
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0501374175824176 0.0504144198895028 0.0526126702702703
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## single 0.0534799120879121 0.0551511593406594 0.05576395 0.0568224065934066
##      0                  1                  1          1                  1
##      1                  0                  0          0                  0
##       y_rate_haz
## single 0.0571363425414365 0.0584936538461538 0.0601649010989011 0.0608334
##      0                  1                  1                  1         1
##      1                  0                  0                  0         0
##       y_rate_haz
## single 0.0618361483516483 0.062817097826087 0.0648224754098361
##      0                  2                 1                  1
##      1                  0                 0                  0
##       y_rate_haz
## single 0.0657658378378378 0.0743519333333333 0.07604175 0.089266402173913
##      0                  1                  1          2                 1
##      1                  0                  0          0                 0
##       y_rate_haz
## single 0.101389 0.10361732967033 0.105225340540541 0.110756461956522
##      0        1                1                 1                 1
##      1        0                0                 0                 0
##       y_rate_haz
## single 0.111973565934066 0.124658606557377 0.13130706557377
##      0                 1                 1                1
##      1                 0                 0                0
##       y_rate_haz
## single 0.134438453038674 0.138108259459459 0.140384769230769
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## single 0.157097241758242
##      0                 1
##      1                 0
```




# Results Detail

## Results Plots
![](/tmp/12995a7d-31db-453b-a521-1b56ba944f32/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/12995a7d-31db-453b-a521-1b56ba944f32/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1758635    0.1201756    0.2315515
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.3088689    0.1738029    0.4439349
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.1570633   -0.1917683   -0.1223582
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.1656470   -0.2587264   -0.0725677
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0732280   -0.1302430   -0.0162130
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1401766   -0.2083770   -0.0719761
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0422918   -0.0813576   -0.0032261
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1408850   -0.3605068    0.0787368
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                -0.4381530   -0.4974706   -0.3788353
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                -0.4236278   -0.4999923   -0.3472634
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1388945   -0.1496186   -0.1281703
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1927413   -0.2354914   -0.1499912
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.5407885   -0.5645570   -0.5170201
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.5034292   -0.5843461   -0.4225123
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0694702   -0.0777192   -0.0612212
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.1853970   -0.3193588   -0.0514352
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0658306    0.0253954    0.1062658
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0288050   -0.0512251    0.1088351
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                 0.0308326   -0.0028782    0.0645434
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.0020274   -0.0728298    0.0768847
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0173407   -0.0644272    0.0297458
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0212370   -0.0410293    0.0835033
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0721021   -0.1047651   -0.0394391
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0255782   -0.2091445    0.1579880
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0867435   -0.1041956   -0.0692913
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0785085   -0.1339253   -0.0230917
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0466978    0.0271747    0.0662210
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                 0.0561385    0.0145471    0.0977299
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0023000   -0.0120036    0.0074037
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0221901   -0.0124671    0.0568473
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1020783   -0.1177274   -0.0864293
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0636022   -0.1167892   -0.0104152
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0632424   -0.0696888   -0.0567960
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                 0.0429801   -0.1774334    0.2633936
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0029346   -0.0159187    0.0217878
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0290158   -0.0478905    0.1059220
6-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0371661   -0.0526142   -0.0217180
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0383639   -0.0684019   -0.0083258
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0673545   -0.0893485   -0.0453605
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0367618   -0.0641009   -0.0094226
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1238574   -0.1398522   -0.1078625
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1296884   -0.1924653   -0.0669116
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0599673   -0.0696358   -0.0502987
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0545627   -0.0846510   -0.0244744
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0741953   -0.0879960   -0.0603946
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0844451   -0.1230531   -0.0458371
6-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0417357    0.0251523    0.0583192
6-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0559040    0.0297270    0.0820809
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0494491   -0.0542779   -0.0446203
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0466473   -0.0651053   -0.0281894
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1113434   -0.1189387   -0.1037482
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0974863   -0.1266659   -0.0683068
6-12 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0961828   -0.1002224   -0.0921433
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1061242   -0.1857341   -0.0265143
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.1002776   -0.1054489   -0.0951062
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0917469   -0.1309218   -0.0525719
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0025932   -0.0086937    0.0138801
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0280085   -0.0563463    0.0003294
12-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0094792   -0.0170461   -0.0019122
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0076256   -0.0260596    0.0108083
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0152579   -0.0249094   -0.0056065
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0154532   -0.0275023   -0.0034040
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0383288   -0.0462417   -0.0304160
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0727493   -0.1142883   -0.0312102
12-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0430655   -0.0607657   -0.0253653
12-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0425647   -0.0630459   -0.0220836
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0537462   -0.0635987   -0.0438937
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0328213   -0.0547497   -0.0108930
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0293424   -0.0332750   -0.0254098
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0332780   -0.0466422   -0.0199139
12-24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.0358765   -0.0378050   -0.0339480
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0383325   -0.0756637   -0.0010013
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0579582   -0.0605220   -0.0553943
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0593711   -0.0779510   -0.0407911


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.1581085   -0.1906285   -0.1255886
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1018785   -0.1458569   -0.0579001
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0461667   -0.0847570   -0.0075763
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4375900   -0.4969173   -0.3782626
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1422689   -0.1526759   -0.1318619
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5383569   -0.5612045   -0.5155093
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0696442   -0.0778843   -0.0614041
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0604904    0.0239698    0.0970111
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0273803   -0.0036374    0.0583980
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0000528   -0.0382594    0.0381539
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0860053   -0.1026518   -0.0693587
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0470780    0.0278572    0.0662989
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0007769   -0.0101301    0.0085763
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0991186   -0.1141500   -0.0840873
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0630623   -0.0695098   -0.0566148
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0065644   -0.0129183    0.0260472
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0373127   -0.0513600   -0.0232653
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0537724   -0.0711138   -0.0364310
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1240143   -0.1396706   -0.1083579
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0594910   -0.0686980   -0.0502839
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0752772   -0.0882847   -0.0622698
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0422873    0.0257506    0.0588239
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0492781   -0.0539501   -0.0446061
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1102314   -0.1176038   -0.1028591
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0962037   -0.1002382   -0.0921691
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.1000706   -0.1052055   -0.0949358
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0092560   -0.0162726   -0.0022393
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0153445   -0.0229210   -0.0077680
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0393265   -0.0471437   -0.0315094
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.0430497   -0.0603171   -0.0257823
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0517435   -0.0609232   -0.0425638
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0296844   -0.0334592   -0.0259097
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.0358827   -0.0378087   -0.0339568
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0579942   -0.0605373   -0.0554512


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.1330053   -0.0130904    0.2791011
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.0085838   -0.1079226    0.0907551
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0669486   -0.1558418    0.0219447
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0985931   -0.3216623    0.1244761
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.0145251   -0.0347556    0.0638059
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0538468   -0.0979215   -0.0097721
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0373594   -0.0469762    0.1216949
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.1159269   -0.2501424    0.0182887
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0370256   -0.1266907    0.0526394
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.0288051   -0.1109028    0.0532925
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0385777   -0.0394878    0.1166433
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0465239   -0.1399257    0.2329735
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0082350   -0.0498650    0.0663349
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.0094407   -0.0319061    0.0507875
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0244900   -0.0115000    0.0604801
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0384761   -0.0169653    0.0939176
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                  0.1062225   -0.1142852    0.3267302
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0260812   -0.0531022    0.1052646
6-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.0011977   -0.0349754    0.0325799
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0305927   -0.0044953    0.0656807
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0058311   -0.0706135    0.0589514
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0054046   -0.0261990    0.0370081
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -0.0102498   -0.0512503    0.0307507
6-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0141682   -0.0068566    0.0351930
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0028018   -0.0162774    0.0218809
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0138571   -0.0162948    0.0440089
6-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.0099414   -0.0896537    0.0697710
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0085307   -0.0309841    0.0480455
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0306017   -0.0611046   -0.0000988
12-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0018536   -0.0180730    0.0217801
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0001952   -0.0156332    0.0152428
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0344204   -0.0767064    0.0078655
12-24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        1                    0                  0.0005008   -0.0240952    0.0250968
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0209249   -0.0031152    0.0449649
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.0039356   -0.0178664    0.0099951
12-24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.0024560   -0.0398370    0.0349249
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.0014129   -0.0201689    0.0173431
