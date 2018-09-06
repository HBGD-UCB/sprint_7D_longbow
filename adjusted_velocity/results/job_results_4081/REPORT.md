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

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

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
![](/tmp/484ee650-9595-46b3-9b7b-cfe454a3237b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/484ee650-9595-46b3-9b7b-cfe454a3237b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                4.0212965   3.9141467   4.1284462
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                4.2466379   4.0032582   4.4900176
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                3.3147957   3.2473926   3.3821988
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                2.8339959   2.7088637   2.9591280
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                2.9930777   2.8772267   3.1089287
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                2.4715245   2.3338822   2.6091669
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                3.4898998   3.4123983   3.5674013
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                3.2810147   2.7797690   3.7822603
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                2.8310601   2.7199368   2.9421834
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                2.8597520   2.7753375   2.9441665
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                3.3789179   3.3575692   3.4002665
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                3.3100425   3.2415646   3.3785204
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                2.6228207   2.5767081   2.6689334
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                3.9849871   3.9379179   4.0320563
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                3.5325772   3.5156995   3.5494548
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                3.3603211   3.0644026   3.6562397
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                2.1777591   2.0935906   2.2619277
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                2.7263092   2.6197362   2.8328822
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                2.0346907   1.9661217   2.1032598
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                2.2456342   2.1634295   2.3278388
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                2.1233106   2.0494284   2.1971929
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                2.5066539   2.4088756   2.6044322
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8277484   1.7588679   1.8966290
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8977087   1.5100436   2.2853737
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.7903968   1.7533089   1.8274848
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8747682   1.8092106   1.9403257
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                2.0861935   2.0455170   2.1268699
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                2.3561715   2.2825689   2.4297742
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.9715093   1.9509526   1.9920660
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.9503065   1.8972338   2.0033793
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                1.7419457   1.7100871   1.7738043
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                1.5516625   1.5189723   1.5843527
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                1.8568411   1.8428475   1.8708347
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                2.1076789   1.6292852   2.5860727
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                1.3929876   1.3484061   1.4375691
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.9422337   1.7944521   2.0900153
6-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                1.2119936   1.1774056   1.2465816
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                1.2897393   1.2561011   1.3233775
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.3159076   1.2740238   1.3577915
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.5222738   1.4694772   1.5750703
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0025137   0.9645841   1.0404432
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9816515   0.8444604   1.1188425
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1943499   1.1717689   1.2169310
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1251954   1.0590123   1.1913785
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                1.1122474   1.0794310   1.1450639
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                1.0727237   0.9797984   1.1656490
6-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                1.4764608   1.4389774   1.5139443
6-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                1.4627391   1.4240351   1.5014432
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.1983782   1.1871614   1.2095950
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.2149482   1.1898216   1.2400748
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                1.0053557   0.9873583   1.0233530
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.5838582   0.5580031   0.6097133
6-12 months    ki1135781-COHORTS          INDIA                          0                    NA                1.0834574   1.0737861   1.0931287
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                1.0528858   0.8631844   1.2425872
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                1.0579530   1.0455926   1.0703133
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1157668   0.1084100   0.1231237
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.9935272   0.9607053   1.0263490
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.9018505   0.8280492   0.9756517
12-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.8487445   0.8269445   0.8705446
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.8913490   0.8594084   0.9232895
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.8361949   0.8154677   0.8569221
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.7724443   0.7500184   0.7948703
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7696914   0.7460211   0.7933617
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6530710   0.5222737   0.7838682
12-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.8643251   0.8111514   0.9174988
12-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                1.3061819   1.2872805   1.3250833
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.7060149   0.6785791   0.7334507
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7482863   0.7006208   0.7959518
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7815126   0.7703962   0.7926289
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7155466   0.7083723   0.7227209
12-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.8192639   0.8133693   0.8251585
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.7967763   0.6880851   0.9054674
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6985127   0.6909119   0.7061136
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0323235   0.0269833   0.0376636


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
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.2253414   -0.0340774    0.4847601
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.4807998   -0.6230543   -0.3385454
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.5215532   -0.7423648   -0.3007416
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.2088852   -0.7160870    0.2983167
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.0286919   -0.0839190    0.1413029
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0688754   -0.1403094    0.0025586
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  1.3621663    1.2985796    1.4257531
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.1722560   -0.4686555    0.1241434
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.5485501    0.4226054    0.6744947
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.2109434    0.1125422    0.3093446
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.3833433    0.2497684    0.5169181
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0699602   -0.3237767    0.4636971
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0843713    0.0111670    0.1575756
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.2699781    0.1915787    0.3483775
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0212028   -0.0778123    0.0354067
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.1902832   -0.2360275   -0.1445389
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                  0.2508378   -0.2277605    0.7294362
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.5492461    0.3937626    0.7047296
6-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           1                    0                  0.0777457    0.0359770    0.1195144
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.2063662    0.1337203    0.2790121
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0208622   -0.1631999    0.1214755
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0691545   -0.1389294    0.0006203
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -0.0395238   -0.1377944    0.0587469
6-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        1                    0                 -0.0137217   -0.0532385    0.0257951
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0165700   -0.0106268    0.0437668
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.4214975   -0.4527288   -0.3902662
6-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.0305716   -0.2205194    0.1593762
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.9421861   -0.9574249   -0.9269474
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0916767   -0.1721160   -0.0112374
12-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0426044    0.0051058    0.0801030
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0637506   -0.0883481   -0.0391530
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1166205   -0.2495422    0.0163013
12-24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        1                    0                  0.4418568    0.3927403    0.4909732
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0422714   -0.0105062    0.0950490
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.0659660   -0.0780466   -0.0538853
12-24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.0224877   -0.1313386    0.0863632
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.6661893   -0.6762669   -0.6561117
