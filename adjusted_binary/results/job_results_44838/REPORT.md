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

**Outcome Variable:** ever_co

## Predictor Variables

**Intervention Variable:** parity

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        parity    ever_co   n_cell       n
------------  -------------------------  -----------------------------  -------  --------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1               0      359    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1               1       89    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2               0      285    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2               1       69    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+              0      518    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+              1      193    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1               0       57     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1               1       20     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2               0       55     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2               1       37     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+              0      134     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+              1       94     397
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      232     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       39     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2               0      217     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2               1       27     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+              0      161     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+              1       24     700
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      783    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       38    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      732    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1       39    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0      724    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1       41    2357
0-24 months   ki1101329-Keneba           GAMBIA                         1               0      212    1988
0-24 months   ki1101329-Keneba           GAMBIA                         1               1       28    1988
0-24 months   ki1101329-Keneba           GAMBIA                         2               0      193    1988
0-24 months   ki1101329-Keneba           GAMBIA                         2               1       21    1988
0-24 months   ki1101329-Keneba           GAMBIA                         3+              0     1255    1988
0-24 months   ki1101329-Keneba           GAMBIA                         3+              1      279    1988
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      124     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1               1       47     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2               0      110     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2               1       45     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+              0      175     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+              1      101     602
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0     5790   13934
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1      213   13934
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               0     3993   13934
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               1      181   13934
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     3569   13934
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              1      188   13934
0-24 months   ki1135781-COHORTS          GUATEMALA                      1               0      191    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      1               1       17    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      2               0      164    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      2               1       23    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+              0      838    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+              1      108    1341
0-24 months   ki1135781-COHORTS          INDIA                          1               0      757    4623
0-24 months   ki1135781-COHORTS          INDIA                          1               1       53    4623
0-24 months   ki1135781-COHORTS          INDIA                          2               0     1093    4623
0-24 months   ki1135781-COHORTS          INDIA                          2               1       91    4623
0-24 months   ki1135781-COHORTS          INDIA                          3+              0     2307    4623
0-24 months   ki1135781-COHORTS          INDIA                          3+              1      322    4623
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1               0      586    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1               1       91    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2               0      572    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2               1      110    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+              0     1327    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+              1      359    3045
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     9103   26902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      978   26902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               0     8218   26902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               1      710   26902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              0     7200   26902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              1      693   26902
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0      414    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1       31    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2               0      328    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2               1       24    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+              0      656    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+              1       51    1504
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0       71     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1        6     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               0       86     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               1        5     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+              0      209     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+              1       19     396
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      261     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1       10     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2               0      235     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2               1        9     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+              0      174     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+              1       11     700
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      816    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        5    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      766    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        5    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0      756    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1        9    2357
0-6 months    ki1101329-Keneba           GAMBIA                         1               0      223    1822
0-6 months    ki1101329-Keneba           GAMBIA                         1               1        8    1822
0-6 months    ki1101329-Keneba           GAMBIA                         2               0      200    1822
0-6 months    ki1101329-Keneba           GAMBIA                         2               1        2    1822
0-6 months    ki1101329-Keneba           GAMBIA                         3+              0     1347    1822
0-6 months    ki1101329-Keneba           GAMBIA                         3+              1       42    1822
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1               0      162     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1               1        9     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2               0      150     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2               1        5     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+              0      266     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+              1       10     602
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0     5878   13839
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1       79   13839
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               0     4113   13839
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               1       36   13839
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     3681   13839
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+              1       52   13839
0-6 months    ki1135781-COHORTS          GUATEMALA                      1               0      152    1062
0-6 months    ki1135781-COHORTS          GUATEMALA                      1               1        0    1062
0-6 months    ki1135781-COHORTS          GUATEMALA                      2               0      146    1062
0-6 months    ki1135781-COHORTS          GUATEMALA                      2               1        3    1062
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+              0      744    1062
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+              1       17    1062
0-6 months    ki1135781-COHORTS          INDIA                          1               0      739    4443
0-6 months    ki1135781-COHORTS          INDIA                          1               1       20    4443
0-6 months    ki1135781-COHORTS          INDIA                          2               0     1114    4443
0-6 months    ki1135781-COHORTS          INDIA                          2               1       23    4443
0-6 months    ki1135781-COHORTS          INDIA                          3+              0     2473    4443
0-6 months    ki1135781-COHORTS          INDIA                          3+              1       74    4443
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1               0      658    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1               1       18    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2               0      671    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2               1       11    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+              0     1643    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+              1       43    3044
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0     9523   26795
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1      491   26795
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               0     8621   26795
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               1      283   26795
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+              0     7597   26795
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+              1      280   26795
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1               0      340    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1               1       77    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2               0      257    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2               1       64    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+              0      478    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+              1      173    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1               0       61     394
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1               1       16     394
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2               0       56     394
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2               1       35     394
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+              0      136     394
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+              1       90     394
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      194     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       33     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2               0      201     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2               1       23     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+              0      144     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+              1       19     614
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      637    1986
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       36    1986
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      613    1986
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1       38    1986
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0      624    1986
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1       38    1986
6-24 months   ki1101329-Keneba           GAMBIA                         1               0      203    1923
6-24 months   ki1101329-Keneba           GAMBIA                         1               1       24    1923
6-24 months   ki1101329-Keneba           GAMBIA                         2               0      179    1923
6-24 months   ki1101329-Keneba           GAMBIA                         2               1       19    1923
6-24 months   ki1101329-Keneba           GAMBIA                         3+              0     1231    1923
6-24 months   ki1101329-Keneba           GAMBIA                         3+              1      267    1923
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      122     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1               1       45     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2               0      107     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2               1       45     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+              0      171     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+              1      100     590
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0     4272   10692
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1      140   10692
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               0     3100   10692
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               1      150   10692
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     2885   10692
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              1      145   10692
6-24 months   ki1135781-COHORTS          GUATEMALA                      1               0      165    1211
6-24 months   ki1135781-COHORTS          GUATEMALA                      1               1       17    1211
6-24 months   ki1135781-COHORTS          GUATEMALA                      2               0      151    1211
6-24 months   ki1135781-COHORTS          GUATEMALA                      2               1       20    1211
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+              0      759    1211
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+              1       99    1211
6-24 months   ki1135781-COHORTS          INDIA                          1               0      714    4338
6-24 months   ki1135781-COHORTS          INDIA                          1               1       39    4338
6-24 months   ki1135781-COHORTS          INDIA                          2               0     1024    4338
6-24 months   ki1135781-COHORTS          INDIA                          2               1       81    4338
6-24 months   ki1135781-COHORTS          INDIA                          3+              0     2181    4338
6-24 months   ki1135781-COHORTS          INDIA                          3+              1      299    4338
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1               0      525    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1               1       83    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2               0      519    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2               1      106    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+              0     1228    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+              1      347    2808
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     6044   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      561   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               0     5373   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               1      468   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              0     4355   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              1      470   17271


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/424c6d16-8625-4517-8120-4689f1a3ba97/2282f406-c600-48ee-80e8-208cc828df3f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/424c6d16-8625-4517-8120-4689f1a3ba97/2282f406-c600-48ee-80e8-208cc828df3f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/424c6d16-8625-4517-8120-4689f1a3ba97/2282f406-c600-48ee-80e8-208cc828df3f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/424c6d16-8625-4517-8120-4689f1a3ba97/2282f406-c600-48ee-80e8-208cc828df3f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1986607   0.1666984   0.2306230
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1949153   0.1473796   0.2424509
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2714487   0.2193669   0.3235305
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2597403   0.1616757   0.3578048
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.4021739   0.3018519   0.5024959
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.4122807   0.3483058   0.4762556
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1439114   0.1020917   0.1857311
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1106557   0.0712658   0.1500457
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1297297   0.0812769   0.1781826
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0462850   0.0319103   0.0606597
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0505837   0.0351117   0.0660557
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0535948   0.0376320   0.0695576
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1166667   0.0760422   0.1572911
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0981308   0.0582628   0.1379989
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.1818774   0.1625692   0.2011857
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2748538   0.2078847   0.3418229
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2903226   0.2188048   0.3618404
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.3659420   0.3090665   0.4228175
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0354823   0.0308023   0.0401622
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0433637   0.0371846   0.0495428
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0500399   0.0430680   0.0570119
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0817308   0.0444868   0.1189748
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.1229947   0.0759041   0.1700852
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1141649   0.0938924   0.1344374
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0654321   0.0484006   0.0824636
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0768581   0.0616842   0.0920320
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1224800   0.1099469   0.1350132
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1344165   0.1087182   0.1601149
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.1612903   0.1336822   0.1888985
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2129300   0.1933859   0.2324741
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0970142   0.0904240   0.1036043
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0795251   0.0733645   0.0856857
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0877993   0.0813644   0.0942342
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0696629   0.0390803   0.1002456
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.0681818   0.0431193   0.0932443
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.0721358   0.0454418   0.0988297
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.0779221   0.0179753   0.1378689
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.0549451   0.0080670   0.1018231
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.0833333   0.0474126   0.1192540
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0369004   0.0144396   0.0593611
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0368852   0.0132190   0.0605515
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0594595   0.0253581   0.0935608
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0060901   0.0007671   0.0114131
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0064851   0.0008180   0.0121521
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0117647   0.0041223   0.0194071
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0526316   0.0191355   0.0861276
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.0322581   0.0044198   0.0600963
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.0362319   0.0141678   0.0582960
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0132617   0.0103567   0.0161667
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0086768   0.0058546   0.0114989
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0139298   0.0101700   0.0176896
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.0263505   0.0149540   0.0377470
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.0202287   0.0120447   0.0284126
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.0290538   0.0225303   0.0355773
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0266272   0.0144892   0.0387653
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0161290   0.0066732   0.0255849
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0255042   0.0179778   0.0330305
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0490314   0.0445479   0.0535148
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0317835   0.0279107   0.0356562
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0355465   0.0311998   0.0398933
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1846523   0.1558028   0.2135018
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1993769   0.1641326   0.2346213
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2657450   0.2163993   0.3150907
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2077922   0.1170543   0.2985301
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.3846154   0.2845311   0.4846997
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.3982301   0.3343261   0.4621341
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1453744   0.0994841   0.1912648
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1026786   0.0628961   0.1424611
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1165644   0.0672608   0.1658680
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0534918   0.0364876   0.0704960
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0583717   0.0403578   0.0763856
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0574018   0.0396781   0.0751255
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1057269   0.0657162   0.1457375
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0959596   0.0549235   0.1369957
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.1782377   0.1588521   0.1976232
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2694611   0.2021126   0.3368096
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2960526   0.2234171   0.3686882
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.3690037   0.3115047   0.4265027
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0317316   0.0265592   0.0369041
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0461538   0.0389400   0.0533677
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0478548   0.0402539   0.0554556
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0934066   0.0511118   0.1357014
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.1169591   0.0687713   0.1651468
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1153846   0.0939983   0.1367709
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0517928   0.0359626   0.0676231
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0733032   0.0579341   0.0886722
6-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1205645   0.1077476   0.1333814
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1365132   0.1092178   0.1638085
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.1696000   0.1401733   0.1990267
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2203175   0.1998451   0.2407898
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0849357   0.0774533   0.0924180
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0801233   0.0724634   0.0877832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0974093   0.0890987   0.1057200


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2319894   0.1917264   0.2722524
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3803526   0.3325374   0.4281678
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0500636   0.0412578   0.0588694
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1649899   0.1486698   0.1813101
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3205980   0.2832855   0.3579105
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0417683   0.0384465   0.0450902
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1103654   0.0935883   0.1271425
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1008003   0.0921209   0.1094798
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1839080   0.1701456   0.1976705
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0885064   0.0846302   0.0923827
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0704787   0.0478990   0.0930584
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.0757576   0.0496627   0.1018525
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0080611   0.0044503   0.0116719
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0398671   0.0242254   0.0555088
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120673   0.0102481   0.0138865
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0263336   0.0216247   0.0310424
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0236531   0.0182537   0.0290525
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0393357   0.0368510   0.0418204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2260619   0.1909133   0.2612105
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3578680   0.3104738   0.4052622
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0563948   0.0462467   0.0665428
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1612064   0.1447669   0.1776460
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3220339   0.2842988   0.3597690
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0406846   0.0369398   0.0444295
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1123039   0.0945135   0.1300943
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0965883   0.0877969   0.1053797
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1908832   0.1763448   0.2054216
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0867929   0.0821342   0.0914516


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.9811464   0.8070433   1.1928087
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.3663933   1.2089727   1.5443116
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.5483696   0.9848062   2.4344365
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.5872807   1.0553043   2.3874252
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.7689155   0.4856371   1.2174338
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9014553   0.5615987   1.4469792
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0928732   0.7067416   1.6899697
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.1579291   0.7530130   1.7805799
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.8411215   0.4925805   1.4362839
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.5589495   1.0832646   2.2435180
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.0562800   0.7469709   1.4936693
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.3314061   0.9972357   1.7775559
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.2221229   1.0064426   1.4840233
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.4102802   1.1640820   1.7085480
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.5048757   0.8298824   2.7288819
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.3968412   0.8565408   2.2779597
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.1746239   0.8472598   1.6284750
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.8718646   1.4151709   2.4759391
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.1999291   0.9283450   1.5509643
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.5841057   1.2813878   1.9583383
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8197264   0.7433719   0.9039236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9050152   0.8203901   0.9983697
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.9787390   0.5937712   1.6132982
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.0354976   0.6806029   1.5754490
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 0.7051282   0.2235353   2.2242827
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.0694444   0.4427694   2.5830858
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.9995902   0.4127903   2.4205521
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.6113514   0.6982030   3.7187656
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0648508   0.3094019   3.6648362
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.9317644   0.6501403   5.7398593
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.6129032   0.2097525   1.7909223
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.6884058   0.2852990   1.6610733
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.6542739   0.4420337   0.9684199
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.0503786   0.7419579   1.4870051
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.7676781   0.4245986   1.3879690
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 1.1025913   0.6772977   1.7949382
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.6057348   0.2882446   1.2729283
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.9578226   0.5564783   1.6486252
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.6482274   0.5601825   0.7501104
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7249754   0.6202530   0.8473790
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0797427   0.9186419   1.2690955
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.4391645   1.2362405   1.6753977
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.8509615   1.1133512   3.0772487
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.9164823   1.2035359   3.0517615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.7063041   0.4284969   1.1642220
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.8018219   0.4730044   1.3592227
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0912272   0.7006538   1.6995222
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0730950   0.6889353   1.6714675
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.9076179   0.5127467   1.6065831
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.6858311   1.1371274   2.4993036
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.0986842   0.7740485   1.5594721
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.3694137   1.0200483   1.8384363
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.4545055   1.1604784   1.8230293
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.5081094   1.2011323   1.8935415
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.2521499   0.6788671   2.3095529
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.2352940   0.7573270   2.0149173
6-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.4153150   0.9769759   2.0503235
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 2.3278226   1.6842632   3.2172868
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.2423711   0.9534096   1.6189117
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.6138918   1.2945517   2.0120067
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9433408   0.8308436   1.0710702
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.1468603   1.0179293   1.2921216


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0333287    0.0137346    0.0529228
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1206124    0.0302102    0.2110146
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0153400   -0.0471282    0.0164481
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0037786   -0.0080630    0.0156202
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0483233    0.0093589    0.0872876
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0457442   -0.0119551    0.1034435
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0062861    0.0025357    0.0100365
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0286346   -0.0065546    0.0638239
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0353682    0.0191276    0.0516089
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0494915    0.0259086    0.0730744
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0085078   -0.0132365   -0.0037790
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0008158   -0.0201979    0.0218295
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0021645   -0.0558026    0.0514736
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0059568   -0.0124634    0.0243770
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0019710   -0.0026802    0.0066221
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0127645   -0.0397689    0.0142400
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0011944   -0.0033118    0.0009230
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0000169   -0.0103937    0.0103599
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0029741   -0.0135120    0.0075638
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0096957   -0.0129862   -0.0064051
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0414096    0.0193523    0.0634670
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1500758    0.0648616    0.2352900
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0232246   -0.0581637    0.0117145
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0029029   -0.0111028    0.0169087
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0554796    0.0168380    0.0941211
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0525728   -0.0056682    0.1108139
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0089530    0.0046288    0.0132771
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0188973   -0.0206964    0.0584909
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0447955    0.0292749    0.0603160
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0543700    0.0291954    0.0795447
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0018572   -0.0037240    0.0074385


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1436648    0.0689590    0.2123763
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.3171067    0.0335836    0.5174511
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1193112   -0.3950884    0.1019511
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0754764   -0.1936321    0.2839134
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.2928862    0.0142963    0.4927381
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1426840   -0.0573945    0.3049040
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1504986    0.0566155    0.2350387
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.2594530   -0.1359703    0.5172322
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.3508743    0.1711203    0.4916461
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2691100    0.1302095    0.3858290
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0961258   -0.1503201   -0.0444848
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0115752   -0.3363813    0.2689334
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0285714   -1.0471955    0.4832154
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1389914   -0.4142101    0.4757951
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2445028   -0.5993898    0.6431289
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.3201754   -1.1878788    0.2034005
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0989748   -0.2884987    0.0626722
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0006419   -0.4835574    0.3250789
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.1257396   -0.6709957    0.2415961
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.2464850   -0.3313888   -0.1669956
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1831783    0.0941375    0.2634669
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.4193608    0.1284541    0.6131679
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1901322   -0.5110407    0.0626232
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0514753   -0.2322238    0.2698573
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.3441523    0.0575609    0.5435926
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1632524   -0.0383761    0.3257294
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2200581    0.1082727    0.3178304
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1682692   -0.2695733    0.4551113
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.4637773    0.2831145    0.5989112
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2848341    0.1414317    0.4042846
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0213985   -0.0451512    0.0837106
