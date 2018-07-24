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

**Outcome Variable:** y_rate_lencm

## Predictor Variables

**Intervention Variable:** single

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* diffcat
* studyid
* country

## Data Summary

diffcat        studyid                    country                        single    n_cell       n
-------------  -------------------------  -----------------------------  -------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0            244     244
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0            231     231
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0            220     220
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0            206     206
0-3 months     ki1119695-PROBIT           BELARUS                        0          12251   12745
0-3 months     ki1119695-PROBIT           BELARUS                        1            494   12745
3-6 months     ki1119695-PROBIT           BELARUS                        0          12773   13309
3-6 months     ki1119695-PROBIT           BELARUS                        1            536   13309
6-12 months    ki1119695-PROBIT           BELARUS                        0          12394   12896
6-12 months    ki1119695-PROBIT           BELARUS                        1            502   12896
12-24 months   ki1119695-PROBIT           BELARUS                        0           2453    2533
12-24 months   ki1119695-PROBIT           BELARUS                        1             80    2533
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0            157     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1             23     180
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0            178     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1             30     208
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0            167     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1             27     194
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0            144     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1             21     165
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0            161     180
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1             19     180
3-6 months     ki1135781-COHORTS          GUATEMALA                      0            696     754
3-6 months     ki1135781-COHORTS          GUATEMALA                      1             58     754
6-12 months    ki1135781-COHORTS          GUATEMALA                      0            745     810
6-12 months    ki1135781-COHORTS          GUATEMALA                      1             65     810
12-24 months   ki1135781-COHORTS          GUATEMALA                      0            767     840
12-24 months   ki1135781-COHORTS          GUATEMALA                      1             73     840
0-3 months     ki1135781-COHORTS          GUATEMALA                      0            632     676
0-3 months     ki1135781-COHORTS          GUATEMALA                      1             44     676
0-3 months     ki0047075b-MAL-ED          INDIA                          0            200     200
3-6 months     ki0047075b-MAL-ED          INDIA                          0            227     227
6-12 months    ki0047075b-MAL-ED          INDIA                          0            222     222
12-24 months   ki0047075b-MAL-ED          INDIA                          0            223     223
0-3 months     ki1135781-COHORTS          INDIA                          0           4655    4662
0-3 months     ki1135781-COHORTS          INDIA                          1              7    4662
3-6 months     ki1135781-COHORTS          INDIA                          0           4711    4719
3-6 months     ki1135781-COHORTS          INDIA                          1              8    4719
6-12 months    ki1135781-COHORTS          INDIA                          0           3813    3821
6-12 months    ki1135781-COHORTS          INDIA                          1              8    3821
12-24 months   ki1135781-COHORTS          INDIA                          0           3164    3172
12-24 months   ki1135781-COHORTS          INDIA                          1              8    3172
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         0            677    1027
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         1            350    1027
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         0            326     485
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         1            159     485
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         0            432     538
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1            106     538
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         0            407     508
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         1            101     508
3-6 months     ki1148112-iLiNS-DYAD-M     MALAWI                         0              6       7
3-6 months     ki1148112-iLiNS-DYAD-M     MALAWI                         1              1       7
3-6 months     ki0047075b-MAL-ED          NEPAL                          0            233     233
6-12 months    ki0047075b-MAL-ED          NEPAL                          0            230     230
12-24 months   ki0047075b-MAL-ED          NEPAL                          0            226     226
0-3 months     ki0047075b-MAL-ED          NEPAL                          0            175     175
0-3 months     ki0047075b-MAL-ED          PERU                           0            238     271
0-3 months     ki0047075b-MAL-ED          PERU                           1             33     271
3-6 months     ki0047075b-MAL-ED          PERU                           0            235     267
3-6 months     ki0047075b-MAL-ED          PERU                           1             32     267
6-12 months    ki0047075b-MAL-ED          PERU                           0            208     237
6-12 months    ki0047075b-MAL-ED          PERU                           1             29     237
12-24 months   ki0047075b-MAL-ED          PERU                           0            168     191
12-24 months   ki0047075b-MAL-ED          PERU                           1             23     191
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0           2333    2391
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1             58    2391
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0           2175    2232
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1             57    2232
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0            131     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1             98     229
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0            133     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1            108     241
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0            129     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1            103     232
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0            128     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1            102     230
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            217     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6     223
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            201     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6     207
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            220     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              9     229
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            231     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              8     239
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1503    1651
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            148    1651
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            983    1078
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             95    1078
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              2       2
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0           7344    7835
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1            491    7835
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0           5504    5869
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1            365    5869
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0           4276    4554
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            278    4554
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            274     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             29     303


The following strata were considered:

* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* diffcat: 12-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* diffcat: 12-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 3-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 6-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* diffcat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* diffcat: 6-12 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* diffcat: 6-12 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* diffcat: 3-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##       y_rate_lencm
## single 1.58842766666667 2.20035702127659 2.35814865168539 2.36214797872341
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 2.46067685393258 2.55982128712871 2.59738112359551 2.60231766666667
##      0                1                1                1                2
##      1                0                0                0                0
##       y_rate_lencm
## single 2.6739956043956 2.68190258064516 2.69602568181818 2.79409220930232
##      0               1                1                1                1
##      1               0                0                0                0
##       y_rate_lencm
## single 2.80769538461539 2.81023858695652 2.84112032967033 2.87268833333333
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 2.90648466666667 2.90797021978022 2.93678482758621 2.94139516483517
##      0                2                2                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 2.97331786516854 2.97407733333333 2.97482010989011 2.97554673913043
##      0                2                1                2                1
##      1                0                0                0                0
##       y_rate_lencm
## single 2.97625774193548 3.00787366666667 3.00896387096774 3.04167
##      0                1                1                1       4
##      1                0                0                0       0
##       y_rate_lencm
## single 3.07546633333333 3.10779326086956 3.143059 3.17110276595745
##      0                1                3        2                1
##      1                0                0        0                0
##       y_rate_lencm
## single 3.17249451612903 3.17685533333333 3.17837426966292 3.20520064516129
##      0                2                3                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.20697815217391 3.21065166666667 3.21647862068966 3.21851127906977
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.23581914893617 3.24003978260869 3.2400397826087 3.24221967032967
##      0                2                1               1                1
##      1                0                0               0                0
##       y_rate_lencm
## single 3.244448 3.24672640449438 3.25893214285714 3.27310141304348
##      0        4                1                1                2
##      1        0                0                0                0
##       y_rate_lencm
## single 3.27824433333333 3.30616304347826 3.31507853932584 3.32136379310345
##      0                3                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.32794482352941 3.33922467391304 3.34249450549451 3.345837
##      0                1                1                4        4
##      1                0                0                0        0
##       y_rate_lencm
## single 3.37591945054945 3.37963333333333 3.39761010638298 3.40143741935484
##      0                1                3                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.41342966666666 3.41342966666667 3.4341435483871 3.43840956521739
##      0                1                2               2                1
##      1                0                0               0                0
##       y_rate_lencm
## single 3.43998392857143 3.44276934065934 3.447226 3.45178280898876
##      0                1                1        1                1
##      1                0                0        0                0
##       y_rate_lencm
## single 3.46121068965517 3.47619428571429 3.48102233333333 3.50453282608695
##      0                1                4                3                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.50961923076923 3.51481866666667 3.52013494382022 3.52557204545455
##      0                1                2                2                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.53226193548387 3.53759445652174 3.54304417582418 3.548615
##      0                1                3                3        3
##      1                0                0                0        0
##       y_rate_lencm
## single 3.55431101123595 3.56013647727273 3.57646912087912 3.60371771739131
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.60989406593407 3.61620766666667 3.62266314606742 3.62411744680851
##      0                3                4                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.63038032258065 3.63677934782609 3.64331901098901 3.650004
##      0                1                1                4        3
##      1                0                0                0        0
##       y_rate_lencm
## single 3.6630864516129 3.66984097826087 3.68380033333333 3.68578835294118
##      0               1                1                1                1
##      1               0                0                0                0
##       y_rate_lencm
## single 3.69101528089887 3.69839420454546 3.7101689010989 3.72519134831461
##      0                1                1               3                1
##      1                0                0               0                0
##       y_rate_lencm
## single 3.72849870967742 3.73596423913043 3.74359384615384 3.74359384615385
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.751393 3.76120483870968 3.77586620689655 3.77701879120879
##      0        2                1                1                2
##      1        0                0                0                0
##       y_rate_lencm
## single 3.78518933333333 3.7942481443299 3.8020875 3.81044373626374
##      0                1               1         3                1
##      1                0               0         0                0
##       y_rate_lencm
## single 3.81898566666667 3.82661709677419 3.84049242424242 3.86189561797753
##      0                2                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.88657833333333 3.90127239130435 3.91071857142857 3.91534117021277
##      0                3                1                3                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.91571310344828 3.91907480769231 3.92037466666667 3.92473548387097
##      0                1                1                2                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.93433402173913 3.94034522727273 3.94414351648352 3.954171
##      0                3                1                1        1
##      1                0                0                0        0
##       y_rate_lencm
## single 3.95744161290323 3.96739565217391 3.97756846153846 3.99014774193548
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 4.00947409090909 4.01099340659341 4.02059827586207 4.02285387096774
##      0                1                3                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 4.03351891304348 4.0778432967033 4.09964217391304 4.12097225806452
##      0                1               1                2                1
##      1                0               0                0                0
##       y_rate_lencm
## single 4.12315266666667 4.13270380434783 4.1418485106383 4.14469318681319
##      0                1                1               1                1
##      1                0                0               0                0
##       y_rate_lencm
## single 4.16576543478261 4.17811813186813 4.18638451612903 4.20365629213483
##      0                1                3                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 4.21154307692308 4.23188869565217 4.23892308510638 4.258338
##      0                2                1                1        1
##      1                0                0                0        0
##       y_rate_lencm
## single 4.27200842696629 4.28598954545455 4.31720903225806 4.33107358695652
##      0                2                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 4.33525379310345 4.34524285714286 4.359727 4.39719684782609
##      0                1                2        1                2
##      1                0                0        0                0
##       y_rate_lencm
## single 4.47706483146067 4.52870866666667 4.63009766666667 4.67949230769231
##      0                2                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 4.83287566666667 5.576395
##      0                1        1
##      1                0        0
##       y_rate_lencm
## single 2.23947131868132 2.24504214285714 2.45922255319149 2.46067685393258
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 2.46713233333333 2.51268391304348 2.57610826530612 2.623440375
##      0                2                1                1           1
##      1                0                0                0           0
##       y_rate_lencm
## single 2.63155719101123 2.64493043478261 2.6739956043956 2.71460870967742
##      0                1                2               1                1
##      1                0                0               0                0
##       y_rate_lencm
## single 2.77129933333333 2.77427043956044 2.77717695652174 2.80769538461538
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 2.86884784090909 2.87454527472528 2.87636184782609 2.90797021978022
##      0                1                1                2                1
##      1                0                0                0                0
##       y_rate_lencm
## single 2.94139516483517 2.94459542553192 2.97482010989011 2.97554673913043
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 2.97959510204082 3.00316784810126 3.00787366666667 3.00860836956522
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.04167 3.07509494505494 3.07546633333333 3.07584606741573
##      0       3                1                1                2
##      1       0                0                0                0
##       y_rate_lencm
## single 3.10851989010989 3.14194483516483 3.143059 3.14419820224719
##      0                1                2        2                1
##      1                0                0        0                0
##       y_rate_lencm
## single 3.14902305882353 3.17391652173913 3.17685533333333 3.17992772727273
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.18151689655172 3.20520064516129 3.21255033707865 3.23790677419355
##      0                1                2                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.27061290322581 3.27564461538461 3.30331903225806 3.30906956043956
##      0                2                1                2                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.31204066666667 3.34249450549451 3.345837 3.34925460674157
##      0                1                2        1                1
##      1                0                0        0                0
##       y_rate_lencm
## single 3.36873129032258 3.37228630434782 3.37228630434783 3.37591945054945
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.37963333333333 3.40143741935484 3.4093443956044 3.41342966666667
##      0                2                1               2                1
##      1                0                0               0                0
##       y_rate_lencm
## single 3.41760674157303 3.43840956521739 3.45178280898876 3.459899625
##      0                2                3                1           1
##      1                0                0                0           0
##       y_rate_lencm
## single 3.46684967741936 3.47108223529412 3.47619428571429 3.48102233333333
##      0                2                1                1                2
##      1                0                0                0                0
##       y_rate_lencm
## single 3.49100761363636 3.49468468085106 3.49955580645161 3.50453282608696
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.50961923076923 3.51481866666667 3.52013494382022 3.52013494382023
##      0                3                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.53226193548387 3.53759445652174 3.54304417582418 3.56496806451613
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.57065608695652 3.58241133333333 3.58848707865168 3.60989406593407
##      0                2                1                1                2
##      1                0                0                0                0
##       y_rate_lencm
## single 3.61620766666667 3.62266314606742 3.64331901098901 3.650004
##      0                2                1                2        1
##      1                0                0                0        0
##       y_rate_lencm
## single 3.67674395604396 3.69101528089887 3.69579258064516 3.70290260869565
##      0                2                2                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.7101689010989 3.71759666666667 3.7211920212766 3.72519134831461
##      0               2                1               1                1
##      1               0                0               0                0
##       y_rate_lencm
## single 3.72849870967742 3.74359384615384 3.74359384615385 3.751393
##      0                1                1                1        2
##      1                0                0                0        0
##       y_rate_lencm
## single 3.75936741573034 3.76902586956522 3.77701879120879 3.79354348314607
##      0                3                1                1                3
##      1                0                0                0                0
##       y_rate_lencm
## single 3.8020875 3.81826659574468 3.81898566666667 3.82661709677419
##      0         1                1                2                1
##      1         0                0                0                0
##       y_rate_lencm
## single 3.83514913043478 3.86189561797753 3.86821076086957 3.87121636363636
##      0                1                2                1                2
##      1                0                0                0                0
##       y_rate_lencm
## single 3.87729362637363 3.88657833333333 3.90127239130435 3.91071857142857
##      0                2                3                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.94034522727273 3.94414351648352 3.954171 3.97756846153846
##      0                1                1        2                1
##      1                0                0        0                0
##       y_rate_lencm
## single 3.99014774193548 3.99859988764045 4.00947409090909 4.02176366666667
##      0                1                1                1                2
##      1                0                0                0                0
##       y_rate_lencm
## single 4.03351891304348 4.04441835164835 4.06658054347826 4.06695202247191
##      0                2                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 4.11126824175824 4.13270380434783 4.1418485106383 4.16576543478261
##      0                1                1               1                1
##      1                0                0               0                0
##       y_rate_lencm
## single 4.17811813186813 4.19074533333333 4.21154307692308 4.22454166666667
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 4.258338 4.27200842696629 4.30618449438202 4.32593066666667
##      0        1                2                1                1
##      1        0                0                0                0
##       y_rate_lencm
## single 4.33107358695652 4.33599765957447 4.359727 4.36413521739131
##      0                1                1        1                1
##      1                0                0        0                0
##       y_rate_lencm
## single 4.39352333333333 4.47706483146067 4.562505 4.57921747252747
##      0                1                1        2                1
##      1                0                0        0                0
##       y_rate_lencm
## single 4.63779386138614 4.71291725274725 4.72781315217391 4.79393641304348
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 5.02388191011236 5.03565366666667 5.60487505617977 5.76316421052632
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 2.69602568181818 2.73408539325843 2.838892 2.87268833333333
##      0                1                1        1                2
##      1                0                0        0                0
##       y_rate_lencm
## single 2.90182310344827 2.94355161290323 2.97331786516854 2.97482010989011
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 2.97554673913043 3.00787366666667 3.04167 3.07546633333333
##      0                1                1       2                1
##      1                0                0       0                0
##       y_rate_lencm
## single 3.07623443181818 3.10926266666667 3.143059 3.17685533333333
##      0                1                1        2                1
##      1                0                0        0                0
##       y_rate_lencm
## single 3.17992772727273 3.1882565060241 3.21065166666667 3.21449215909091
##      0                1               1                1                1
##      1                0               0                0                0
##       y_rate_lencm
## single 3.244448 3.24905659090909 3.26154975903614 3.31204066666667
##      0        1                1                1                1
##      1        0                0                0                0
##       y_rate_lencm
## single 3.34249450549451 3.34925460674157 3.35632551724138 3.37228630434783
##      0                2                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.37591945054945 3.37963333333333 3.40534793478261 3.43840956521739
##      0                1                2                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.44276934065934 3.447226 3.46121068965517 3.47062346153846
##      0                1        2                1                1
##      1                0        0                0                0
##       y_rate_lencm
## single 3.47147119565217 3.48102233333333 3.48595887640449 3.49100761363636
##      0                1                2                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.50453282608696 3.51481866666667 3.52557204545455 3.54304417582418
##      0                1                4                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.548615 3.55431101123595 3.56013647727273 3.58241133333333
##      0        1                4                1                2
##      1        0                0                0                0
##       y_rate_lencm
## single 3.61620766666667 3.650004 3.65683921348314 3.65683921348315
##      0                5        3                1                1
##      1                0        0                0                0
##       y_rate_lencm
## single 3.67098103448276 3.68380033333333 3.70594275862069 3.7101689010989
##      0                1                1                2               2
##      1                0                0                0               0
##       y_rate_lencm
## single 3.71759666666667 3.77586620689655 3.78518933333333 3.8020875
##      0                2                1                4         1
##      1                0                0                0         0
##       y_rate_lencm
## single 3.8277195505618 3.83025111111111 3.83665193181818 3.84386868131868
##      0               1                1                1                1
##      1               0                0                0                0
##       y_rate_lencm
## single 3.852782 3.85932322580645 3.86189561797753 3.87121636363636
##      0        3                2                1                1
##      1        0                0                0                0
##       y_rate_lencm
## single 3.87729362637363 3.88657833333333 3.89607168539326 3.90578079545454
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.91071857142857 3.92037466666667 3.93024775280899 3.94414351648352
##      0                1                1                3                1
##      1                0                0                0                0
##       y_rate_lencm
## single 3.954171 3.96442382022472 3.96739565217391 3.97756846153846
##      0        2                2                1                1
##      1        0                0                0                0
##       y_rate_lencm
## single 3.98796733333333 4.02176366666667 4.03277595505618 4.04403852272727
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 4.04441835164835 4.05556 4.0778432967033 4.08935633333333
##      0                2       4               1                2
##      1                0       0               0                0
##       y_rate_lencm
## single 4.11126824175824 4.11316738636364 4.12097225806451 4.12315266666667
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 4.156949 4.16044517241379 4.1694802247191 4.17811813186813
##      0        2                1               1                1
##      1        0                0               0                0
##       y_rate_lencm
## single 4.22454166666667 4.23783235955056 4.258338 4.27839296703297
##      0                2                2        1                2
##      1                0                0        0                0
##       y_rate_lencm
## single 4.28598954545455 4.31181791208791 4.31720903225806 4.33525379310345
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 4.34991516129032 4.359727 4.37021551724138 4.39352333333333
##      0                1        2                1                2
##      1                0        0                0                0
##       y_rate_lencm
## single 4.42731966666667 4.44288876404494 4.461116 4.52870866666667
##      0                2                1        2                1
##      1                0                0        0                0
##       y_rate_lencm
## single 4.54502413793103 4.54541696629214 4.562505 4.59630133333333
##      0                1                1        3                2
##      1                0                0        0                0
##       y_rate_lencm
## single 4.63163386363636 4.64606736263736 4.663894 4.69769033333333
##      0                1                1        1                2
##      1                0                0        0                0
##       y_rate_lencm
## single 4.73532715909091 4.80445602272727 4.90046833333333 5.46817078651685
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 5.50880233333333
##      0                1
##      1                0
##       y_rate_lencm
## single 0.533333917808218 0.593292774725274 0.606671885245901 0.608334
##      0                 1                 1                 1        1
##      1                 0                 0                 0        0
##       y_rate_lencm
## single 0.62671771978022 0.639914180327869 0.642130333333333
##      0                1                 1                 1
##      1                0                 0                 0
##       y_rate_lencm
## single 0.642954634146341 0.643430192307692 0.651786428571428
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.660142664835164 0.668498901098901 0.675000739726027
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.679610190735695 0.685211373626374 0.687898119891008
##      0                 3                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.691667424657534 0.700000767123288 0.700655691056911
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.701923846153845 0.701923846153847 0.70255964673913
##      0                 1                 1                2
##      1                 0                 0                0
##       y_rate_lencm
## single 0.704473978201635 0.706398770491803 0.710280082417582
##      0                 1                 1                 2
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.712236776859504 0.714709344262295 0.716667452054795
##      0                 2                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.718636318681319 0.725000794520548 0.725853068181819
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.726992554945055 0.728995289256198 0.73100908839779
##      0                 1                 1                1
##      1                 0                 0                0
##       y_rate_lencm
## single 0.731330491803278 0.735348791208791 0.739641065573771
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.740300634920635 0.741667479452054 0.741870731707317
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.743886684782609 0.747951639344262 0.750000821917808
##      0                 1                 2                 2
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.752061263736264 0.756216298342541 0.756262213114755
##      0                 3                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.764572786885246 0.766599756097561 0.775000849315068
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.781423508287293 0.783085772357724 0.783334191780822
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.785486208791209 0.789504508196721 0.791667534246575
##      0                 1                 2                 2
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.793842445054945 0.795641198910081 0.796029338842975
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.797815081967213 0.800000876712328 0.801744538043478
##      0                 1                 2                 2
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.802198681318681 0.802198681318682 0.805631513513513
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.806125655737705 0.808334219178082 0.815033121546962
##      0                 2                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.816667561643835 0.817290831024931 0.818275353260869
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.821167107438016 0.821167107438017 0.822746803278688
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.825000904109588 0.825000904109589 0.826540760869565
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.83105737704918 0.833334246575342 0.835623626373626
##      0                6                 2                 1
##      1                0                 0                 0
##       y_rate_lencm
## single 0.837925619834711 0.841667589041095 0.845368773841962
##      0                 1                 1                 2
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.846304876033058 0.847678524590164 0.85000093150685
##      0                 1                 1                2
##      1                 0                 0                0
##       y_rate_lencm
## single 0.850993545706371 0.854684132231405 0.860692335164835
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.861944632152589 0.863285649867374 0.864299672131148
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.865515853658537 0.866667616438357 0.867867798913043 0.86788984
##      0                 2                 1                 2          1
##      1                 0                 0                 0          0
##       y_rate_lencm
## single 0.870232561307902 0.872610245901639 0.87500095890411
##      0                 1                 1                3
##      1                 0                 0                0
##       y_rate_lencm
## single 0.877404807692308 0.878520490463215 0.878520490463216
##      0                 4                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.881760718085106 0.882252348066298 0.885761043956043 0.88715375
##      0                 1                 1                 1          1
##      1                 0                 0                 0          0
##       y_rate_lencm
## single 0.889231393442623 0.89024487804878 0.89411728021978
##      0                 1                2                2
##      1                 0                0                0
##       y_rate_lencm
## single 0.895096348773842 0.902473516483516 0.908334328767124
##      0                 1                 2                 2
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.911672207084469 0.914163114754098 0.915861961325967
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.917460244565217 0.919185989010989 0.921718181818182
##      0                 1                 2                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.92247368852459 0.922473688524591 0.924264364640884
##      0                1                 2                 1
##      1                0                 0                 0
##       y_rate_lencm
## single 0.930784262295081 0.930784262295082 0.933334356164384
##      0                 1                 1                 2
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.938476694214876 0.941667698630137 0.942256467391305
##      0                 1                 2                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.944254697802198 0.952610934065935 0.953111852861035
##      0                 1                 1                 3
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.955715983606557 0.958334383561644 0.96096717032967
##      0                 3                 3                2
##      1                 0                 0                0
##       y_rate_lencm
## single 0.972337131147541 0.980647704918033 0.988958278688525
##      0                 1                 1                 2
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.994392115384616 0.997131487603306 0.997268852459016
##      0                 2                 3                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 1.00833443835616 1.01666778082192 1.02226925619835 1.02491054347826
##      0                1                2                2                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.02500112328767 1.03349560773481 1.0361732967033 1.04166780821918
##      0                3                1               1                1
##      1                0                0               0                0
##       y_rate_lencm
## single 1.04713229508197 1.04885172413793 1.06047413513514 1.08333452054795
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.10979851351351 1.13023803278688 1.14480436813187 1.14489825842697
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 0.506945 0.553782309782609 0.578168677685951 0.600000657534247
##      0        1                 1                 1                 1
##      1        0                 0                 0                 0
##       y_rate_lencm
## single 0.603306446280992 0.611685702479339 0.625000684931507
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.646458474114441 0.651786428571428 0.654746403269755 0.65700072
##      0                 1                 1                 1          1
##      1                 0                 0                 0          0
##       y_rate_lencm
## single 0.657658378378378 0.661232608695652 0.666667397260274
##      0                 1                 1                 2
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.670340495867769 0.681467049180328 0.694294239130435
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.698762027027027 0.703227325905292 0.703857520661157
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.706398770491803 0.70775700831025 0.708334109589041
##      0                 1                2                 1
##      1                 0                0                 0
##       y_rate_lencm
## single 0.710280082417582 0.712236776859504 0.713687932960894
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.714709344262295 0.716667452054794 0.719090461956522
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.721049836512261 0.721049836512262 0.72624143258427
##      0                 1                 1                1
##      1                 0                 0                0
##       y_rate_lencm
## single 0.728995289256198 0.737374545454545 0.73964106557377
##      0                 1                 2                1
##      1                 0                 0                0
##       y_rate_lencm
## single 0.747813895027625 0.747951639344262 0.750000821917808
##      0                 1                 1                 2
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.750113739837398 0.756216298342541 0.75831108033241 0.7604175
##      0                 1                 1                1         1
##      1                 0                 0                0         0
##       y_rate_lencm
## single 0.762489482288829 0.762512314049587 0.770777411444141
##      0                 1                 2                 2
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.770891570247934 0.779270826446282 0.781423508287293
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.791667534246575 0.79201379501385 0.793842445054945
##      0                 1                1                 2
##      1                 0                0                 0
##       y_rate_lencm
## single 0.801744538043478 0.804408595041323 0.810554917582418
##      0                 1                 1                 2
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.814436229508196 0.818911153846154 0.821167107438016
##      0                 1                 2                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.824139636871509 0.825000904109589 0.83105737704918
##      0                 1                 2                1
##      1                 0                 0                0
##       y_rate_lencm
## single 0.831837928176796 0.832543821138211 0.832543821138212
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.835623626373626 0.837080844686648 0.839367950819672
##      0                 1                 1                 2
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.840240331491713 0.841667589041095 0.841667589041097
##      0                 2                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.847678524590164 0.848642734806629 0.851336983695652
##      0                 1                 1                 2
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.852336098901099 0.853656702997275 0.857045138121547
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.858334273972602 0.858334273972604 0.861944632152589
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.864299672131148 0.865447541436464 0.866667616438357
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.867867798913043 0.870232561307902 0.871442644628098
##      0                 2                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.872610245901639 0.873849944751382 0.87500095890411
##      0                 2                 1                2
##      1                 0                 0                0
##       y_rate_lencm
## single 0.877404807692308 0.879821900826446 0.880920819672131
##      0                 1                 3                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.882252348066298 0.883334301369862 0.883334301369864
##      0                 2                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.884398614130435 0.885761043956043 0.887838810810811
##      0                 2                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.888201157024793 0.889231393442623 0.891667643835617
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.89266402173913 0.896580413223141 0.90000098630137
##      0                2                 2                1
##      1                0                 0                0
##       y_rate_lencm
## single 0.902473516483517 0.907459558011049 0.908334328767124
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.909194836956522 0.910829752747253 0.913338925619835
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.914973902439024 0.915861961325967 0.916667671232877
##      0                 1                 1                 3
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.919185989010989 0.921718181818182 0.922473688524591
##      0                 3                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.924264364640884 0.92500101369863 0.927542225274725
##      0                 1                2                 1
##      1                 0                0                 0
##       y_rate_lencm
## single 0.930097438016528 0.930784262295081 0.930784262295082
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.931459918699187 0.933334356164384 0.935898461538461
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.935898461538462 0.938476694214876 0.939841853932584
##      0                 1                 2                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.941069171270718 0.941667698630137 0.95000104109589
##      0                 1                 1                1
##      1                 0                 0                0
##       y_rate_lencm
## single 0.953111852861035 0.955715983606557 0.958334383561644
##      0                 3                 2                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.958787282608696 0.966667726027397 0.969687711171662
##      0                 1                 1                 3
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.972337131147541 0.974678784530386 0.975001068493151
##      0                 2                 1                 2
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.977679642857143 0.980372975206612 0.983081187845304
##      0                 3                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.983334410958905 0.986035879120879 0.988958278688525
##      0                 1                 2                 2
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.994392115384616 0.997268852459016 0.997403983739837
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 1.00000109589041 1.00274835164835 1.00283942779292 1.00833443835616
##      0                1                1                1                2
##      1                0                0                0                0
##       y_rate_lencm
## single 1.00837972826087 1.01666778082192 1.02220057377049 1.02770321525885
##      0                1                3                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.03064851239669 1.03333446575343 1.04166780821918 1.04189801104972
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.04452953296703 1.04686203252033 1.05256700272479 1.0525670027248
##      0                1                1                1               1
##      1                0                0                0               0
##       y_rate_lencm
## single 1.05544286885246 1.05578628099174 1.0612420054945 1.06666783561644
##      0                1                1               1                1
##      1                0                0               0                0
##       y_rate_lencm
## single 1.06914286103542 1.08868516393443 1.08930330578512 1.08993175
##      0                1                1                1          1
##      1                0                0                0          0
##       y_rate_lencm
## single 1.10302318681319 1.1136168852459 1.12192745901639 1.12500123287671
##      0                1               1                1                1
##      1                0               0                0                0
##       y_rate_lencm
## single 1.14166791780822 1.14795809917355 1.18195328804348 1.20661289256198
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.20994607734807 1.30000142465753
##      0                1                1
##      1                0                0
##       y_rate_lencm
## single 0.565119016393442 0.590050737704918 0.593292774725274
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.59836131147541 0.601649010989011 0.63471162601626
##      0                1                 1                1
##      1                0                 0                0
##       y_rate_lencm
## single 0.63682347107438 0.660142664835165 0.661232608695652
##      0                1                 1                 1
##      1                0                 0                 0
##       y_rate_lencm
## single 0.664845901639344 0.670340495867769 0.676855137362637
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.679610190735695 0.681467049180328 0.683334082191781
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.686028831521739 0.689777622950819 0.691667424657534
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.698088196721312 0.700000767123287 0.700000767123288
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.708334109589041 0.710825054347827 0.712761907356948
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.714709344262295 0.723019918032787 0.725000794520548
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.726992554945055 0.728995289256198 0.729337765667575
##      0                 2                 1                 2
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.731330491803278 0.733334136986301 0.737374545454545
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.741870731707317 0.745913623978202 0.747951639344262
##      0                 1                 2                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.750000821917808 0.754201553133516 0.75835674796748
##      0                 1                 1                2
##      1                 0                 0                0
##       y_rate_lencm
## single 0.762489482288829 0.764572786885246 0.766667506849315
##      0                 2                 2                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.768773736263736 0.772748594594594 0.773021104972376
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.774842764227643 0.779065340599455 0.78119393442623
##      0                 1                 2                1
##      1                 0                 0                0
##       y_rate_lencm
## single 0.785486208791209 0.787353269754768 0.789504508196721
##      0                 1                 1                 2
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.791667534246575 0.793479130434782 0.793842445054945
##      0                 3                 1                 4
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.797815081967214 0.802198681318681 0.803929128065395
##      0                 1                 1                 2
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.804408595041322 0.806125655737705 0.808334219178082
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.812217057220708 0.81278785123967 0.814436229508196
##      0                 1                1                 2
##      1                 0                0                 0
##       y_rate_lencm
## single 0.820504986376022 0.821167107438016 0.822746803278689
##      0                 2                 1                 2
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.825000904109588 0.825000904109589 0.826540760869565
##      0                 1                 2                 3
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.828792915531335 0.83105737704918 0.833334246575342
##      0                 1                5                 4
##      1                 0                0                 0
##       y_rate_lencm
## single 0.835623626373626 0.837080844686648 0.837080844686649
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.837925619834711 0.839367950819672 0.841667589041095
##      0                 2                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.843979862637362 0.845368773841962 0.846304876033057
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.847678524590164 0.85000093150685 0.852651428571428
##      0                 2                2                 1
##      1                 0                0                 0
##       y_rate_lencm
## single 0.854684132231405 0.855989098360656 0.861944632152588
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.863176621621622 0.864299672131148 0.866667616438355
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.867867798913043 0.870232561307902 0.872610245901639
##      0                 1                 1                 3
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.87500095890411 0.876133206521739 0.877404807692308
##      0                1                 1                 2
##      1                0                 0                 0
##       y_rate_lencm
## single 0.886808419618529 0.889231393442623 0.891667643835617
##      0                 2                 1                 4
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.89266402173913 0.895096348773843 0.896580413223141
##      0                2                 1                 1
##      1                0                 0                 0
##       y_rate_lencm
## single 0.897541967213115 0.90000098630137 0.902473516483516
##      0                 1                2                 1
##      1                 0                0                 0
##       y_rate_lencm
## single 0.903384277929156 0.905852540983607 0.908334328767124
##      0                 2                 2                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.910829752747252 0.910829752747253 0.911672207084469
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.914163114754098 0.914973902439024 0.917460244565217
##      0                 4                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.919185989010989 0.919960136239781 0.922473688524591
##      0                 2                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.925725652173913 0.927542225274726 0.928248065395096
##      0                 1                 1                 2
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.930784262295082 0.932666767955802 0.933334356164384
##      0                 3                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.935898461538462 0.936535994550408 0.939094836065574
##      0                 2                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.939702926829269 0.944823923705722 0.947405409836066
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.95000104109589 0.953111852861035 0.955715983606557
##      0                1                 1                 1
##      1                0                 0                 0
##       y_rate_lencm
## single 0.958334383561644 0.96096717032967 0.969687711171661
##      0                 1                1                 1
##      1                 0                0                 0
##       y_rate_lencm
## single 0.972337131147541 0.975318097826087 0.977679642857143
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.980647704918033 0.980647704918034 0.983828571428571
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.988958278688524 0.988958278688525 0.994392115384616
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.997268852459016 1.00000109589041 1.00022571428571
##      0                 1                1                1
##      1                 0                0                0
##       y_rate_lencm
## single 1.01110458791209 1.01389 1.01666778082192 1.02491054347826
##      0                1       1                1                1
##      1                0       0                0                0
##       y_rate_lencm
## single 1.02500112328767 1.02770321525886 1.02781706043956 1.03317595108696
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.03882172131148 1.04166780821918 1.04427907356948 1.04686203252033
##      0                2                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.04740702479339 1.04970676630435 1.0525670027248 1.05544286885246
##      0                1                1               1                2
##      1                0                0               0                0
##       y_rate_lencm
## single 1.06375344262295 1.06666783561644 1.06869486486486 1.06959824175824
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.07254479338843 1.08037459016393 1.09466695054945 1.10000120547945
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.10606181818182 1.12500123287671 1.14166791780822 1.14480436813187
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 0.896902692307694 1.00274835164835 1.04885172413793
##      0                 1                1                1
##      1                 0                0                0
##       y_rate_lencm
## single 1.15715706521739 1.16198629213483 1.16987307692308 1.18287166666667
##      0                1                1                2                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.19616235955056 1.26451449438202 1.27553903225806 1.35552684782609
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.36704269662921 1.36704269662922 1.37675589473684 1.38257727272727
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.38858847826087 1.39140223404255 1.4063635483871 1.42165010869565
##      0                1                1               1                1
##      1                0                0               0                0
##       y_rate_lencm
## single 1.42457962025317 1.43906967741935 1.44244144329897 1.45611861702128
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.47069758241758 1.47280863157895 1.48777336956522 1.4891509375
##      0                3                1                1            1
##      1                0                0                0            0
##       y_rate_lencm
## single 1.50412252747253 1.520835 1.56989419354839 1.5720991011236
##      0                3        3                1               1
##      1                0        0                0               0
##       y_rate_lencm
## single 1.57451152941176 1.58555138297872 1.60087894736842 1.60260032258064
##      0                1                1                1                2
##      1                0                0                0                0
##       y_rate_lencm
## single 1.60439736263736 1.62001989130435 1.64909819277108 1.65026776595745
##      0                2                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.65308152173913 1.65602033333334 1.67124725274725 1.67462730337079
##      0                1                1                2                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.68262595744681 1.68981666666667 1.7046721978022 1.70880337078652
##      0                2                2               1                1
##      1                0                0               0                0
##       y_rate_lencm
## single 1.710939375 1.7192047826087 1.723613 1.72822159090909
##      0           1               1        3                1
##      1           0               0        0                0
##       y_rate_lencm
## single 1.73809714285714 1.7426234375 1.74297943820225 1.75226641304348
##      0                1            1                1                1
##      1                0            0                0                0
##       y_rate_lencm
## single 1.76096684210526 1.76613096774193 1.77152208791209 1.7743075
##      0                1                1                3         1
##      1                0                0                0         0
##       y_rate_lencm
## single 1.77715550561798 1.78532804347826 1.7945853 1.79883709677419
##      0                2                1         1                2
##      1                0                0         0                0
##       y_rate_lencm
## single 1.80494703296703 1.81133157303371 1.81838967391304 1.81838967391305
##      0                1                1                3                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.825002 1.83154322580645 1.83191488636364 1.83837197802198
##      0        1                1                1                4
##      1        0                0                0                0
##       y_rate_lencm
## single 1.84441691489362 1.84550764044944 1.85145130434783 1.85879833333333
##      0                2                1                1                5
##      1                0                0                0                0
##       y_rate_lencm
## single 1.86043893203884 1.86647931818182 1.8693596875 1.87179692307692
##      0                1                2            1                2
##      1                0                0            0                0
##       y_rate_lencm
## single 1.88451293478261 1.88903715789474 1.89259466666666 1.89259466666667
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.90104375 1.90522186813187 1.9138597752809 1.91757456521739
##      0          1                1               2                3
##      1          0                0               0                0
##       y_rate_lencm
## single 1.926391 1.92966161290323 1.93560818181818 1.93864681318681
##      0        1                1                1                2
##      1        0                0                0                0
##       y_rate_lencm
## single 1.9414914893617 1.94803584269663 1.95063619565217 1.97207175824176
##      0               1                2                1                1
##      1               0                0                0                0
##       y_rate_lencm
## single 1.97384968085106 1.97551762886598 1.98221191011236 1.98369782608696
##      0                1                1                1                6
##      1                0                0                0                0
##       y_rate_lencm
## single 2.0054967032967 2.01675945652174 2.01710747368421 2.02778
##      0               3                3                1       3
##      1               0                0                0       0
##       y_rate_lencm
## single 2.03856606382979 2.03892164835165 2.05056404494382 2.0594640625
##      0                1                1                3            2
##      1                0                0                0            0
##       y_rate_lencm
## single 2.06048612903226 2.06157633333333 2.07234659340659 2.08114263157895
##      0                2                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 2.0828827173913 2.10328244680851 2.10577153846154 2.13501836538461
##      0               1                1                1                1
##      1               0                0                0                0
##       y_rate_lencm
## single 2.13919648351648 2.14299477272727 2.14900597826087 2.17262142857143
##      0                2                3                3                2
##      1                0                0                0                0
##       y_rate_lencm
## single 2.18726831460674 2.19131064516129 2.19676166666667 2.20604637362637
##      0                1                1                2                1
##      1                0                0                0                0
##       y_rate_lencm
## single 2.20604637362638 2.22144438202247 2.22401677419355 2.24668806818182
##      0                2                1                1                2
##      1                0                0                0                0
##       y_rate_lencm
## single 2.24819086956522 2.26435433333333 2.27289626373626 2.27289626373627
##      0                1                2                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 2.2812525 2.28979651685393 2.30632120879121 2.31431413043478
##      0         2                1                2                4
##      1         0                0                0                0
##       y_rate_lencm
## single 2.32213516129032 2.331947 2.34737576086957 2.35814865168539
##      0                1        2                1                1
##      1                0        0                0                0
##       y_rate_lencm
## single 2.3621479787234 2.3731710989011 2.37739724137931 2.38043739130435
##      0               1               1                1                2
##      1               0               0                0                0
##       y_rate_lencm
## single 2.40659604395604 2.41349902173913 2.44656065217391 2.45295967741935
##      0                2                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 2.4796222826087 2.50687087912088 2.57372076923077 2.57880717391304
##      0               1                1                1                1
##      1               0                0                0                0
##       y_rate_lencm
## single 2.60714571428571 2.61186880434782 2.61649032258065 2.64057065934066
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 2.65337170212766 2.66991033333333 2.7408454945055 2.76515454545455
##      0                1                1               1                1
##      1                0                0               0                0
##       y_rate_lencm
## single 2.78002096774194 2.93797670454545 2.97554673913043 3.51481866666667
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single -0.136704269662921 0.200549670329668 0.628170978260871
##      0                  1                 1                 1
##      1                  0                 0                 0
##       y_rate_lencm
## single 0.760417500000001 0.835623626373626 0.888577752808987
##      0                 1                 2                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.969323406593406 1.01389 1.10302318681319 1.1278102247191
##      0                 1       1                1               1
##      1                 0       0                0               0
##       y_rate_lencm
## single 1.16489489361702 1.17742064516129 1.18287166666667 1.20329802197802
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.23206886075949 1.23672296703297 1.27014791208791 1.29432765957447
##      0                1                1                2                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.30357285714286 1.3224652173913 1.3369978021978 1.34095129032258
##      0                1               2               3                1
##      1                0               0               0                0
##       y_rate_lencm
## single 1.35904404255319 1.38858847826087 1.40384769230769 1.4295849
##      0                2                1                3         1
##      1                0                0                0         0
##       y_rate_lencm
## single 1.45170613636364 1.47069758241758 1.47177580645161 1.48627056818182
##      0                1                3                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.50335413793103 1.50412252747253 1.520835 1.53718806451613
##      0                1                3        3                1
##      1                0                0        0                0
##       y_rate_lencm
## single 1.55187244897959 1.57097241758242 1.58695826086956 1.58842766666667
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.60439736263736 1.61245156626506 1.6158871875 1.61790957446808
##      0                1                1            1                1
##      1                0                0            0                0
##       y_rate_lencm
## single 1.622224 1.6353064516129 1.63782230769231 1.64011617647059
##      0        1               1                3                1
##      1        0               0                0                0
##       y_rate_lencm
## single 1.64045123595506 1.65308152173913 1.67124725274725 1.68981666666667
##      0                1                1               11                3
##      1                0                0                0                0
##       y_rate_lencm
## single 1.7046721978022 1.71498414893617 1.73809714285714 1.7426234375
##      0               1                1                3            1
##      1               0                0                0            0
##       y_rate_lencm
## single 1.74297943820224 1.75226641304348 1.75740933333333 1.77152208791209
##      0                1                1                2                3
##      1                0                0                0                0
##       y_rate_lencm
## single 1.77715550561798 1.78532804347826 1.79120566666667 1.79883709677419
##      0                2                2                1                2
##      1                0                0                0                0
##       y_rate_lencm
## single 1.80494703296703 1.81205872340426 1.81838967391304 1.83837197802198
##      0                3                1                2                4
##      1                0                0                0                0
##       y_rate_lencm
## single 1.85879833333333 1.87179692307692 1.88451293478261 1.89259466666666
##      0                1                1                2                2
##      1                0                0                0                0
##       y_rate_lencm
## single 1.89259466666667 1.90522186813187 1.90913329787234 1.92105473684211
##      0                1                2                2                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.926391 1.93560818181818 1.93864681318681 1.95063619565217
##      0        2                1                4                2
##      1        0                0                0                0
##       y_rate_lencm
## single 1.96018733333333 1.98369782608696 1.99398366666667 2.0054967032967
##      0                1                2                2               2
##      1                0                0                0               0
##       y_rate_lencm
## single 2.00549670329671 2.01675945652174 2.02778 2.03892164835165
##      0                1                2       4                1
##      1                0                0       0                0
##       y_rate_lencm
## single 2.03930147727273 2.06157633333333 2.06157633333334 2.07234659340659
##      0                1                1                1                6
##      1                0                0                0                0
##       y_rate_lencm
## single 2.08474011235955 2.091148125 2.09319225806452 2.09537266666667
##      0                1           1                1                2
##      1                0           0                0                0
##       y_rate_lencm
## single 2.09770344827586 2.10577153846154 2.11054653061225 2.11594434782609
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 2.12589838709677 2.129169 2.14900597826087 2.16799882978723
##      0                2        4                1                1
##      1                0        0                0                0
##       y_rate_lencm
## single 2.17262142857143 2.18726831460674 2.19131064516129 2.19676166666666
##      0                4                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 2.20604637362637 2.21212363636364 2.21512923913044 2.22144438202247
##      0                1                1                1                2
##      1                0                0                0                0
##       y_rate_lencm
## single 2.23947131868132 2.27289626373626 2.27289626373627 2.2812525
##      0                1                1                1         1
##      1                0                0                0         0
##       y_rate_lencm
## single 2.28942903225806 2.30632120879121 2.31431413043478 2.34737576086956
##      0                1                2                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 2.34737576086957 2.35367321428571 2.3731710989011 2.38043739130435
##      0                1                1               1                1
##      1                0                0               0                0
##       y_rate_lencm
## single 2.38754741935484 2.39953966666667 2.40659604395604 2.41349902173913
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 2.42650078651685 2.42686436170213 2.4396728125 2.44002098901099
##      0                1                1            1                1
##      1                0                0            0                0
##       y_rate_lencm
## single 2.44656065217391 2.44656065217392 2.44732068965517 2.47344593406593
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 2.47344593406594 2.4796222826087 2.50687087912088 2.5293887368421
##      0                1               1                3               1
##      1                0               0                0               0
##       y_rate_lencm
## single 2.57372076923077 2.57880717391304 2.59738112359551 2.61186880434783
##      0                3                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 2.61649032258065 2.77129933333333 2.80243752808989 2.81023858695652
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 2.87454527472528 2.91084548387097 2.97695361702128 3.04167
##      0                1                1                1       1
##      1                0                0                0       0
##       y_rate_lencm
## single 0.523298064516127 0.98118387096774 0.991848913043481
##      0                 1                1                 1
##      1                 0                0                 0
##       y_rate_lencm
## single 1.00274835164835 1.0361732967033 1.10302318681319 1.15715706521739
##      0                1               1                1                1
##      1                0               0                0                0
##       y_rate_lencm
## single 1.20329802197802 1.216668 1.22328032608696 1.25634195652174
##      0                2        1                1                1
##      1                0        0                0                0
##       y_rate_lencm
## single 1.27014791208791 1.27888397727273 1.29432765957447 1.3224652173913
##      0                1                1                1               1
##      1                0                0                0               0
##       y_rate_lencm
## single 1.32246521739131 1.33286662921348 1.3369978021978 1.35185333333333
##      0                1                1               2                1
##      1                0                0               0                0
##       y_rate_lencm
## single 1.38858847826087 1.42165010869565 1.48777336956522 1.50412252747253
##      0                1                2                3                2
##      1                0                0                0                0
##       y_rate_lencm
## single 1.50448193548387 1.520835 1.53718806451613 1.53792303370787
##      0                1        2                2                1
##      1                0        0                0                0
##       y_rate_lencm
## single 1.55319319148936 1.55463133333334 1.55704535714286 1.56989419354839
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.58695826086956 1.58842766666667 1.61790957446808 1.622224
##      0                1                2                1        1
##      1                0                0                0        0
##       y_rate_lencm
## single 1.6353064516129 1.63782230769231 1.64045123595506 1.64320103448276
##      0               1                3                1                1
##      1               0                0                0                0
##       y_rate_lencm
## single 1.64498479591837 1.65308152173913 1.65602033333334 1.66801258064516
##      0                1                3                1                2
##      1                0                0                0                0
##       y_rate_lencm
## single 1.67124725274725 1.67462730337079 1.68981666666667 1.7046721978022
##      0                3                1                1               2
##      1                0                0                0               0
##       y_rate_lencm
## single 1.70880337078652 1.71920478260869 1.7192047826087 1.723613
##      0                1                1               1        1
##      1                0                0               0        0
##       y_rate_lencm
## single 1.72894926315789 1.73342483870968 1.73809714285714 1.75226641304348
##      0                1                1                3                2
##      1                0                0                0                0
##       y_rate_lencm
## single 1.76613096774193 1.76613096774194 1.77152208791209 1.79120566666667
##      0                2                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.79298442105263 1.79883709677419 1.80494703296703 1.81133157303371
##      0                1                4                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.81205872340426 1.81838967391304 1.825002 1.83154322580645
##      0                3                1        1                1
##      1                0                0        0                0
##       y_rate_lencm
## single 1.83837197802198 1.84441691489362 1.84550764044944 1.85145130434783
##      0                1                1                1                2
##      1                0                0                0                0
##       y_rate_lencm
## single 1.86424935483871 1.87179692307692 1.88451293478261 1.89695548387097
##      0                1                1                2                2
##      1                0                0                0                0
##       y_rate_lencm
## single 1.90522186813187 1.90913329787234 1.91757456521739 1.926391
##      0                1                1                4        1
##      1                0                0                0        0
##       y_rate_lencm
## single 1.92966161290323 1.9414914893617 1.95063619565217 1.95063619565218
##      0                1               1                2                1
##      1                0               0                0                0
##       y_rate_lencm
## single 1.96018733333333 1.96236774193548 1.97207175824176 1.98221191011236
##      0                2                3                6                2
##      1                0                0                0                0
##       y_rate_lencm
## single 1.98369782608696 2.0054967032967 2.01599058139535 2.01675945652174
##      0                2               1                1                1
##      1                0               0                0                0
##       y_rate_lencm
## single 2.02778 2.03892164835165 2.04982108695652 2.05056404494382
##      0       2                2                4                1
##      1       0                0                0                0
##       y_rate_lencm
## single 2.06157633333333 2.07234659340659 2.08474011235955 2.09319225806452
##      0                1                1                1                3
##      1                0                0                0                0
##       y_rate_lencm
## single 2.10328244680851 2.10577153846154 2.11594434782608 2.12589838709677
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 2.129169 2.13564063829787 2.13919648351648 2.13919648351649
##      0        1                1                3                1
##      1        0                0                0                0
##       y_rate_lencm
## single 2.14900597826087 2.15860451612903 2.17262142857143 2.18206760869565
##      0                1                1                2                1
##      1                0                0                0                0
##       y_rate_lencm
## single 2.18726831460674 2.19676166666667 2.21512923913044 2.23271521276596
##      0                2                1                2                2
##      1                0                0                0                0
##       y_rate_lencm
## single 2.24819086956522 2.2495684375 2.25672290322581 2.26435433333333
##      0                1            1                3                1
##      1                0            0                0                0
##       y_rate_lencm
## single 2.2812525 2.28942903225806 2.31431413043479 2.331947
##      0         1                2                1        1
##      1         0                0                0        0
##       y_rate_lencm
## single 2.3372832631579 2.33974615384615 2.35814865168539 2.36574333333333
##      0               1                1                1                1
##      1               0                0                0                0
##       y_rate_lencm
## single 2.36967313953488 2.3731710989011 2.38043739130435 2.39450617021277
##      0                1               3                1                1
##      1                0               0                0                0
##       y_rate_lencm
## single 2.40659604395604 2.41349902173913 2.4202535483871 2.42686436170213
##      0                1                2               1                1
##      1                0                0               0                0
##       y_rate_lencm
## single 2.44002098901099 2.45295967741935 2.46067685393258 2.46713233333333
##      0                1                1                1                2
##      1                0                0                0                0
##       y_rate_lencm
## single 2.4796222826087 2.48863909090909 2.49485292134831 2.54029582417582
##      0               1                1                1                3
##      1               0                0                0                0
##       y_rate_lencm
## single 2.54574554347826 2.56320505617978 2.56852133333333 2.57372076923077
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 2.5818826744186 2.58865531914894 2.60231766666667 2.62212931034483
##      0               1                1                1                1
##      1               0                0                0                0
##       y_rate_lencm
## single 2.63155719101123 2.63155719101124 2.64057065934066 2.6739956043956
##      0                1                1                1               1
##      1                0                0                0               0
##       y_rate_lencm
## single 2.67799206521739 2.70370666666667 2.737503 2.74411532608696
##      0                1                1        1                1
##      1                0                0        0                0
##       y_rate_lencm
## single 2.77129933333333 2.80509566666667 2.8433002173913 2.84543322580645
##      0                1                1               1                1
##      1                0                0               0                0
##       y_rate_lencm
## single 2.87268833333334 2.90797021978022 2.940281 2.97554673913043
##      0                1                1        1                1
##      1                0                0        0                0
##       y_rate_lencm
## single 3.14085489130435
##      0                1
##      1                0
##       y_rate_lencm
## single 0.578578532608697 0.668498901098901 0.670475645161289
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.688997071823205 0.698088196721312 0.705542010309278
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.735887903225806 0.752061263736264 0.7604175 0.78982591160221
##      0                 1                 1         1                2
##      1                 0                 0         0                0
##       y_rate_lencm
## single 0.793479130434782 0.818911153846154 0.822072972972973
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.823435524861879 0.835623626373626 0.840240331491713
##      0                 2                 3                 2
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.852336098901098 0.873849944751382 0.880920819672131
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.885761043956043 0.890654751381215 0.893686546391752
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.897541967213116 0.904280270270271 0.914163114754098
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.915771612903225 0.919185989010989 0.925725652173913
##      0                 1                 2                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.927140053475936 0.930784262295081 0.932124677419355
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.935898461538461 0.94106917127072 0.942256467391305
##      0                 2                1                 1
##      1                 0                0                 0
##       y_rate_lencm
## single 0.951583910614524 0.952610934065935 0.958787282608696
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.962336271186441 0.964026557377049 0.969323406593406
##      0                 1                 1                 2
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.970046108108109 0.970745744680851 0.975318097826088
##      0                 1                 1                 2
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.975936898395722 0.980647704918031 0.980647704918034
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.991848913043478 0.996991833333334 0.997268852459016
##      0                 1                 1                 2
##      1                 0                 0                 0
##       y_rate_lencm
## single 1.00274835164835 1.00828839779006 1.00837972826087 1.00846812834225
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.01389 1.01937048648649 1.01946082417582 1.02473374331551
##      0       3                1                1                1
##      1       0                0                0                0
##       y_rate_lencm
## single 1.02509320441989 1.03051114754098 1.03581194594595 1.04713229508197
##      0                1                3                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.05288576923077 1.05726497326203 1.05797217391304 1.05945808988764
##      0                2                1                3                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.06294919354839 1.06375344262295 1.0645845 1.06869486486486
##      0                1                2         1                2
##      1                0                0         0                0
##       y_rate_lencm
## single 1.06959824175824 1.07450298913043 1.07550762430939 1.08631071428571
##      0                2                2                1                3
##      1                0                0                0                0
##       y_rate_lencm
## single 1.09103380434783 1.09231243093923 1.09699573770492 1.10756461956522
##      0                1                2                1                3
##      1                0                0                0                0
##       y_rate_lencm
## single 1.11973565934066 1.12409543478261 1.1259220441989 1.12711629441624
##      0                3                1               1                1
##      1                0                0               0                0
##       y_rate_lencm
## single 1.1278102247191 1.13023803278688 1.13217716666667 1.1344607027027
##      0               1                1                1               2
##      1               0                0                0               0
##       y_rate_lencm
## single 1.13644813186813 1.14062625 1.14471451612903 1.14685918032787
##      0                4          1                1                3
##      1                0          0                0                0
##       y_rate_lencm
## single 1.15715706521739 1.16348032786885 1.16734362162162 1.16987307692308
##      0                1                2                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.17112427807487 1.17248731843575 1.17368788043478 1.17742064516129
##      0                1                1                3                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.18287166666667 1.18658554945055 1.19021869565217 1.19091841269841
##      0                1                1                2                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.19314127071823 1.19377370967742 1.19672262295082 1.20329802197802
##      0                2                1                2                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.20365550802139 1.20674951086956 1.20994607734807 1.21343218085106
##      0                1                2                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.2200104945055 1.22328032608696 1.22647983870968 1.2267508839779
##      0               1                3                3               2
##      1               0                0                0               0
##       y_rate_lencm
## single 1.22996491803279 1.23310945945946 1.23356616666667 1.23618673796791
##      0                3                2                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.23672296703297 1.23981114130435 1.24283290322581 1.24658606557377
##      0                1                2                1                3
##      1                0                0                0                0
##       y_rate_lencm
## single 1.25046433333333 1.25245235294118 1.25343543956044 1.27444273743017
##      0                1                1                3                2
##      1                0                0                0                0
##       y_rate_lencm
## single 1.2849835828877 1.28940358695652 1.29644950819672 1.2988752972973
##      0               1                1                3               1
##      1               0                0                0               0
##       y_rate_lencm
## single 1.30593440217391 1.30824516129032 1.30842787709497 1.31531675675676
##      0                1                2                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.318057 1.32028532967033 1.3224652173913 1.32757972375691
##      0        1                1               2                1
##      1        0                0               0                0
##       y_rate_lencm
## single 1.3369978021978 1.3389960326087 1.34241301675978 1.35004604278075
##      0               1               1                1                1
##      1               0               0                0                0
##       y_rate_lencm
## single 1.35185333333333 1.35380687861272 1.35552684782609 1.37205766304348
##      0                1                1                1                2
##      1                0                0                0                0
##       y_rate_lencm
## single 1.37799414364641 1.37955524590164 1.38713521978022 1.40384769230769
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.40511929347826 1.41160375690608 1.41279754098361 1.41396551351351
##      0                1                2                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.44603983606557 1.49590327868852 1.51243259668508 1.520835
##      0                1                1                1        1
##      1                0                0                0        0
##       y_rate_lencm
## single 1.65308152173913 1.68795972527473
##      0                1                1
##      1                0                0
##       y_rate_lencm
## single 0.551511593406594 0.598361311475409 0.68682870967742
##      0                 1                 1                1
##      1                 0                 0                0
##       y_rate_lencm
## single 0.698088196721312 0.713687932960894 0.718636318681318
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.756216298342541 0.768594032258064 0.768773736263735
##      0                 2                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.776948315217392 0.778101627906975 0.784430684210527
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.78982591160221 0.801300161290321 0.811112 0.814436229508198
##      0                1                 1        1                 2
##      1                0                 0        0                 0
##       y_rate_lencm
## single 0.818911153846155 0.822072972972972 0.83105737704918
##      0                 1                 1                2
##      1                 0                 0                0
##       y_rate_lencm
## single 0.835623626373626 0.840240331491713 0.843071576086956
##      0                 2                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.85035935483871 0.861806499999999 0.864299672131148
##      0                1                 1                 1
##      1                0                 0                 0
##       y_rate_lencm
## single 0.86904857142857 0.869048571428572 0.880920819672131
##      0                1                 1                 3
##      1                0                 0                 0
##       y_rate_lencm
## single 0.89266402173913 0.90428027027027 0.909194836956522
##      0                1                1                 1
##      1                0                0                 0
##       y_rate_lencm
## single 0.910782542372881 0.924264364640884 0.925725652173912
##      0                 1                 2                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.925725652173914 0.930784262295081 0.934591340782123
##      0                 1                 2                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.941069171270718 0.942256467391305 0.957873977900553
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.960527368421053 0.964026557377051 0.970046108108109
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.974678784530386 0.975318097826087 0.975318097826088
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.975936898395722 0.980647704918034 0.98603587912088
##      0                 1                 1                1
##      1                 0                 0                0
##       y_rate_lencm
## single 0.99148359116022 0.991848913043478 0.992202513368983
##      0                1                 3                 1
##      1                0                 0                 0
##       y_rate_lencm
## single 0.997268852459016 0.99753693548387 1.00274835164835
##      0                 5                1                1
##      1                 0                0                0
##       y_rate_lencm
## single 1.00292902702703 1.00828839779006 1.01946082417582 1.03051114754098
##      0                1                2                1                2
##      1                0                0                0                0
##       y_rate_lencm
## single 1.03581194594595 1.0361732967033 1.04189801104972 1.04713229508197
##      0                1               3                2                1
##      1                0               0                0                0
##       y_rate_lencm
## single 1.04768633333333 1.05288576923077 1.05726497326203 1.05870281767956
##      0                3                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.06294919354839 1.06375344262295 1.06782031914894 1.06959824175824
##      0                1                1                1                2
##      1                0                0                0                0
##       y_rate_lencm
## single 1.07930225806452 1.08037459016393 1.08148266666667 1.08513632432432
##      0                1                4                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.08631071428571 1.09103380434783 1.09565532258065 1.1001785106383
##      0                2                2                1               1
##      1                0                0                0               0
##       y_rate_lencm
## single 1.10302318681319 1.10606181818182 1.10756461956522 1.11200838709677
##      0                1                1                1                2
##      1                0                0                0                0
##       y_rate_lencm
## single 1.1136168852459 1.11973565934066 1.12409543478261 1.13023803278688
##      0               1                1                3                1
##      1               0                0                0                0
##       y_rate_lencm
## single 1.1344607027027 1.13644813186813 1.13859304812834 1.14272685082873
##      0               2                2                2                1
##      1               0                0                0                0
##       y_rate_lencm
## single 1.14907533333333 1.15715706521739 1.15953165745856 1.16106758064516
##      0                1                2                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.16348032786885 1.16734362162162 1.16987307692308 1.1763364640884
##      0                1                2                2               2
##      1                0                0                0               0
##       y_rate_lencm
## single 1.17742064516129 1.18010147540984 1.18658554945055 1.19021869565217
##      0                2                4                1                2
##      1                0                0                0                0
##       y_rate_lencm
## single 1.19377370967742 1.19672262295082 1.19725308510638 1.19976983333333
##      0                2                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.2133437704918 1.216668 1.21992112299465 1.22001049450549
##      0               1        2                1                2
##      1               0        0                0                0
##       y_rate_lencm
## single 1.22647983870968 1.2267508839779 1.22703732954545 1.22996491803279
##      0                1               2                1                4
##      1                0               0                0                0
##       y_rate_lencm
## single 1.23310945945946 1.24045759776536 1.24355569060774 1.25343543956044
##      0                1                1                1                4
##      1                0                0                0                0
##       y_rate_lencm
## single 1.26320721311475 1.2673625 1.2771653038674 1.27982836065574
##      0                1         1               1                1
##      1                0         0               0                0
##       y_rate_lencm
## single 1.2849835828877 1.28940358695652 1.30357285714286 1.30593440217391
##      0               1                1                3                1
##      1               0                0                0                0
##       y_rate_lencm
## single 1.31077491712707 1.32028532967033 1.3224652173913 1.3275797237569
##      0                1                1               2               1
##      1                0                0               0               0
##       y_rate_lencm
## single 1.32969180327869 1.3369978021978 1.33899603260869 1.34438453038674
##      0                1               4                1                2
##      1                0               0                0                0
##       y_rate_lencm
## single 1.35552684782609 1.36118933701658 1.3687515 1.37042274725275
##      0                1                1         1                1
##      1                0                0         0                0
##       y_rate_lencm
## single 1.37675589473684 1.37955524590164 1.38713521978022 1.39617639344262
##      0                1                2                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.40384769230769 1.40511929347826 1.41279754098361 1.42056016483516
##      0                1                1                2                2
##      1                0                0                0                0
##       y_rate_lencm
## single 1.42941868852459 1.47069758241758 1.49446213872832 1.49562779005525
##      0                2                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.53754747252747 1.55463133333333 1.56989419354839 1.57900901639344
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.59645662983425 1.61895338709677 1.67124725274725 1.95063619565217
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 0.710825054347826 0.752061263736264 0.764572786885246
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.78982591160221 0.824859661016949 0.826540760869565
##      0                1                 1                 2
##      1                0                 0                 0
##       y_rate_lencm
## single 0.83105737704918 0.835623626373626 0.838514432432432
##      0                1                 1                 1
##      1                0                 0                 0
##       y_rate_lencm
## single 0.840240331491713 0.859602391304348 0.878704666666667
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.885761043956043 0.887838810810809 0.897541967213116
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.919185989010989 0.934591340782123 0.952610934065935
##      0                 3                 1                 2
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.953604648648648 0.957873977900553 0.958787282608695
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_lencm
## single 0.980647704918031 0.981183870967742 0.98603587912088
##      0                 1                 1                1
##      1                 0                 0                0
##       y_rate_lencm
## single 0.991848913043478 0.997268852459016 1.00828839779006
##      0                 2                 4                1
##      1                 0                 0                0
##       y_rate_lencm
## single 1.00837972826087 1.02509320441989 1.03078816666667 1.0361732967033
##      0                3                1                1               1
##      1                0                0                0               0
##       y_rate_lencm
## single 1.04144135869565 1.04713229508197 1.05225340540541 1.05797217391304
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.05870281767956 1.06294919354839 1.06869486486486 1.06959824175824
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.07450298913043 1.08037459016393 1.08513632432432 1.08631071428571
##      0                2                2                1                3
##      1                0                0                0                0
##       y_rate_lencm
## single 1.09103380434783 1.09231243093923 1.09699573770492 1.09838083333333
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.10302318681319 1.10756461956522 1.11200838709677 1.11973565934066
##      0                1                2                1                2
##      1                0                0                0                0
##       y_rate_lencm
## single 1.12409543478261 1.1283614516129 1.13850217877095 1.13859304812834
##      0                1               1                2                1
##      1                0               0                0                0
##       y_rate_lencm
## single 1.14062625 1.14272685082873 1.14685918032787 1.15090216216216
##      0          3                2                2                3
##      1          0                0                0                0
##       y_rate_lencm
## single 1.15715706521739 1.15953165745856 1.16348032786885 1.16734362162162
##      0                2                1                2                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.16987307692308 1.17368788043478 1.18010147540984 1.18658554945055
##      0                1                1                3                5
##      1                0                0                0                0
##       y_rate_lencm
## single 1.19021869565217 1.19377370967742 1.19672262295082 1.20022654054054
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.20329802197802 1.20674951086956 1.20994607734807 1.2133437704918
##      0                1                2                1               4
##      1                0                0                0               0
##       y_rate_lencm
## single 1.216668 1.22001049450549 1.22996491803279 1.23618673796791
##      0        3                2                2                1
##      1        0                0                0                0
##       y_rate_lencm
## single 1.23672296703297 1.23981114130435 1.24658606557377 1.24742646067416
##      0                1                5                2                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.25046433333333 1.25343543956044 1.25634195652174 1.26320721311475
##      0                1                4                2                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.2673625 1.27014791208791 1.27287277173913 1.28160252808989
##      0         1                3                2                1
##      1         0                0                0                0
##       y_rate_lencm
## single 1.28243383783784 1.28426066666667 1.28686038461538 1.28940358695652
##      0                2                1                2                3
##      1                0                0                0                0
##       y_rate_lencm
## single 1.29397011049724 1.29644950819672 1.30115883333333 1.30357285714286
##      0                1                2                1                2
##      1                0                0                0                0
##       y_rate_lencm
## single 1.30593440217391 1.30824516129032 1.318057 1.32028532967033
##      0                1                1        1                1
##      1                0                0        0                0
##       y_rate_lencm
## single 1.3224652173913 1.32757972375691 1.33495516666667 1.3369978021978
##      0               2                1                1               3
##      1               0                0                0               0
##       y_rate_lencm
## single 1.34438453038674 1.34631295081967 1.35371027472528 1.35552684782609
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.36118933701658 1.36293409836066 1.37042274725275 1.37205766304348
##      0                1                1                2                2
##      1                0                0                0                0
##       y_rate_lencm
## single 1.37365741935484 1.37799414364641 1.38713521978022 1.38858847826087
##      0                1                1                2                2
##      1                0                0                0                0
##       y_rate_lencm
## single 1.39001048387097 1.39479895027624 1.39617639344262 1.41279754098361
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.419446 1.42056016483516 1.42165010869565 1.42941868852459
##      0        2                1                1                2
##      1        0                0                0                0
##       y_rate_lencm
## single 1.43040697297297 1.43727263736264 1.44521337016574 1.44603983606557
##      0                1                4                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.45398510989011 1.46201817679558 1.47069758241758 1.47124255434783
##      0                1                2                2                2
##      1                0                0                0                0
##       y_rate_lencm
## single 1.47882298342541 1.47928213114754 1.48741005494506 1.49617281081081
##      0                1                1                2                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.50374696629213 1.50412252747253 1.51261427027027 1.520835
##      0                1                2                1        2
##      1                0                0                0        0
##       y_rate_lencm
## single 1.52905572972973 1.53773316666667 1.57042744565217 1.58695826086957
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_lencm
## single 1.59645662983425 1.62110983516483 1.62887245901639 1.64549360655738
##      0                1                1                1                2
##      1                0                0                0                0
##       y_rate_lencm
## single 1.67124725274725 1.69347032432432 1.7046721978022
##      0                1                1               1
##      1                0                0               0
```




# Results Detail

## Results Plots
![](/tmp/499dfe39-b64d-41be-8991-7224ddebf42a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/499dfe39-b64d-41be-8991-7224ddebf42a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


diffcat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                4.0201616   3.9114235   4.1288997
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                4.2612818   3.9886007   4.5339630
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                3.3217553   3.2538255   3.3896851
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                3.2733462   3.1023443   3.4443481
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                3.4918943   3.3766621   3.6071264
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                3.3827492   3.2430150   3.5224835
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                3.4898998   3.4123983   3.5674013
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                3.2810147   2.7797690   3.7822603
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                2.8348123   2.7210155   2.9486091
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                2.8544612   2.7112158   2.9977065
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                3.3780054   3.3564844   3.3995263
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                3.2774420   3.1912970   3.3635869
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                2.6170390   2.5696552   2.6644229
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                2.6599514   2.5126696   2.8072333
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                3.5325772   3.5156995   3.5494548
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                3.3603211   3.0644026   3.6562397
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                2.1594503   2.0719289   2.2469716
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                2.0787831   1.9027213   2.2548449
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                2.0275835   1.9563119   2.0988551
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                1.9503020   1.7884046   2.1121995
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.9443512   1.8436217   2.0450807
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                2.0265654   1.8953829   2.1577479
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8277484   1.7588679   1.8966290
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8977087   1.5100436   2.2853737
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.7909052   1.7532819   1.8285286
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8087200   1.6895827   1.9278573
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                2.0910131   2.0493748   2.1326514
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                2.1027613   2.0110207   2.1945018
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.9722005   1.9514692   1.9929318
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                2.0188899   1.9439913   2.0937884
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                1.7492401   1.7163974   1.7820828
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                1.8199604   1.7049608   1.9349600
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                1.8568411   1.8428475   1.8708347
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                2.1076789   1.6292852   2.5860727
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                1.3778779   1.3333254   1.4224304
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.4387256   1.2531347   1.6243166
6-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                1.2114582   1.1756025   1.2473139
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                1.2014333   1.1283884   1.2744781
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.1579112   1.1058257   1.2099967
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.2291229   1.1640707   1.2941752
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0025137   0.9645841   1.0404432
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9816515   0.8444604   1.1188425
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1951897   1.1725650   1.2178143
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.2136688   1.1412039   1.2861337
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                1.1128985   1.0800142   1.1457827
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                1.0671848   0.9735203   1.1608492
6-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                1.4700482   1.4316571   1.5084393
6-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                1.4925044   1.4320962   1.5529125
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.1981508   1.1868385   1.2094631
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.1970032   1.1534301   1.2405763
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                1.0138510   0.9953347   1.0323673
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                1.0369557   0.9667511   1.1071603
6-12 months    ki1135781-COHORTS          INDIA                          0                    NA                1.0834574   1.0737861   1.0931287
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                1.0528858   0.8631844   1.2425872
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                1.0664611   1.0541234   1.0787988
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                1.0869744   0.9936884   1.1802604
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                1.2294538   1.2092055   1.2497020
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                1.2120592   1.1821189   1.2419996
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                1.1885054   1.1617201   1.2152907
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                1.2267420   1.1782138   1.2752702
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.9936186   0.9606721   1.0265652
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.8993787   0.8225626   0.9761949
12-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.8477637   0.8255142   0.8700132
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.8359849   0.7801558   0.8918139
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.8716063   0.8423291   0.9008834
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.8677734   0.8332007   0.9023460
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7696914   0.7460211   0.7933617
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6530710   0.5222737   0.7838682
12-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.8604486   0.8058412   0.9150560
12-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.8509511   0.7865052   0.9153969
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.7054387   0.6775140   0.7333634
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7521830   0.6940658   0.8103002
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7820505   0.7703852   0.7937158
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7481337   0.7132521   0.7830153
12-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.8192639   0.8133693   0.8251585
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.7967763   0.6880851   0.9054674
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.7055460   0.6980855   0.7130065
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.7064456   0.6547606   0.7581307
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.8167899   0.7996271   0.8339527
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                0.7844530   0.7613337   0.8075723
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.8349554   0.8186172   0.8512936
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                0.8230980   0.7868340   0.8593620


### Parameter: E(Y)


diffcat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                4.0509714   3.9492443   4.1526985
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.3158605   3.2526447   3.3790763
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.4451859   3.3559092   3.5344627
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4816904   3.4044928   3.5588880
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.8355739   2.7218468   2.9493011
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3717033   3.3508142   3.3925924
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.6198322   2.5745000   2.6651643
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5323185   3.5154593   3.5491778
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1478156   2.0686357   2.2269955
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0183213   1.9525900   2.0840526
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9811941   1.9001209   2.0622672
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7925022   1.7566242   1.8283801
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0914863   2.0503474   2.1326251
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9751041   1.9551098   1.9950984
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.7546801   1.7230708   1.7862894
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8572663   1.8432699   1.8712628
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.3863464   1.3400121   1.4326807
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.2102315   1.1775158   1.2429472
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.1895267   1.1483723   1.2306812
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0019524   0.9648566   1.0390481
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1968182   1.1752193   1.2184170
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.1080731   1.0769747   1.1391716
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.4709224   1.4326640   1.5091808
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.1980807   1.1871310   1.2090305
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0157051   0.9977618   1.0336483
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                1.0833934   1.0737340   1.0930527
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                1.0669587   1.0547088   1.0792086
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                1.2235257   1.2067171   1.2403343
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                1.1960390   1.1724665   1.2196115
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9816245   0.9508764   1.0123725
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8463453   0.8256453   0.8670453
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8699064   0.8475321   0.8922808
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7663111   0.7428636   0.7897586
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8601486   0.8069287   0.9133686
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7099126   0.6840087   0.7358165
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7791030   0.7680096   0.7901963
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.8192072   0.8133209   0.8250935
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7055690   0.6981801   0.7129578
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.8061887   0.7923193   0.8200581
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.8325979   0.8176481   0.8475477


### Parameter: ATE


diffcat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.2411202   -0.0524423    0.5346828
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.0484091   -0.2324094    0.1355911
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.1091450   -0.2902640    0.0719740
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.2088852   -0.7160870    0.2983167
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.0196488   -0.0722667    0.1115644
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.1005634   -0.1893559   -0.0117709
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0429124   -0.1118041    0.1976288
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.1722560   -0.4686555    0.1241434
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0806672   -0.2772828    0.1159485
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.0772814   -0.2541724    0.0996096
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0822142   -0.0831801    0.2476085
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0699602   -0.3237767    0.4636971
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0178147   -0.1071221    0.1427516
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.0117481   -0.0779138    0.1014100
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0466894   -0.0310253    0.1244041
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0707203   -0.0488772    0.1903178
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                  0.2508378   -0.2277605    0.7294362
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0608477   -0.1300159    0.2517113
6-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.0100249   -0.0913956    0.0713457
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0712118   -0.0121230    0.1545466
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0208622   -0.1631999    0.1214755
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0184791   -0.0574356    0.0943938
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -0.0457137   -0.1449830    0.0535556
6-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0224561   -0.0269331    0.0718453
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0011476   -0.0461652    0.0438700
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0231047   -0.0495006    0.0957100
6-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.0305716   -0.2205194    0.1593762
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0205133   -0.0735850    0.1146117
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         1                    0                 -0.0173946   -0.0535389    0.0187498
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1                    0                  0.0382366   -0.0171930    0.0936662
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0942399   -0.1778234   -0.0106564
12-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.0117788   -0.0718781    0.0483205
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0038329   -0.0491365    0.0414707
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1166205   -0.2495422    0.0163013
12-24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.0094976   -0.0875073    0.0685122
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0467443   -0.0177336    0.1112222
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.0339168   -0.0706973    0.0028637
12-24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.0224877   -0.1313386    0.0863632
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0008996   -0.0513211    0.0531204
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         1                    0                 -0.0323369   -0.0611303   -0.0035434
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         1                    0                 -0.0118574   -0.0516319    0.0279171
