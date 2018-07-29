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

**Intervention Variable:** parity

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* vagbrth
* W_nrooms
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_vagbrth
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        parity    n_cell       n
-------------  -------------------------  -----------------------------  -------  -------  ------
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1            240     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2            225     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+           169     634
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1           6375   20028
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2           6945   20028
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+          6708   20028
0-3 months     ki1101329-Keneba           GAMBIA                         1            130    1145
0-3 months     ki1101329-Keneba           GAMBIA                         2            113    1145
0-3 months     ki1101329-Keneba           GAMBIA                         3+           902    1145
0-3 months     ki1135781-COHORTS          GUATEMALA                      1             93     728
0-3 months     ki1135781-COHORTS          GUATEMALA                      2            111     728
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+           524     728
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1            313    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2            280    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+           575    1168
0-3 months     ki1135781-COHORTS          INDIA                          1            671    4021
0-3 months     ki1135781-COHORTS          INDIA                          2           1015    4021
0-3 months     ki1135781-COHORTS          INDIA                          3+          2335    4021
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           3052    7863
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2           2438    7863
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+          2373    7863
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1            206     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2            211     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+           157     574
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1           4401   12573
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2           4359   12573
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+          3813   12573
3-6 months     ki1101329-Keneba           GAMBIA                         1            146    1130
3-6 months     ki1101329-Keneba           GAMBIA                         2            107    1130
3-6 months     ki1101329-Keneba           GAMBIA                         3+           877    1130
3-6 months     ki1135781-COHORTS          GUATEMALA                      1            107     805
3-6 months     ki1135781-COHORTS          GUATEMALA                      2            114     805
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+           584     805
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1            299    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2            261    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+           564    1124
3-6 months     ki1135781-COHORTS          INDIA                          1            675    4069
3-6 months     ki1135781-COHORTS          INDIA                          2           1042    4069
3-6 months     ki1135781-COHORTS          INDIA                          3+          2352    4069
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1            122     471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2            120     471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+           229     471
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            577    1641
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            543    1641
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           521    1641
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           2211    5889
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2           1851    5889
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+          1827    5889
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1            197     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2            201     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+           147     545
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1           3364    9832
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2           3495    9832
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3+          2973    9832
6-12 months    ki1101329-Keneba           GAMBIA                         1            116    1067
6-12 months    ki1101329-Keneba           GAMBIA                         2            107    1067
6-12 months    ki1101329-Keneba           GAMBIA                         3+           844    1067
6-12 months    ki1135781-COHORTS          GUATEMALA                      1            120     862
6-12 months    ki1135781-COHORTS          GUATEMALA                      2            125     862
6-12 months    ki1135781-COHORTS          GUATEMALA                      3+           617     862
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1            327    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          2            253    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+           557    1137
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             62     330
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          2             71     330
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+           197     330
6-12 months    ki1135781-COHORTS          INDIA                          1            571    3362
6-12 months    ki1135781-COHORTS          INDIA                          2            844    3362
6-12 months    ki1135781-COHORTS          INDIA                          3+          1947    3362
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1            122     475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2            125     475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3+           228     475
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1            505    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    2            514    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    3+          1400    2419
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            385    1064
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            341    1064
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           338    1064
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           1697    4571
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2           1422    4571
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+          1452    4571
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1            168     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2            174     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+           116     458
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           1531    4648
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           1653    4648
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+          1464    4648
12-24 months   ki1101329-Keneba           GAMBIA                         1             89     982
12-24 months   ki1101329-Keneba           GAMBIA                         2            100     982
12-24 months   ki1101329-Keneba           GAMBIA                         3+           793     982
12-24 months   ki1135781-COHORTS          GUATEMALA                      1            136     874
12-24 months   ki1135781-COHORTS          GUATEMALA                      2            116     874
12-24 months   ki1135781-COHORTS          GUATEMALA                      3+           622     874
12-24 months   ki1135781-COHORTS          INDIA                          1            473    2877
12-24 months   ki1135781-COHORTS          INDIA                          2            719    2877
12-24 months   ki1135781-COHORTS          INDIA                          3+          1685    2877
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1             88     367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2             96     367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3+           183     367
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1            468    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    2            492    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    3+          1300    2260
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             1       2
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            104     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2             96     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           103     303


