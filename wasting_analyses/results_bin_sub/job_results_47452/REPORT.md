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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/0ac05293-b98f-4a32-89f1-38b007a7f860/99dcfb8a-2f1b-4763-97c1-8394603bcb12/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0ac05293-b98f-4a32-89f1-38b007a7f860/99dcfb8a-2f1b-4763-97c1-8394603bcb12/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0ac05293-b98f-4a32-89f1-38b007a7f860/99dcfb8a-2f1b-4763-97c1-8394603bcb12/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0ac05293-b98f-4a32-89f1-38b007a7f860/99dcfb8a-2f1b-4763-97c1-8394603bcb12/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1865892   0.1301678   0.2430107
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2221185   0.1587888   0.2854481
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2542407   0.2012202   0.3072612
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1895945   0.0835938   0.2955952
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.3875451   0.2460019   0.5290884
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.4159472   0.3384713   0.4934231
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1350939   0.0782747   0.1919130
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1296047   0.0636024   0.1956069
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1031401   0.0614446   0.1448357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0527761   0.0291462   0.0764059
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0486686   0.0298932   0.0674440
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0598842   0.0388676   0.0809008
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1303789   0.0822027   0.1785550
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0780461   0.0331562   0.1229359
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.1684536   0.1428347   0.1940726
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2559261   0.1458085   0.3660437
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.3130965   0.1468751   0.4793179
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.3001586   0.2438439   0.3564732
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0374396   0.0300908   0.0447884
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0425250   0.0330731   0.0519768
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0559151   0.0443453   0.0674849
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0823005   0.0445635   0.1200375
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.1213721   0.0738630   0.1688812
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1140179   0.0937461   0.1342898
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0713354   0.0472428   0.0954280
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0741873   0.0564457   0.0919289
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1194935   0.1054895   0.1334975
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1023704   0.0676788   0.1370620
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.1456796   0.1083632   0.1829960
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2221054   0.1950151   0.2491958
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0944340   0.0838510   0.1050169
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0803473   0.0712634   0.0894313
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0758491   0.0672369   0.0844613
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0947753   0.0537213   0.1358294
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.0755271   0.0395037   0.1115505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.0649811   0.0319565   0.0980057
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0124737   0.0091168   0.0158306
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0100027   0.0036526   0.0163527
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0099029   0.0066315   0.0131743
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.0265022   0.0117598   0.0412445
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.0184135   0.0105383   0.0262887
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.0280495   0.0211718   0.0349273
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0162343   0.0064263   0.0260423
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0134001   0.0047405   0.0220597
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0243828   0.0152131   0.0335525
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0529446   0.0448330   0.0610562
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0309789   0.0245042   0.0374536
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0258332   0.0204304   0.0312360
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1425231   0.0938079   0.1912383
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2455296   0.1927443   0.2983150
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2454228   0.2014364   0.2894091
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1421215   0.0570516   0.2271914
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.3505245   0.1620634   0.5389855
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.4228014   0.3447023   0.5009006
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1411820   0.0955692   0.1867948
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1066153   0.0660219   0.1472087
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1211413   0.0714979   0.1707848
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0611090   0.0330723   0.0891458
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0551304   0.0333928   0.0768679
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0700469   0.0461245   0.0939694
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1188449   0.0731446   0.1645452
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0779914   0.0327314   0.1232514
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.1589084   0.1399834   0.1778335
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2831234   0.1537527   0.4124940
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2974516   0.1638141   0.4310892
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.2904654   0.2355466   0.3453842
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0342180   0.0262665   0.0421694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0446306   0.0342076   0.0550535
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0642617   0.0497092   0.0788141
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0918349   0.0490041   0.1346657
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.1123399   0.0633444   0.1613354
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1153219   0.0939367   0.1367072
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0429140   0.0253301   0.0604978
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0681536   0.0491895   0.0871178
6-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1220341   0.1075827   0.1364854
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0991740   0.0643824   0.1339656
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.1572462   0.1102273   0.2042651
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2329131   0.2042592   0.2615669
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0770467   0.0669431   0.0871503
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0838841   0.0732102   0.0945581
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0851852   0.0749243   0.0954460


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
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0263336   0.0216247   0.0310425
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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.1904142   0.9814029   1.4439390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.3625690   1.1014228   1.6856326
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 2.0440742   1.0501779   3.9786015
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 2.1938783   1.2185706   3.9497932
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.9593675   0.4961982   1.8548758
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.7634700   0.4263247   1.3672360
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9221717   0.5106211   1.6654239
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.1346857   0.6422987   2.0045372
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.5986097   0.3021362   1.1860002
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.2920315   0.8674334   1.9244650
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.2233863   0.6178281   2.4224765
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1728329   0.7331990   1.8760758
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1358288   0.8443938   1.5278500
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.4934748   1.1228423   1.9864472
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.4747426   0.8071035   2.6946552
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.3853852   0.8471695   2.2655350
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.0399787   0.6877990   1.5724879
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.6750946   1.1720312   2.3940848
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.4230634   0.9308581   2.1755298
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 2.1696253   1.5132125   3.1107820
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8508309   0.7257061   0.9975296
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8031970   0.6857400   0.9407726
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.7969067   0.5004242   1.2690439
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.6856329   0.3684866   1.2757386
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.8019001   0.4024159   1.5979578
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.7939022   0.5184767   1.2156396
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.6947912   0.3444692   1.4013874
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 1.0583867   0.5762299   1.9439852
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.8254217   0.3409083   1.9985463
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.5019358   0.7370655   3.0605303
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.5851192   0.4509035   0.7592853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.4879289   0.3774117   0.6308087
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.7227356   1.2803792   2.3179210
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.7219856   1.4155939   2.0946929
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 2.4663713   1.1061700   5.4991435
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 2.9749288   1.5904960   5.5644286
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.7551619   0.4590955   1.2421588
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.8580510   0.5095682   1.4448535
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9021638   0.4925227   1.6525115
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.1462615   0.6470487   2.0306284
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.6562452   0.3271272   1.3164842
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.3371074   0.8941797   1.9994375
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.0506078   0.5537266   1.9933605
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.0259322   0.6253853   1.6830215
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.3043023   0.9382082   1.8132484
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.8780107   1.3575713   2.5979662
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.2232803   0.6458055   2.3171292
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.2557525   0.7602551   2.0741909
6-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.5881462   0.9680276   2.6055127
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 2.8436917   1.8563238   4.3562347
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.5855581   1.0003726   2.5130582
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 2.3485290   1.6193643   3.4060209
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0887444   0.9070733   1.3068012
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.1056311   0.9278405   1.3174895


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0454002    0.0197287    0.0710717
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1907582    0.0882541    0.2932622
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0065224   -0.0573556    0.0443107
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0027124   -0.0245122    0.0190874
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0346111   -0.0137393    0.0829614
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0646719   -0.0413143    0.1706580
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0043287   -0.0024192    0.0110767
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0280649   -0.0075667    0.0636964
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0294650    0.0059370    0.0529930
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0815376    0.0473749    0.1157004
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0059275   -0.0156275    0.0037724
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0242966   -0.0606613    0.0120681
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0021645   -0.0558026    0.0514736
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0059568   -0.0124634    0.0243770
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0019710   -0.0026802    0.0066221
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0127645   -0.0397689    0.0142400
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0004064   -0.0032148    0.0024020
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0001686   -0.0141823    0.0138451
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0074188   -0.0018661    0.0167038
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0136089   -0.0212167   -0.0060011
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0835388    0.0607939    0.1062837
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.2157465    0.1303118    0.3011812
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0190322   -0.0536831    0.0156188
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0047143   -0.0305537    0.0211252
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0423615   -0.0038988    0.0886219
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0389105   -0.0854542    0.1632752
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0064667   -0.0008819    0.0138152
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0204690   -0.0196058    0.0605437
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0536743    0.0359392    0.0714094
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0917092    0.0573332    0.1260851
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0097462    0.0005669    0.0189255


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1956994    0.0555862    0.3150254
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.5015298    0.1486113    0.7081562
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0507300   -0.5307763    0.2787754
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0541792   -0.5932747    0.3025096
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.2097768   -0.1406566    0.4525497
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.2017227   -0.2068519    0.4719761
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1036369   -0.0730814    0.2512527
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.2542904   -0.1469608    0.5151684
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.2923102    0.0180708    0.4899582
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.4433609    0.2262642    0.5995440
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0669730   -0.1823140    0.0371158
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.3447369   -1.0051084    0.0981448
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0285714   -1.0471955    0.4832154
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1389914   -0.4142101    0.4757951
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2445028   -0.5993898    0.6431289
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.3201754   -1.1878788    0.2034005
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0336740   -0.2947061    0.1747302
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0064029   -0.7077370    0.4069071
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.3136519   -0.2032694    0.6085052
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.3459681   -0.5542210   -0.1656194
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.3695394    0.2204433    0.4901198
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.6028661    0.2928546    0.7769690
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1558099   -0.4748963    0.0942437
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0835943   -0.6535851    0.2899207
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.2627782   -0.0814949    0.4974586
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1208274   -0.3641303    0.4333793
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1589463   -0.0416894    0.3209383
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1822640   -0.2641637    0.4710399
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.5557022    0.3381650    0.7017376
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.4804465    0.2694247    0.6305161
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1122928    0.0000888    0.2119060
