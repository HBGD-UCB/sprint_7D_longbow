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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        parity    stunted   n_cell       n
----------  -------------------------  -----------------------------  -------  --------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0       34     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1       13     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               0       37     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               1       16     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+              0       70     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+              1       17     187
Birth       ki1101329-Keneba           GAMBIA                         1               0      140    1407
Birth       ki1101329-Keneba           GAMBIA                         1               1       16    1407
Birth       ki1101329-Keneba           GAMBIA                         2               0      138    1407
Birth       ki1101329-Keneba           GAMBIA                         2               1        8    1407
Birth       ki1101329-Keneba           GAMBIA                         3+              0     1054    1407
Birth       ki1101329-Keneba           GAMBIA                         3+              1       51    1407
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0     5332   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1      640   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2               0     3718   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2               1      407   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     3347   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+              1      385   13829
Birth       ki1135781-COHORTS          GUATEMALA                      1               0      103     852
Birth       ki1135781-COHORTS          GUATEMALA                      1               1        9     852
Birth       ki1135781-COHORTS          GUATEMALA                      2               0      124     852
Birth       ki1135781-COHORTS          GUATEMALA                      2               1       13     852
Birth       ki1135781-COHORTS          GUATEMALA                      3+              0      575     852
Birth       ki1135781-COHORTS          GUATEMALA                      3+              1       28     852
Birth       ki1135781-COHORTS          INDIA                          1               0      582    4122
Birth       ki1135781-COHORTS          INDIA                          1               1      114    4122
Birth       ki1135781-COHORTS          INDIA                          2               0      939    4122
Birth       ki1135781-COHORTS          INDIA                          2               1       98    4122
Birth       ki1135781-COHORTS          INDIA                          3+              0     2126    4122
Birth       ki1135781-COHORTS          INDIA                          3+              1      263    4122
Birth       ki1135781-COHORTS          PHILIPPINES                    1               0      629    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    1               1       46    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    2               0      645    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    2               1       42    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    3+              0     1589    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    3+              1       99    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0     7554   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1     4988   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               0     9422   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               1     3998   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+              0     9544   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+              1     3682   39188
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0      288    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1      104    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2               0      222    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2               1       82    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+              0      446    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+              1      194    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0       44     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1       28     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               0       53     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               1       31     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+              0      118     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+              1       99     373
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      170     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1       41     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               0      179     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               1       33     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+              0      140     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+              1       20     583
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      625    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       55    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      584    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1       73    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0      593    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1       65    1995
6 months    ki1101329-Keneba           GAMBIA                         1               0      175    1623
6 months    ki1101329-Keneba           GAMBIA                         1               1       19    1623
6 months    ki1101329-Keneba           GAMBIA                         2               0      150    1623
6 months    ki1101329-Keneba           GAMBIA                         2               1       14    1623
6 months    ki1101329-Keneba           GAMBIA                         3+              0     1071    1623
6 months    ki1101329-Keneba           GAMBIA                         3+              1      194    1623
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0      236    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1       70    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          2               0      240    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          2               1       58    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          3+              0      412    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          3+              1      110    1126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0     2761    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1      541    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               0     2133    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               1      389    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     2021    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+              1      449    8294
6 months    ki1135781-COHORTS          GUATEMALA                      1               0       78     961
6 months    ki1135781-COHORTS          GUATEMALA                      1               1       54     961
6 months    ki1135781-COHORTS          GUATEMALA                      2               0       88     961
6 months    ki1135781-COHORTS          GUATEMALA                      2               1       51     961
6 months    ki1135781-COHORTS          GUATEMALA                      3+              0      401     961
6 months    ki1135781-COHORTS          GUATEMALA                      3+              1      289     961
6 months    ki1135781-COHORTS          INDIA                          1               0      616    4291
6 months    ki1135781-COHORTS          INDIA                          1               1      124    4291
6 months    ki1135781-COHORTS          INDIA                          2               0      925    4291
6 months    ki1135781-COHORTS          INDIA                          2               1      171    4291
6 months    ki1135781-COHORTS          INDIA                          3+              0     1910    4291
6 months    ki1135781-COHORTS          INDIA                          3+              1      545    4291
6 months    ki1135781-COHORTS          PHILIPPINES                    1               0      474    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    1               1      100    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    2               0      497    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    2               1      109    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    3+              0     1165    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    3+              1      363    2708
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0     9200   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1     3545   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               0     8918   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               1     2472   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+              0     7005   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+              1     2421   33561
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      149     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       62     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               0      138     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               1       75     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+              0      100     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+              1       53     577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1        1       6
24 months   ki1101329-Keneba           GAMBIA                         1               0       95    1376
24 months   ki1101329-Keneba           GAMBIA                         1               1       42    1376
24 months   ki1101329-Keneba           GAMBIA                         2               0      104    1376
24 months   ki1101329-Keneba           GAMBIA                         2               1       35    1376
24 months   ki1101329-Keneba           GAMBIA                         3+              0      711    1376
24 months   ki1101329-Keneba           GAMBIA                         3+              1      389    1376
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      164     998
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1      108     998
24 months   ki1113344-GMS-Nepal        NEPAL                          2               0      136     998
24 months   ki1113344-GMS-Nepal        NEPAL                          2               1      124     998
24 months   ki1113344-GMS-Nepal        NEPAL                          3+              0      252     998
24 months   ki1113344-GMS-Nepal        NEPAL                          3+              1      214     998
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0       64     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1      113     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               0       50     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               1       84     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              0       44     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              1      101     456
24 months   ki1135781-COHORTS          GUATEMALA                      1               0       32    1067
24 months   ki1135781-COHORTS          GUATEMALA                      1               1      135    1067
24 months   ki1135781-COHORTS          GUATEMALA                      2               0       33    1067
24 months   ki1135781-COHORTS          GUATEMALA                      2               1      118    1067
24 months   ki1135781-COHORTS          GUATEMALA                      3+              0      157    1067
24 months   ki1135781-COHORTS          GUATEMALA                      3+              1      592    1067
24 months   ki1135781-COHORTS          INDIA                          1               0      347    3383
24 months   ki1135781-COHORTS          INDIA                          1               1      218    3383
24 months   ki1135781-COHORTS          INDIA                          2               0      492    3383
24 months   ki1135781-COHORTS          INDIA                          2               1      358    3383
24 months   ki1135781-COHORTS          INDIA                          3+              0      852    3383
24 months   ki1135781-COHORTS          INDIA                          3+              1     1116    3383
24 months   ki1135781-COHORTS          PHILIPPINES                    1               0      258    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    1               1      266    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    2               0      227    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    2               1      317    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    3+              0      452    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    3+              1      925    2445
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     3227   17210
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1     3081   17210
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               0     3099   17210
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               1     2736   17210
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              0     2437   17210
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              1     2630   17210


