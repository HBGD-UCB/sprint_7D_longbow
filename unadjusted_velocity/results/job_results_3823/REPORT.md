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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** y_rate_len

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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1              0     244
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0            157     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1             23     180
0-3 months     ki0047075b-MAL-ED          INDIA                          0            200     200
0-3 months     ki0047075b-MAL-ED          INDIA                          1              0     200
0-3 months     ki0047075b-MAL-ED          NEPAL                          0            175     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          1              0     175
0-3 months     ki0047075b-MAL-ED          PERU                           0            238     271
0-3 months     ki0047075b-MAL-ED          PERU                           1             33     271
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0            131     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1             98     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            220     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              9     229
0-3 months     ki1119695-PROBIT           BELARUS                        0          12251   12745
0-3 months     ki1119695-PROBIT           BELARUS                        1            494   12745
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0           7344    7835
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1            491    7835
0-3 months     ki1135781-COHORTS          GUATEMALA                      0            632     676
0-3 months     ki1135781-COHORTS          GUATEMALA                      1             44     676
0-3 months     ki1135781-COHORTS          INDIA                          0           4655    4662
0-3 months     ki1135781-COHORTS          INDIA                          1              7    4662
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0            231     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1              0     231
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0            178     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1             30     208
3-6 months     ki0047075b-MAL-ED          INDIA                          0            227     227
3-6 months     ki0047075b-MAL-ED          INDIA                          1              0     227
3-6 months     ki0047075b-MAL-ED          NEPAL                          0            233     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          1              0     233
3-6 months     ki0047075b-MAL-ED          PERU                           0            235     267
3-6 months     ki0047075b-MAL-ED          PERU                           1             32     267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0            133     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1            108     241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            231     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              8     239
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1503    1651
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            148    1651
3-6 months     ki1119695-PROBIT           BELARUS                        0          12773   13309
3-6 months     ki1119695-PROBIT           BELARUS                        1            536   13309
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0           5504    5869
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1            365    5869
3-6 months     ki1135781-COHORTS          GUATEMALA                      0            696     754
3-6 months     ki1135781-COHORTS          GUATEMALA                      1             58     754
3-6 months     ki1135781-COHORTS          INDIA                          0           4711    4719
3-6 months     ki1135781-COHORTS          INDIA                          1              8    4719
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0            220     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1              0     220
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0            167     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1             27     194
6-12 months    ki0047075b-MAL-ED          INDIA                          0            222     222
6-12 months    ki0047075b-MAL-ED          INDIA                          1              0     222
6-12 months    ki0047075b-MAL-ED          NEPAL                          0            230     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          1              0     230
6-12 months    ki0047075b-MAL-ED          PERU                           0            208     237
6-12 months    ki0047075b-MAL-ED          PERU                           1             29     237
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0            129     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1            103     232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            217     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6     223
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            983    1078
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             95    1078
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0            161     180
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1             19     180
6-12 months    ki1119695-PROBIT           BELARUS                        0          12394   12896
6-12 months    ki1119695-PROBIT           BELARUS                        1            502   12896
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0           4276    4554
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            278    4554
6-12 months    ki1135781-COHORTS          GUATEMALA                      0            745     810
6-12 months    ki1135781-COHORTS          GUATEMALA                      1             65     810
6-12 months    ki1135781-COHORTS          INDIA                          0           3813    3821
6-12 months    ki1135781-COHORTS          INDIA                          1              8    3821
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0           2333    2391
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1             58    2391
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0            206     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1              0     206
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0            144     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1             21     165
12-24 months   ki0047075b-MAL-ED          INDIA                          0            223     223
12-24 months   ki0047075b-MAL-ED          INDIA                          1              0     223
12-24 months   ki0047075b-MAL-ED          NEPAL                          0            226     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          1              0     226
12-24 months   ki0047075b-MAL-ED          PERU                           0            168     191
12-24 months   ki0047075b-MAL-ED          PERU                           1             23     191
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0            128     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1            102     230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            201     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6     207
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              2       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0       2
12-24 months   ki1119695-PROBIT           BELARUS                        0           2453    2533
12-24 months   ki1119695-PROBIT           BELARUS                        1             80    2533
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            274     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             29     303
12-24 months   ki1135781-COHORTS          GUATEMALA                      0            767     840
12-24 months   ki1135781-COHORTS          GUATEMALA                      1             73     840
12-24 months   ki1135781-COHORTS          INDIA                          0           3164    3172
12-24 months   ki1135781-COHORTS          INDIA                          1              8    3172
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0           2175    2232
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1             57    2232


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

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/7e16f13a-5dac-4fd8-9d0d-ea77c2dd0b18/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7e16f13a-5dac-4fd8-9d0d-ea77c2dd0b18/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
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


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
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
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9816245   0.9508764   1.0123725
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8463453   0.8256453   0.8670453
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8699064   0.8475321   0.8922808
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7663111   0.7428636   0.7897586
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8601486   0.8069287   0.9133686
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7099126   0.6840087   0.7358165
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7791030   0.7680096   0.7901963
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.8192072   0.8133209   0.8250935
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7055690   0.6981801   0.7129578


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
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
