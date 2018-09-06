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
![](/tmp/ab614807-1ba3-48a8-bf61-de3372504eef/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ab614807-1ba3-48a8-bf61-de3372504eef/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1724588    0.1170276    0.2278900
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.2425290    0.1424485    0.3426095
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.1586586   -0.1932927   -0.1240245
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.2494166   -0.3289358   -0.1698974
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.3418123   -0.4008343   -0.2827904
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.5727818   -0.6378930   -0.5076706
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0422918   -0.0813576   -0.0032261
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1408850   -0.3605068    0.0787368
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                -0.4409614   -0.4988520   -0.3830708
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                -0.4203453   -0.4639112   -0.3767794
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1384204   -0.1490574   -0.1277835
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1646724   -0.1972924   -0.1320525
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.5388824   -0.5620220   -0.5157429
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0936502    0.0709729    0.1163276
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0694702   -0.0777192   -0.0612212
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.1853970   -0.3193588   -0.0514352
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0586933    0.0197667    0.0976199
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.1909988   -0.2330591   -0.1489385
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                 0.0301750   -0.0027847    0.0631348
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.0015332   -0.0425910    0.0395246
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0301377   -0.0618723    0.0015970
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0008417   -0.0352409    0.0335575
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0721021   -0.1047651   -0.0394391
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0255782   -0.2091445    0.1579880
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0867358   -0.1040274   -0.0694441
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0650146   -0.1084936   -0.0215355
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0438301    0.0247601    0.0629001
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                 0.1370929    0.1034973    0.1706885
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0025855   -0.0122084    0.0070373
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0092990   -0.0328914    0.0142933
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1052707   -0.1206272   -0.0899142
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.3915631   -0.4093180   -0.3738083
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0632424   -0.0696888   -0.0567960
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                 0.0429801   -0.1774334    0.2633936
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0041078   -0.0148893    0.0231050
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0219323   -0.0521503    0.0960149
6-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0357197   -0.0508001   -0.0206394
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0002174   -0.0208353    0.0204004
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0061048   -0.0233867    0.0111771
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0842377    0.0624815    0.1059939
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1238574   -0.1398522   -0.1078625
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1296884   -0.1924653   -0.0669116
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0604891   -0.0699687   -0.0510096
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1203952   -0.1377135   -0.1030769
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0747209   -0.0884798   -0.0609621
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0799764   -0.1184700   -0.0414828
6-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0443622    0.0281789    0.0605454
6-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0357340    0.0198452    0.0516228
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0494574   -0.0542499   -0.0446650
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0435748   -0.0552025   -0.0319470
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1150875   -0.1224924   -0.1076827
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.2933733   -0.3045705   -0.2821762
6-12 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0961828   -0.1002224   -0.0921433
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1061242   -0.1857341   -0.0265143
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.1019150   -0.1070221   -0.0968080
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.4870246   -0.4901459   -0.4839033
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0021136   -0.0092151    0.0134423
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0247791   -0.0516351    0.0020768
12-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0099963   -0.0174946   -0.0024979
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0068776   -0.0190818    0.0053266
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0298358   -0.0368333   -0.0228384
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0479628   -0.0559230   -0.0400027
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0383288   -0.0462417   -0.0304160
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0727493   -0.1142883   -0.0312102
12-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0421299   -0.0593862   -0.0248736
12-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.1290881    0.1235880    0.1345881
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0538209   -0.0635233   -0.0441185
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0324303   -0.0500869   -0.0147736
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0290652   -0.0328261   -0.0253044
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0199279   -0.0226194   -0.0172363
12-24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.0358765   -0.0378050   -0.0339480
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0383325   -0.0756637   -0.0010013
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0596501   -0.0622184   -0.0570817
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.2855737   -0.2874105   -0.2837369


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
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0700702   -0.0435474    0.1836878
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.0907580   -0.1775405   -0.0039756
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.2309695   -0.3401696   -0.1217694
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0985931   -0.3216623    0.1244761
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.0206161   -0.0377959    0.0790281
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0262520   -0.0604253    0.0079212
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.6325327    0.6018073    0.6632580
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.1159269   -0.2501424    0.0182887
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.2496921   -0.3051189   -0.1942654
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.0317083   -0.0834650    0.0200485
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0292960   -0.0069769    0.0655690
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0465239   -0.1399257    0.2329735
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0217212   -0.0241793    0.0676217
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.0932628    0.0566699    0.1298557
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0067135   -0.0320482    0.0186212
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.2862924   -0.3098567   -0.2627282
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                  0.1062225   -0.1142852    0.3267302
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0178244   -0.0584095    0.0940583
6-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           1                    0                  0.0355023    0.0115102    0.0594944
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0903425    0.0605975    0.1200875
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0058311   -0.0706135    0.0589514
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0599061   -0.0783773   -0.0414348
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -0.0052555   -0.0459949    0.0354839
6-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        1                    0                 -0.0086282   -0.0254082    0.0081518
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0058827   -0.0065858    0.0183512
6-12 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.1782858   -0.1916572   -0.1649144
6-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.0099414   -0.0896537    0.0697710
6-12 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.3851096   -0.3912440   -0.3789751
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0268927   -0.0559343    0.0021489
12-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0031187   -0.0111251    0.0173624
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0181270   -0.0276340   -0.0086199
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0344204   -0.0767064    0.0078655
12-24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        1                    0                  0.1712180    0.1548085    0.1876275
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0213907    0.0018580    0.0409233
12-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0091374    0.0049240    0.0133507
12-24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.0024560   -0.0398370    0.0349249
12-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.2259236   -0.2292593   -0.2225880