The following strata were considered:

* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
```




# Results Detail

## Results Plots
![](/tmp/4a964680-f061-455e-aa32-3cd68d5af0e9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4a964680-f061-455e-aa32-3cd68d5af0e9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4a964680-f061-455e-aa32-3cd68d5af0e9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4a964680-f061-455e-aa32-3cd68d5af0e9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2728993   0.2015306   0.3442680
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.3043072   0.1725462   0.4360683
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.1958079   0.0690292   0.3225866
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                0.1025641   0.0549386   0.1501896
Birth       ki1101329-Keneba           GAMBIA                         2                    NA                0.0547945   0.0178664   0.0917227
Birth       ki1101329-Keneba           GAMBIA                         3+                   NA                0.0461538   0.0337783   0.0585294
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1131930   0.1035226   0.1228634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1026611   0.0920136   0.1133085
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1075901   0.0956018   0.1195784
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0803571   0.0299820   0.1307322
Birth       ki1135781-COHORTS          GUATEMALA                      2                    NA                0.0948905   0.0457879   0.1439931
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.0464345   0.0296294   0.0632396
Birth       ki1135781-COHORTS          INDIA                          1                    NA                0.1584617   0.1327250   0.1841984
Birth       ki1135781-COHORTS          INDIA                          2                    NA                0.0971219   0.0784525   0.1157914
Birth       ki1135781-COHORTS          INDIA                          3+                   NA                0.1117458   0.0988780   0.1246137
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1082756   0.0858121   0.1307392
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0561510   0.0409927   0.0713092
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0492166   0.0396109   0.0588222
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4023362   0.3819835   0.4226888
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3015469   0.2873024   0.3157914
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.3325364   0.3171511   0.3479217
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2910754   0.2508203   0.3313305
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2685648   0.2356071   0.3015224
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.3133884   0.2836571   0.3431198
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1475945   0.0951125   0.2000764
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.2174397   0.1556701   0.2792093
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.3836129   0.3263102   0.4409156
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2068902   0.1657468   0.2480336
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1318022   0.0971116   0.1664928
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0788159   0.0516963   0.1059354
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0772682   0.0600462   0.0944903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1248867   0.1036110   0.1461623
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1110472   0.0923389   0.1297556
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.0559553   0.0171072   0.0948034
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.0707572   0.0145079   0.1270064
6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.1432193   0.1218005   0.1646381
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4562295   0.4051851   0.5072740
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1495176   0.1065991   0.1924361
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.2271903   0.1897189   0.2646618
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1538071   0.1402825   0.1673317
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1605968   0.1456709   0.1755228
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1937966   0.1774362   0.2101570
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2816311   0.2442039   0.3190582
6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.2428135   0.2023658   0.2832611
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.4066173   0.3735964   0.4396381
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.1279572   0.1062977   0.1496167
6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1436114   0.1235543   0.1636685
6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.2108549   0.1947687   0.2269410
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1103808   0.0872439   0.1335176
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.1492181   0.1243487   0.1740875
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2198402   0.1996279   0.2400525
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2557507   0.2367982   0.2747031
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2222139   0.2093484   0.2350793
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2288047   0.2115486   0.2460608
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2136443   0.1708000   0.2564886
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3076903   0.2638176   0.3515630
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.2135033   0.1757523   0.2512543
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.4000971   0.3514618   0.4487323
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.2666404   0.2189148   0.3143660
24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.3468253   0.3191824   0.3744682
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2850764   0.2293144   0.3408385
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.4531707   0.3894055   0.5169358
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.4641811   0.4158216   0.5125407
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.5234832   0.4786733   0.5682931
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.5421439   0.4910556   0.5932322
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.7233518   0.6830020   0.7637017
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.6896423   0.6547544   0.7245302
24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.7452267   0.7013970   0.7890565
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7918878   0.7644327   0.8193430
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3272012   0.2929488   0.3614536
24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.4076910   0.3777137   0.4376683
24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.5643219   0.5430177   0.5856261
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4016368   0.3645459   0.4387277
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.4817782   0.4465538   0.5170026
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.6629719   0.6398381   0.6861058
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4688423   0.4490469   0.4886377
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4855423   0.4646207   0.5064640
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.5522329   0.5298715   0.5745942


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2459893   0.1594019   0.3325767
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0533049   0.0415629   0.0650470
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1035505   0.0984723   0.1086287
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0586854   0.0428942   0.0744767
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1152353   0.1054865   0.1249842
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613115   0.0527962   0.0698268
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3232622   0.3156056   0.3309189
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4235925   0.3733796   0.4738054
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0967419   0.0837671   0.1097166
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1398644   0.1229849   0.1567440
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2113677   0.1776128   0.2451225
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1662648   0.1582516   0.1742780
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4099896   0.3788775   0.4411017
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1957586   0.1838852   0.2076319
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2514228   0.2432969   0.2595487
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3386628   0.3136483   0.3636773
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4468938   0.4032281   0.4905594
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6535088   0.6097853   0.6972322
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7919400   0.7675726   0.8163075
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.5001478   0.4832966   0.5169990
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6167689   0.5974942   0.6360437
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4908193   0.4776993   0.5039392


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.1150897   0.7146424   1.7399263
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.7175098   0.3718804   1.3843706
Birth       ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA                         2                    1                 0.5342466   0.2356709   1.2110933
Birth       ki1101329-Keneba           GAMBIA                         3+                   1                 0.4500000   0.2632335   0.7692791
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9069559   0.7930593   1.0372099
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.9505011   0.8261336   1.0935910
Birth       ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      2                    1                 1.1808597   0.5238079   2.6621012
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.5778515   0.2801877   1.1917454
Birth       ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          2                    1                 0.6129051   0.4766654   0.7880845
Birth       ki1135781-COHORTS          INDIA                          3+                   1                 0.7051916   0.5780453   0.8603048
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.5185928   0.3693183   0.7282024
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.4545488   0.3428698   0.6026036
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7494900   0.6999580   0.8025270
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8265138   0.7730263   0.8837023
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.9226638   0.8020952   1.0613560
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.0766571   0.8906953   1.3014444
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.4732241   0.9419378   2.3041746
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 2.5991011   1.7665376   3.8240491
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.6370634   0.4606796   0.8809806
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.3809550   0.2574543   0.5636989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.6162745   1.2225497   2.1367992
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.4371651   1.0886039   1.8973326
6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                 1.2645291   0.4401396   3.6330149
6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 2.5595292   1.2575987   5.2092850
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.3277246   0.2402389   0.4470691
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.4979737   0.4078398   0.6080275
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0441445   0.9192886   1.1859582
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.2599980   1.1160402   1.4225248
6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 0.8621686   0.7012516   1.0600114
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.4437940   1.2396628   1.6815388
6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          2                    1                 1.1223393   0.9025048   1.3957217
6 months    ki1135781-COHORTS          INDIA                          3+                   1                 1.6478546   1.3695976   1.9826443
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.3518487   1.0365191   1.7631079
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.9916533   1.5848197   2.5029239
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8688693   0.7910291   0.9543693
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8946398   0.8090511   0.9892829
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.4401991   1.1282501   1.8383988
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9993400   0.7637833   1.3075442
24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.6664393   0.5375052   0.8263013
24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 0.8668530   0.7512294   1.0002724
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.5896462   1.2519151   2.0184876
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.6282691   1.3065335   2.0292325
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0356472   0.9160885   1.1708096
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.3818053   1.2513078   1.5259122
24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.0805989   1.0017097   1.1657011
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.1482588   1.0822147   1.2183334
24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.2459948   1.0985356   1.4132478
24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.7246940   1.5448475   1.9254778
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.1995370   1.0694621   1.3454324
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.6506752   1.4970446   1.8200717
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0356196   0.9775397   1.0971504
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.1778649   1.1135529   1.2458911


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0269100   -0.1111384    0.0573183
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -0.0492592   -0.0928837   -0.0056347
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0096425   -0.0181550   -0.0011300
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0216717   -0.0677134    0.0243700
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.0432263   -0.0670285   -0.0194242
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0469642   -0.0679933   -0.0259350
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0790739   -0.0981180   -0.0600299
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0066443   -0.0354261    0.0221375
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.2759980    0.2184122    0.3335839
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0456552   -0.0800386   -0.0112719
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0194736    0.0038630    0.0350842
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0839091    0.0438706    0.1239476
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2448619   -0.2932193   -0.1965045
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0124577    0.0005144    0.0244010
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1283585    0.0882407    0.1684763
6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.0678014    0.0467838    0.0888190
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1008452    0.0776940    0.1239965
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0043279   -0.0218299    0.0131741
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1156452    0.0741058    0.1571845
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0614343   -0.1115587   -0.0113098
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1618174    0.1063136    0.2173212
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1300256    0.0901457    0.1699055
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1022977    0.0679341    0.1366613
24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.1729466    0.1400485    0.2058448
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2151321    0.1802077    0.2500565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0219770    0.0037616    0.0401924


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1093951   -0.5466720    0.2042543
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -0.9241025   -1.9135260   -0.2706839
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0931189   -0.1789009   -0.0135787
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.3692857   -1.4191803    0.2249675
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.3751135   -0.6007421   -0.1812878
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.7659929   -1.1677299   -0.4387084
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.2446124   -0.3053855   -0.1866686
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0233600   -0.1289824    0.0723809
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.6515650    0.5151563    0.7495957
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2831595   -0.5337328   -0.0735236
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2012946    0.0292199    0.3428683
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.5999317    0.2046515    0.7987616
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.1584641   -1.5155326   -0.8520799
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0749269    0.0006221    0.1437071
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.3130775    0.2178839    0.3966848
6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.3463520    0.2329132    0.4430151
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.4774282    0.3631345    0.5712104
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0172135   -0.0892925    0.0500960
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.3511961    0.2256349    0.4563979
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1814025   -0.3443751   -0.0381863
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.3620936    0.2358295    0.4674950
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1989653    0.1403037    0.2536242
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1291735    0.0858973    0.1704010
24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.3457911    0.2777033    0.4074605
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.3488050    0.2904085    0.4023957
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0447761    0.0072062    0.0809243
