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

**Intervention Variable:** parity

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_nrooms
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_vagbrth
* delta_W_nrooms
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        parity    n_cell       n
-------------  -------------------------  -----------------------------  -------  -------  ------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1            313    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2            280    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+           575    1168
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1            240     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2            225     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+           169     634
0-3 months     ki1101329-Keneba           GAMBIA                         1            130    1145
0-3 months     ki1101329-Keneba           GAMBIA                         2            113    1145
0-3 months     ki1101329-Keneba           GAMBIA                         3+           902    1145
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           3052    7863
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2           2438    7863
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+          2373    7863
0-3 months     ki1135781-COHORTS          GUATEMALA                      1             93     728
0-3 months     ki1135781-COHORTS          GUATEMALA                      2            111     728
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+           524     728
0-3 months     ki1135781-COHORTS          INDIA                          1            671    4021
0-3 months     ki1135781-COHORTS          INDIA                          2           1015    4021
0-3 months     ki1135781-COHORTS          INDIA                          3+          2335    4021
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1          12750   40056
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2          13890   40056
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+         13416   40056
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1            299    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2            261    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+           564    1124
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1            206     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2            211     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+           157     574
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            566    1637
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            536    1637
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           535    1637
3-6 months     ki1101329-Keneba           GAMBIA                         1            146    1130
3-6 months     ki1101329-Keneba           GAMBIA                         2            107    1130
3-6 months     ki1101329-Keneba           GAMBIA                         3+           877    1130
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1            244     942
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2            240     942
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+           458     942
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           2211    5889
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2           1851    5889
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+          1827    5889
3-6 months     ki1135781-COHORTS          GUATEMALA                      1            107     805
3-6 months     ki1135781-COHORTS          GUATEMALA                      2            114     805
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+           584     805
3-6 months     ki1135781-COHORTS          INDIA                          1            675    4069
3-6 months     ki1135781-COHORTS          INDIA                          2           1042    4069
3-6 months     ki1135781-COHORTS          INDIA                          3+          2352    4069
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1           8802   25146
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2           8718   25146
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+          7626   25146
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1            327    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          2            253    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+           557    1137
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             62     330
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          2             71     330
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+           197     330
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1            197     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2            201     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+           147     545
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            378    1061
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            338    1061
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           345    1061
6-12 months    ki1101329-Keneba           GAMBIA                         1            116    1067
6-12 months    ki1101329-Keneba           GAMBIA                         2            107    1067
6-12 months    ki1101329-Keneba           GAMBIA                         3+           844    1067
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1            244     950
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2            250     950
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3+           456     950
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           1697    4571
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2           1422    4571
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+          1452    4571
6-12 months    ki1135781-COHORTS          GUATEMALA                      1            120     862
6-12 months    ki1135781-COHORTS          GUATEMALA                      2            125     862
6-12 months    ki1135781-COHORTS          GUATEMALA                      3+           617     862
6-12 months    ki1135781-COHORTS          INDIA                          1            571    3362
6-12 months    ki1135781-COHORTS          INDIA                          2            844    3362
6-12 months    ki1135781-COHORTS          INDIA                          3+          1947    3362
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1            505    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    2            514    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    3+          1400    2419
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1           6719   19651
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2           6988   19651
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3+          5944   19651
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1            168     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2            174     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+           116     458
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             1       2
12-24 months   ki1101329-Keneba           GAMBIA                         1             89     982
12-24 months   ki1101329-Keneba           GAMBIA                         2            100     982
12-24 months   ki1101329-Keneba           GAMBIA                         3+           793     982
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1            176     734
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2            192     734
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3+           366     734
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            104     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2             96     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           103     303
12-24 months   ki1135781-COHORTS          GUATEMALA                      1            136     874
12-24 months   ki1135781-COHORTS          GUATEMALA                      2            116     874
12-24 months   ki1135781-COHORTS          GUATEMALA                      3+           622     874
12-24 months   ki1135781-COHORTS          INDIA                          1            473    2877
12-24 months   ki1135781-COHORTS          INDIA                          2            719    2877
12-24 months   ki1135781-COHORTS          INDIA                          3+          1685    2877
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1            468    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    2            492    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    3+          1300    2260
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           3056    9285
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           3301    9285
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+          2928    9285


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
![](/tmp/7a7fc277-bb0a-4e4a-aa32-5731389e229c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7a7fc277-bb0a-4e4a-aa32-5731389e229c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0615882    0.0337670    0.0894094
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                 0.0207288   -0.0002298    0.0416873
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -0.0003472   -0.0283251    0.0276307
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0568374   -0.0749615   -0.0387132
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0074060   -0.0264798    0.0116678
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.1127438   -0.1293057   -0.0961820
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.3943349   -0.4158703   -0.3727995
0-3 months     ki1101329-Keneba           GAMBIA                         2                    NA                -0.6155970   -0.6711631   -0.5600309
0-3 months     ki1101329-Keneba           GAMBIA                         3+                   NA                -0.2973835   -0.3234921   -0.2712748
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0908257   -0.1079560   -0.0736954
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.1046931   -0.1226389   -0.0867472
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.1032444   -0.1205874   -0.0859013
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.3031930   -0.3243092   -0.2820768
0-3 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.4757390   -0.4982916   -0.4531865
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.5459794   -0.5693487   -0.5226101
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0046613   -0.0239427    0.0146201
0-3 months     ki1135781-COHORTS          INDIA                          2                    NA                -0.0298948   -0.0457636   -0.0140259
0-3 months     ki1135781-COHORTS          INDIA                          3+                   NA                -0.0884451   -0.1003800   -0.0765102
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0780568    0.0659909    0.0901226
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                 0.0880495    0.0798812    0.0962179
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                 0.0337399    0.0248673    0.0426126
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1176143    0.0843663    0.1508623
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                 0.0235872    0.0037783    0.0433961
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -0.0663232   -0.0885567   -0.0440897
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0460179   -0.0657579   -0.0262778
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0320306   -0.0485554   -0.0155059
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.0002266   -0.0162444    0.0157911
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1080215   -0.1307622   -0.0852808
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0966687   -0.1223076   -0.0710298
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.1414240   -0.1639928   -0.1188552
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.2946252    0.2701427    0.3191077
3-6 months     ki1101329-Keneba           GAMBIA                         2                    NA                 0.1235736    0.0991589    0.1479883
3-6 months     ki1101329-Keneba           GAMBIA                         3+                   NA                -0.0680792   -0.0889626   -0.0471958
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0806934    0.0555342    0.1058527
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0873432   -0.1169337   -0.0577527
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.1199201   -0.1398087   -0.1000316
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0404331    0.0267661    0.0541000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0275589   -0.0422919   -0.0128260
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0293653   -0.0448042   -0.0139264
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.2117480    0.1915174    0.2319787
3-6 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.1374068   -0.1533701   -0.1214434
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.1138073   -0.1296641   -0.0979505
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                 0.0165244    0.0017936    0.0312551
3-6 months     ki1135781-COHORTS          INDIA                          2                    NA                -0.0541238   -0.0673343   -0.0409133
3-6 months     ki1135781-COHORTS          INDIA                          3+                   NA                -0.0686569   -0.0777444   -0.0595694
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0389523    0.0297484    0.0481563
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0112205   -0.0195229   -0.0029181
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -0.0807149   -0.0905731   -0.0708568
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0646932   -0.0769245   -0.0524619
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.0924302   -0.1022036   -0.0826567
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -0.0921249   -0.0974565   -0.0867932
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0331288   -0.0648235   -0.0014341
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                -0.0706606   -0.1061107   -0.0352104
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                -0.1188327   -0.1473447   -0.0903208
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0256057   -0.0321537   -0.0190576
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0426457   -0.0503189   -0.0349724
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.0783389   -0.0841747   -0.0725032
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0445141   -0.0563813   -0.0326469
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0555403   -0.0689414   -0.0421392
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.0743580   -0.0842703   -0.0644458
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0029584   -0.0043523    0.0102690
6-12 months    ki1101329-Keneba           GAMBIA                         2                    NA                 0.0200701    0.0092784    0.0308618
6-12 months    ki1101329-Keneba           GAMBIA                         3+                   NA                -0.0608511   -0.0693545   -0.0523476
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0302904   -0.0410529   -0.0195278
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0493983   -0.0601802   -0.0386165
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.1134122   -0.1235876   -0.1032369
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0260613   -0.0329485   -0.0191740
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0554657   -0.0628882   -0.0480433
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0513285   -0.0589436   -0.0437135
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0473133   -0.0535429   -0.0410837
6-12 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.0692093   -0.0799267   -0.0584918
6-12 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.1226581   -0.1301267   -0.1151895
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0713750   -0.0805673   -0.0621827
6-12 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.0972760   -0.1053380   -0.0892141
6-12 months    ki1135781-COHORTS          INDIA                          3+                   NA                -0.1050046   -0.1106179   -0.0993913
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0709943   -0.0808726   -0.0611160
6-12 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.0953185   -0.1040965   -0.0865404
6-12 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -0.1125826   -0.1190533   -0.1061120
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0504622   -0.0567575   -0.0441669
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0798634   -0.0837154   -0.0760114
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -0.0917710   -0.0976832   -0.0858587
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0097244   -0.0136914   -0.0057573
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0275752   -0.0320498   -0.0231006
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.0312394   -0.0352814   -0.0271974
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1094964   -0.1138010   -0.1051919
12-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0375412   -0.0425752   -0.0325072
12-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                -0.0201309   -0.0244345   -0.0158272
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0250028    0.0191254    0.0308803
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0212864   -0.0281595   -0.0144132
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.0145574   -0.0198092   -0.0093056
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0372892   -0.0454301   -0.0291483
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0176007   -0.0251625   -0.0100390
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0253906   -0.0335023   -0.0172789
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0363759   -0.0422879   -0.0304639
12-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.0743518   -0.0792503   -0.0694533
12-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.0308306   -0.0348080   -0.0268532
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0232625   -0.0272727   -0.0192524
12-24 months   ki1135781-COHORTS          INDIA                          2                    NA                -0.0327110   -0.0363164   -0.0291057
12-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                -0.0414625   -0.0439724   -0.0389526
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0372194   -0.0419153   -0.0325236
12-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.0525269   -0.0564595   -0.0485943
12-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -0.0590394   -0.0620788   -0.0559999
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0100494   -0.0128057   -0.0072931
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0216461   -0.0240941   -0.0191981
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -0.0207527   -0.0228855   -0.0186200


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0123467   -0.0036133    0.0283068
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2853220   -0.3108085   -0.2598355
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1428480   -0.1532568   -0.1324391
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5431999   -0.5652020   -0.5211979
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0684794   -0.0774008   -0.0595580
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0705478    0.0655933    0.0755023
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0166348   -0.0360336    0.0027639
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0841486   -0.1008599   -0.0674373
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0278645   -0.0482582   -0.0074707
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1659967   -0.1845182   -0.1474752
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0009676   -0.0102953    0.0083602
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0963382   -0.1109683   -0.0817082
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0633737   -0.0703095   -0.0564379
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0034446   -0.0083108    0.0014217
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0862318   -0.0909003   -0.0815633
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1077712   -0.1389671   -0.0765754
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0592743   -0.0685477   -0.0500010
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0627772   -0.0712590   -0.0542954
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0614960   -0.0697225   -0.0532696
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0492642   -0.0539207   -0.0446077
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1091173   -0.1161782   -0.1020564
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0957304   -0.1001246   -0.0913361
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0999391   -0.1050516   -0.0948266
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0748654   -0.0777070   -0.0720238
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0201573   -0.0242768   -0.0160377
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0155649   -0.0206065   -0.0105234
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0517435   -0.0609232   -0.0425638
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0295389   -0.0332082   -0.0258696
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.0374666   -0.0395050   -0.0354283
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0576520   -0.0601763   -0.0551277
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0188143   -0.0206609   -0.0169677


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0408594   -0.0735183   -0.0082006
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0619354   -0.1121644   -0.0117064
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0494314    0.0250159    0.0738469
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0559065   -0.0788984   -0.0329145
0-3 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         2                    1                 -0.2212621   -0.2784517   -0.1640725
0-3 months     ki1101329-Keneba           GAMBIA                         3+                   1                  0.0969514    0.0645872    0.1293157
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0138674   -0.0384446    0.0107099
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0124187   -0.0367371    0.0118998
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.1725460   -0.2012916   -0.1438005
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.2427864   -0.2727597   -0.2128130
0-3 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          2                    1                 -0.0252334   -0.0500990   -0.0003679
0-3 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.0837838   -0.1063916   -0.0611760
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0099928   -0.0042688    0.0242544
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0443168   -0.0595369   -0.0290968
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0940271   -0.1270942   -0.0609600
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.1839375   -0.2281530   -0.1397219
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0139872   -0.0102504    0.0382249
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.0457912    0.0220838    0.0694987
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0113528   -0.0223278    0.0450334
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0334025   -0.0651106   -0.0016944
3-6 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         2                    1                 -0.1710516   -0.2037857   -0.1383175
3-6 months     ki1101329-Keneba           GAMBIA                         3+                   1                 -0.3627044   -0.3940116   -0.3313972
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.1680367   -0.2044558   -0.1316176
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.2006136   -0.2351801   -0.1660470
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0679920   -0.0880269   -0.0479571
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0697984   -0.0902971   -0.0492997
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.3491548   -0.3757551   -0.3225545
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.3255553   -0.3510979   -0.3000128
3-6 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          2                    1                 -0.0706482   -0.0903215   -0.0509748
3-6 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.0851812   -0.1024534   -0.0679090
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0501728   -0.0621741   -0.0381716
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.1196673   -0.1330217   -0.1063129
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0277370   -0.0460576   -0.0094163
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0274317   -0.0434592   -0.0114042
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 -0.0375318   -0.0842211    0.0091576
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 -0.0857040   -0.1268021   -0.0446059
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0170400   -0.0265797   -0.0075003
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0527332   -0.0610167   -0.0444497
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0110262   -0.0283387    0.0062862
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0298439   -0.0448913   -0.0147966
6-12 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         2                    1                  0.0171117    0.0048474    0.0293761
6-12 months    ki1101329-Keneba           GAMBIA                         3+                   1                 -0.0638094   -0.0748026   -0.0528163
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0191079   -0.0343757   -0.0038402
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0831219   -0.0976080   -0.0686357
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0294045   -0.0394772   -0.0193318
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0252673   -0.0354769   -0.0150576
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0218960   -0.0338684   -0.0099235
6-12 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0753448   -0.0844862   -0.0662034
6-12 months    ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          2                    1                 -0.0259010   -0.0380803   -0.0137218
6-12 months    ki1135781-COHORTS          INDIA                          3+                   1                 -0.0336296   -0.0443563   -0.0229029
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 -0.0243241   -0.0374803   -0.0111679
6-12 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.0415883   -0.0533252   -0.0298514
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0294012   -0.0365273   -0.0222752
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0413088   -0.0499960   -0.0326217
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0178509   -0.0238104   -0.0118913
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0215150   -0.0272613   -0.0157688
12-24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0719553    0.0657059    0.0782046
12-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                  0.0893656    0.0832039    0.0955273
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0462892   -0.0554585   -0.0371199
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0395602   -0.0475542   -0.0315662
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0196884    0.0099618    0.0294150
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                  0.0118986    0.0014871    0.0223100
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0379759   -0.0454547   -0.0304971
12-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.0055453   -0.0014374    0.0125280
12-24 months   ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          2                    1                 -0.0094485   -0.0148011   -0.0040959
12-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 -0.0182000   -0.0228947   -0.0135052
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 -0.0153074   -0.0213387   -0.0092762
12-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.0218199   -0.0273628   -0.0162771
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0115967   -0.0152279   -0.0079655
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0107033   -0.0140841   -0.0073226
