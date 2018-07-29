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
![](/tmp/cbb18427-b83f-48e8-9137-bd5fd16bd4b7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/cbb18427-b83f-48e8-9137-bd5fd16bd4b7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0680770    0.0411543    0.0949997
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                 0.0235206    0.0020103    0.0450310
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                 0.0061336   -0.0222608    0.0345279
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0625591   -0.0810879   -0.0440303
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0088683   -0.0279430    0.0102064
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.1218186   -0.1387551   -0.1048821
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.4155894   -0.4378283   -0.3933505
0-3 months     ki1101329-Keneba           GAMBIA                         2                    NA                -0.6680490   -0.7256859   -0.6104121
0-3 months     ki1101329-Keneba           GAMBIA                         3+                   NA                -0.2958479   -0.3222867   -0.2694091
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0927508   -0.1100854   -0.0754162
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.1082826   -0.1262028   -0.0903625
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.1120355   -0.1290949   -0.0949760
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.3843631   -0.4046641   -0.3640620
0-3 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.4838971   -0.5073422   -0.4604520
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.5489855   -0.5724283   -0.5255427
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0058013   -0.0253148    0.0137122
0-3 months     ki1135781-COHORTS          INDIA                          2                    NA                -0.0303158   -0.0462636   -0.0143679
0-3 months     ki1135781-COHORTS          INDIA                          3+                   NA                -0.0884967   -0.1004684   -0.0765250
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0790024    0.0663168    0.0916881
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                 0.0866916    0.0784796    0.0949035
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                 0.0369792    0.0270539    0.0469046
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1123028    0.0786912    0.1459145
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                 0.0202113    0.0008674    0.0395552
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -0.0681892   -0.0922761   -0.0441024
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0618238   -0.0824714   -0.0411762
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0375115   -0.0540476   -0.0209753
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.0183306   -0.0341098   -0.0025515
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1155044   -0.1381805   -0.0928282
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1058839   -0.1306431   -0.0811247
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.1516010   -0.1746076   -0.1285943
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.3145294    0.2896912    0.3393677
3-6 months     ki1101329-Keneba           GAMBIA                         2                    NA                 0.1492271    0.1251040    0.1733501
3-6 months     ki1101329-Keneba           GAMBIA                         3+                   NA                -0.0702228   -0.0912740   -0.0491717
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0342598    0.0075615    0.0609582
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.1040565   -0.1386054   -0.0695076
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.1400402   -0.1611310   -0.1189495
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0336337    0.0193181    0.0479493
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0288336   -0.0435761   -0.0140911
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0363514   -0.0513173   -0.0213854
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1814844    0.1622603    0.2007085
3-6 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.1134765   -0.1272049   -0.0997482
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.1046472   -0.1201492   -0.0891452
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                 0.0161028    0.0011882    0.0310175
3-6 months     ki1135781-COHORTS          INDIA                          2                    NA                -0.0538032   -0.0671073   -0.0404991
3-6 months     ki1135781-COHORTS          INDIA                          3+                   NA                -0.0684432   -0.0775022   -0.0593842
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0378203    0.0285994    0.0470411
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0120619   -0.0203127   -0.0038111
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -0.0762989   -0.0868131   -0.0657847
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0627632   -0.0755429   -0.0499836
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.0952713   -0.1047783   -0.0857643
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -0.0915327   -0.0968549   -0.0862105
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0535626   -0.0832176   -0.0239076
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                -0.0762717   -0.1092241   -0.0433193
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                -0.1174989   -0.1452886   -0.0897092
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0157577   -0.0228195   -0.0086959
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0372158   -0.0454811   -0.0289506
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.0844056   -0.0906500   -0.0781612
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0422593   -0.0540325   -0.0304860
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0529686   -0.0664743   -0.0394629
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.0694724   -0.0800925   -0.0588524
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0090460    0.0018811    0.0162110
6-12 months    ki1101329-Keneba           GAMBIA                         2                    NA                 0.0039672   -0.0069874    0.0149218
6-12 months    ki1101329-Keneba           GAMBIA                         3+                   NA                -0.0617350   -0.0702181   -0.0532520
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0522708   -0.0658021   -0.0387394
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0552942   -0.0666048   -0.0439836
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.1125467   -0.1233715   -0.1017219
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0245219   -0.0314937   -0.0175500
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0563142   -0.0638423   -0.0487860
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0533146   -0.0611231   -0.0455062
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0516027   -0.0576136   -0.0455918
6-12 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.0754695   -0.0862978   -0.0646413
6-12 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.1240368   -0.1316393   -0.1164343
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0716463   -0.0807390   -0.0625535
6-12 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.0977043   -0.1058071   -0.0896015
6-12 months    ki1135781-COHORTS          INDIA                          3+                   NA                -0.1050203   -0.1106063   -0.0994343
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0710217   -0.0808470   -0.0611964
6-12 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.0952828   -0.1040266   -0.0865389
6-12 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -0.1123750   -0.1188210   -0.1059291
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0522521   -0.0586227   -0.0458814
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0796207   -0.0834738   -0.0757675
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -0.0911235   -0.0966169   -0.0856302
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0077311   -0.0117307   -0.0037315
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0306885   -0.0353386   -0.0260384
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.0344621   -0.0386830   -0.0302412
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0935209   -0.0973948   -0.0896469
12-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0300800   -0.0351910   -0.0249690
12-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                -0.0198593   -0.0241624   -0.0155562
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0372647    0.0302413    0.0442881
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0298598   -0.0380241   -0.0216955
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.0130177   -0.0184519   -0.0075836
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0393254   -0.0482729   -0.0303779
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0115192   -0.0200232   -0.0030151
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0299707   -0.0388704   -0.0210711
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0401127   -0.0458288   -0.0343966
12-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.0726580   -0.0774313   -0.0678847
12-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.0317601   -0.0357796   -0.0277406
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0227507   -0.0267725   -0.0187289
12-24 months   ki1135781-COHORTS          INDIA                          2                    NA                -0.0329825   -0.0366034   -0.0293616
12-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                -0.0414893   -0.0440091   -0.0389695
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0370485   -0.0417569   -0.0323400
12-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.0524737   -0.0564087   -0.0485387
12-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -0.0590310   -0.0620744   -0.0559875
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0119269   -0.0147541   -0.0090996
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0219203   -0.0243934   -0.0194472
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -0.0220097   -0.0242730   -0.0197465


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
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0840487   -0.1007413   -0.0673560
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0278645   -0.0482582   -0.0074707
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1659967   -0.1845182   -0.1474752
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0009676   -0.0102953    0.0083602
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0963382   -0.1109683   -0.0817082
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0633737   -0.0703095   -0.0564379
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0034446   -0.0083108    0.0014217
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0862318   -0.0909003   -0.0815633
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1077712   -0.1389671   -0.0765754
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0595335   -0.0687862   -0.0502807
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0627772   -0.0712590   -0.0542954
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0614960   -0.0697225   -0.0532696
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0492642   -0.0539207   -0.0446077
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1091173   -0.1161782   -0.1020564
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0957304   -0.1001246   -0.0913361
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0999391   -0.1050516   -0.0948266
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0748465   -0.0776904   -0.0720026
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0201573   -0.0242768   -0.0160377
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0155649   -0.0206065   -0.0105234
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0517435   -0.0609232   -0.0425638
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0295389   -0.0332082   -0.0258696
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.0374666   -0.0395050   -0.0354283
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0576520   -0.0601763   -0.0551277
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0187787   -0.0206287   -0.0169287


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0445564   -0.0774452   -0.0116676
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0619435   -0.1116464   -0.0122406
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0536908    0.0290599    0.0783216
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0592595   -0.0828584   -0.0356607
0-3 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         2                    1                 -0.2524596   -0.3115183   -0.1934010
0-3 months     ki1101329-Keneba           GAMBIA                         3+                   1                  0.1197415    0.0866276    0.1528555
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0155318   -0.0402485    0.0091849
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0192847   -0.0435402    0.0049709
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0995340   -0.1289977   -0.0700704
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.1646224   -0.1937528   -0.1354920
0-3 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          2                    1                 -0.0245144   -0.0496212    0.0005923
0-3 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.0826954   -0.1055351   -0.0598557
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0076891   -0.0071635    0.0225417
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0420232   -0.0584202   -0.0256262
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0920915   -0.1254139   -0.0587692
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.1804921   -0.2266599   -0.1343243
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0243123   -0.0008173    0.0494419
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.0434932    0.0190730    0.0679133
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0096205   -0.0234137    0.0426547
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0360966   -0.0681385   -0.0040547
3-6 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         2                    1                 -0.1653024   -0.1976711   -0.1329336
3-6 months     ki1101329-Keneba           GAMBIA                         3+                   1                 -0.3847522   -0.4163394   -0.3531651
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.1383163   -0.1797389   -0.0968937
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.1743001   -0.2099034   -0.1386967
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0624673   -0.0829662   -0.0419684
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0699851   -0.0905841   -0.0493860
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.2949609   -0.3183146   -0.2716072
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.2861315   -0.3103279   -0.2619351
3-6 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          2                    1                 -0.0699060   -0.0897775   -0.0500346
3-6 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.0845460   -0.1019708   -0.0671213
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0498822   -0.0618756   -0.0378888
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.1141191   -0.1280065   -0.1002318
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0325081   -0.0512253   -0.0137909
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0287695   -0.0450532   -0.0124858
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 -0.0227091   -0.0647047    0.0192865
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 -0.0639363   -0.1010795   -0.0267931
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0214581   -0.0324062   -0.0105100
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0686479   -0.0778495   -0.0594462
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0107093   -0.0281306    0.0067121
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0272131   -0.0426371   -0.0117892
6-12 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         2                    1                 -0.0050789   -0.0174769    0.0073192
6-12 months    ki1101329-Keneba           GAMBIA                         3+                   1                 -0.0707811   -0.0816523   -0.0599098
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0030234   -0.0206666    0.0146197
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0602760   -0.0776059   -0.0429461
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0317923   -0.0419939   -0.0215907
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0287928   -0.0391924   -0.0183932
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0238669   -0.0358108   -0.0119230
6-12 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0724341   -0.0815374   -0.0633308
6-12 months    ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          2                    1                 -0.0260580   -0.0381958   -0.0139202
6-12 months    ki1135781-COHORTS          INDIA                          3+                   1                 -0.0333740   -0.0440025   -0.0227455
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 -0.0242611   -0.0373549   -0.0111674
6-12 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.0413533   -0.0530320   -0.0296747
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0273686   -0.0345524   -0.0201848
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0388715   -0.0470270   -0.0307159
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0229574   -0.0291261   -0.0167888
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0267310   -0.0326712   -0.0207909
12-24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0634409    0.0573129    0.0695689
12-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                  0.0736616    0.0678518    0.0794713
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0671245   -0.0782681   -0.0559809
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0502825   -0.0593687   -0.0411962
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0278062    0.0155672    0.0400452
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                  0.0093547   -0.0036085    0.0223179
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0325453   -0.0396979   -0.0253927
12-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.0083526    0.0014953    0.0152098
12-24 months   ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          2                    1                 -0.0102318   -0.0156034   -0.0048602
12-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 -0.0187386   -0.0234468   -0.0140304
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 -0.0154253   -0.0214664   -0.0093842
12-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.0219825   -0.0275381   -0.0164269
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0099935   -0.0136820   -0.0063050
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0100829   -0.0136132   -0.0065526