The following strata were considered:

* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/09dcea06-7569-4e4e-a9c8-61a2b33a3ccb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/09dcea06-7569-4e4e-a9c8-61a2b33a3ccb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                3.7347772   3.6892557   3.7802987
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                3.6344904   3.5913888   3.6775920
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                3.6130598   3.5711590   3.6549605
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.5063522   3.4623176   3.5503867
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                3.5967954   3.5533427   3.6402482
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                3.2469966   3.2066598   3.2873334
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                2.8018716   2.7525329   2.8512102
0-3 months     ki1101329-Keneba           GAMBIA                         2                    NA                2.3240813   2.2169451   2.4312175
0-3 months     ki1101329-Keneba           GAMBIA                         3+                   NA                3.1418641   3.0900817   3.1936464
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                3.4766076   3.4419407   3.5112746
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                3.4472380   3.4110272   3.4834488
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                3.4437391   3.4097284   3.4777499
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                2.8347465   2.7942372   2.8752558
0-3 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                2.7017922   2.6525174   2.7510670
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                2.6020078   2.5547993   2.6492163
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                3.6656993   3.6259132   3.7054855
0-3 months     ki1135781-COHORTS          INDIA                          2                    NA                3.6238992   3.5908239   3.6569746
0-3 months     ki1135781-COHORTS          INDIA                          3+                   NA                3.4899419   3.4657876   3.5140962
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.6970500   3.6718311   3.7222688
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                3.7568051   3.7397697   3.7738405
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                3.6486171   3.6292762   3.6679579
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                2.2465320   2.1690640   2.3239999
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                2.0416482   1.9975113   2.0857852
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                1.8423162   1.7905391   1.8940933
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.9230292   1.8794796   1.9665788
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.9536418   1.9175577   1.9897259
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                2.0089824   1.9730773   2.0448874
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7328495   1.6836757   1.7820232
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.7516623   1.6980259   1.8052987
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                1.6600183   1.6104387   1.7095980
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                2.7529466   2.7004555   2.8054376
3-6 months     ki1101329-Keneba           GAMBIA                         2                    NA                2.3600482   2.3080915   2.4120048
3-6 months     ki1101329-Keneba           GAMBIA                         3+                   NA                1.8938284   1.8493553   1.9383015
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                2.1477500   2.0929850   2.2025150
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                1.9005891   1.8292731   1.9719051
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+                   NA                1.7767009   1.7314400   1.8219618
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                2.0705439   2.0401546   2.1009331
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                1.9225751   1.8910320   1.9541181
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                1.9402094   1.9084303   1.9719886
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                2.3456810   2.3065060   2.3848560
3-6 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                1.7221377   1.6933233   1.7509521
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                1.7390687   1.7067444   1.7713929
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                2.0384245   2.0065079   2.0703411
3-6 months     ki1135781-COHORTS          INDIA                          2                    NA                1.8881351   1.8596074   1.9166628
3-6 months     ki1135781-COHORTS          INDIA                          3+                   NA                1.8409044   1.8214343   1.8603745
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                2.0005765   1.9803698   2.0207833
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                1.9049347   1.8870349   1.9228344
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                1.7626330   1.7395058   1.7857602
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.1696210   1.1400319   1.1992102
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                1.0830755   1.0616039   1.1045471
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                1.0819421   1.0715383   1.0923459
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                1.1998028   1.1217341   1.2778716
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                1.0769655   0.9915723   1.1623587
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.9866304   0.9177526   1.0555082
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.3152318   1.2963017   1.3341620
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.2648458   1.2427385   1.2869530
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                1.1108422   1.0951556   1.1265289
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.2398397   1.2119697   1.2677096
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.2050230   1.1733891   1.2366569
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                1.1655274   1.1402701   1.1907847
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                1.4124507   1.3943105   1.4305909
6-12 months    ki1101329-Keneba           GAMBIA                         2                    NA                1.4184009   1.3909313   1.4458705
6-12 months    ki1101329-Keneba           GAMBIA                         3+                   NA                1.1836239   1.1633649   1.2038829
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.1484711   1.1196005   1.1773418
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                1.1790112   1.1532996   1.2047227
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                1.0906156   1.0689326   1.1122987
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.2588430   1.2426117   1.2750743
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                1.1814741   1.1636539   1.1992943
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                1.1877994   1.1697716   1.2058272
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                1.1464920   1.1317831   1.1612008
6-12 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                1.1127769   1.0866437   1.1389102
6-12 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.9840556   0.9658054   1.0023058
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                1.1603566   1.1377598   1.1829534
6-12 months    ki1135781-COHORTS          INDIA                          2                    NA                1.0916448   1.0719314   1.1113582
6-12 months    ki1135781-COHORTS          INDIA                          3+                   NA                1.0570659   1.0437089   1.0704228
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                1.1618610   1.1378922   1.1858298
6-12 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                1.0945564   1.0740473   1.1150655
6-12 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                1.0328579   1.0173643   1.0483514
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.1617245   1.1468923   1.1765568
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                1.0984824   1.0893880   1.1075769
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                1.0601256   1.0466404   1.0736108
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8597925   0.8465907   0.8729943
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.8154554   0.8023878   0.8285231
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.7923605   0.7801776   0.8045433
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.7302319   0.7206863   0.7397774
12-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.8671099   0.8515432   0.8826766
12-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.8483844   0.8364982   0.8602706
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.9093119   0.8933490   0.9252749
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.8041088   0.7812202   0.8269974
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.8287330   0.8122706   0.8451955
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7408031   0.7177040   0.7639021
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.7936440   0.7725084   0.8147797
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.7459699   0.7220354   0.7699043
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7871414   0.7736507   0.8006321
12-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.6114869   0.5941226   0.6288511
12-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7683496   0.7557238   0.7809754
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.8849663   0.8716920   0.8982405
12-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.8434001   0.8325617   0.8542385
12-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.7938903   0.7864153   0.8013653
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.8050603   0.7911037   0.8190170
12-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.7350090   0.7237381   0.7462798
12-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.6887985   0.6799712   0.6976257
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.8223570   0.8144428   0.8302712
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.7896649   0.7826876   0.7966422
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.7850389   0.7781847   0.7918932


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.6019890   3.5739652   3.6300127
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.1454440   3.0949962   3.1958917
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3706450   3.3497515   3.3915385
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.6117091   2.5680119   2.6554063
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5339988   3.5157374   3.5522602
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.7184743   3.7081281   3.7288205
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9406419   1.8967379   1.9845458
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7963100   1.7603114   1.8323086
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.9715566   1.9280386   2.0150747
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7057418   1.6666784   1.7448052
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9747519   1.9548124   1.9946914
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.7616932   1.7309393   1.7924472
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8562696   1.8412447   1.8712944
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9201827   1.9097195   1.9306459
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.0983052   1.0864567   1.1101538
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0139672   0.9374673   1.0904670
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1968328   1.1751167   1.2185490
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                1.1774049   1.1574133   1.1973966
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.1681560   1.1485303   1.1877817
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.1980958   1.1871818   1.2090098
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0185507   1.0014002   1.0357013
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                1.0842179   1.0737055   1.0947303
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                1.0674471   1.0552459   1.0796483
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1069558   1.1002095   1.1137021
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8449409   0.8333460   0.8565357
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8378848   0.8224521   0.8533174
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7099126   0.6840087   0.7358165
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7793681   0.7685580   0.7901783
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.8139538   0.8077496   0.8201580
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7067500   0.6994129   0.7140870
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7967251   0.7914074   0.8020427


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.1002868   -0.1651203   -0.0354532
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.1217174   -0.1969161   -0.0465188
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0904433    0.0290035    0.1518831
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.2593556   -0.3191455   -0.1995656
0-3 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         2                    1                 -0.4777903   -0.5889624   -0.3666182
0-3 months     ki1101329-Keneba           GAMBIA                         3+                   1                  0.3399925    0.2715309    0.4084541
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0293696   -0.0790322    0.0202929
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0328685   -0.0813395    0.0156025
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.1329543   -0.1944152   -0.0714934
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.2327387   -0.2916726   -0.1738048
0-3 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          2                    1                 -0.0418001   -0.0933317    0.0097315
0-3 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.1757574   -0.2221831   -0.1293316
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0597551    0.0300491    0.0894611
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0484329   -0.0806747   -0.0161912
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.2048838   -0.2802143   -0.1295532
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.4042158   -0.5078612   -0.3005704
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0306126   -0.0251088    0.0863340
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.0859532    0.0307186    0.1411877
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0188128   -0.0528434    0.0904690
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0728311   -0.1419954   -0.0036668
3-6 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         2                    1                 -0.3928984   -0.4612881   -0.3245087
3-6 months     ki1101329-Keneba           GAMBIA                         3+                   1                 -0.8591182   -0.9261823   -0.7920541
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.2471609   -0.3313672   -0.1629546
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.3710491   -0.4467536   -0.2953447
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.1479688   -0.1916375   -0.1043001
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.1303344   -0.1740433   -0.0866256
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.6235433   -0.6719472   -0.5751393
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.6066123   -0.6562915   -0.5569331
3-6 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          2                    1                 -0.1502894   -0.1927939   -0.1077849
3-6 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.1975201   -0.2348361   -0.1602040
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0956419   -0.1218445   -0.0694392
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.2379435   -0.2685624   -0.2073247
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0865455   -0.1298553   -0.0432357
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0876789   -0.1236854   -0.0516725
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 -0.1228373   -0.2355495   -0.0101251
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 -0.2131725   -0.3123512   -0.1139937
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0503861   -0.0802000   -0.0205722
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.2043896   -0.2281821   -0.1805971
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0348167   -0.0756136    0.0059802
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0743123   -0.1108500   -0.0377745
6-12 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         2                    1                  0.0059502   -0.0239486    0.0358490
6-12 months    ki1101329-Keneba           GAMBIA                         3+                   1                 -0.2288268   -0.2556593   -0.2019943
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0305400   -0.0077839    0.0688639
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0578555   -0.0934978   -0.0222132
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0773689   -0.1013320   -0.0534059
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0710436   -0.0951379   -0.0469494
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0337150   -0.0627589   -0.0046712
6-12 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.1624364   -0.1843595   -0.1405133
6-12 months    ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          2                    1                 -0.0687119   -0.0985575   -0.0388663
6-12 months    ki1135781-COHORTS          INDIA                          3+                   1                 -0.1032908   -0.1294230   -0.0771585
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 -0.0673046   -0.0986243   -0.0359849
6-12 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.1290031   -0.1573986   -0.1006076
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0632421   -0.0799382   -0.0465460
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.1015990   -0.1209430   -0.0822550
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0443371   -0.0627710   -0.0259032
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0674321   -0.0854188   -0.0494453
12-24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.1368780    0.1187120    0.1550440
12-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                  0.1181525    0.1032118    0.1330933
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.1052031   -0.1333377   -0.0770685
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0805789   -0.1034428   -0.0577149
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0528410    0.0258580    0.0798240
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                  0.0051668   -0.0238061    0.0341397
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.1756546   -0.1975288   -0.1537803
12-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0187918   -0.0371979   -0.0003857
12-24 months   ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          2                    1                 -0.0415662   -0.0584913   -0.0246411
12-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 -0.0910760   -0.1061575   -0.0759944
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 -0.0700513   -0.0875087   -0.0525939
12-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.1162619   -0.1325996   -0.0999241
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0326921   -0.0430198   -0.0223645
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0373181   -0.0475070   -0.0271291
