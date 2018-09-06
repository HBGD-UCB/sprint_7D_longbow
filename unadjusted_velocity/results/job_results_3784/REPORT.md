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
![](/tmp/e426ae83-b0cc-4f4c-946d-89821a987bf3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e426ae83-b0cc-4f4c-946d-89821a987bf3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





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
