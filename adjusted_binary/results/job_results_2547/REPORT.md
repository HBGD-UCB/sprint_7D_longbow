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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country                        parity    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  -------  -------------  -------  ------
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0      289    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1      162    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    0      266    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1       93    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   0      534    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1      186    1530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       46     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       31     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    0       58     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1       33     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   0      139     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1       89     396
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0      245     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1       26     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    0      218     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1       26     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   0      171     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1       14     700
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      775    2363
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       67    2363
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      731    2363
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1       43    2363
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   0      698    2363
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1       49    2363
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0      198    1853
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1       37    1853
0-6 months    ki1101329-Keneba           GAMBIA                         2                    0      187    1853
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1       18    1853
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   0     1320    1853
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1       93    1853
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      143     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       28     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    0      142     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1       13     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   0      250     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1       26     602
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     5401   14050
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      658   14050
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    0     3784   14050
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1      421   14050
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   0     3386   14050
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1      400   14050
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    0      130    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1       29    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    0      137    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1       21    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   0      677    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1       97    1091
0-6 months    ki1135781-COHORTS          INDIA                          1                    0      642    4473
0-6 months    ki1135781-COHORTS          INDIA                          1                    1      123    4473
0-6 months    ki1135781-COHORTS          INDIA                          2                    0     1031    4473
0-6 months    ki1135781-COHORTS          INDIA                          2                    1      113    4473
0-6 months    ki1135781-COHORTS          INDIA                          3+                   0     2268    4473
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1      296    4473
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0      632    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1       46    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    0      647    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1       43    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   0     1591    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1       99    3058
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     6291   27145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1     3895   27145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    0     6368   27145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1     2614   27145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   0     5747   27145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1     2230   27145
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      226     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       63     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    0      164     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1       78     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   0      267     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1      166     964
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       26     224
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       20     224
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    0       26     224
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1       29     224
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   0       45     224
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1       78     224
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      138     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       44     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0      140     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1       44     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   0      100     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1       31     497
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      563    1822
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       80    1822
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      513    1822
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1       83    1822
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   0      505    1822
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1       78    1822
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0      167    1684
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1       42    1684
6-24 months   ki1101329-Keneba           GAMBIA                         2                    0      150    1684
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1       37    1684
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   0      902    1684
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1      386    1684
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       76     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       59     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0       73     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       53     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   0      116     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1      103     480
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     3430    9316
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      466    9316
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    0     2433    9316
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1      400    9316
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   0     2187    9316
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1      400    9316
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0       38     624
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1       49     624
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    0       40     624
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1       52     624
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   0      195     624
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1      250     624
6-24 months   ki1135781-COHORTS          INDIA                          1                    0      622    3484
6-24 months   ki1135781-COHORTS          INDIA                          2                    0      934    3484
6-24 months   ki1135781-COHORTS          INDIA                          3+                   0     1928    3484
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0      307    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1      209    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    0      280    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1      244    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   0      547    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1      637    2224
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     4065   13298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      867   13298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     3757   13298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1      919   13298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   0     2856   13298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1      834   13298
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      201    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1      251    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    0      159    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1      201    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   0      262    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1      459    1533
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       26     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       51     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    0       24     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1       68     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   0       43     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1      185     397
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      171     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1      100     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0      149     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1       95     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   0      117     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1       68     700
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      658    2363
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      184    2363
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      599    2363
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1      175    2363
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   0      574    2363
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1      173    2363
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0      157    1990
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1       84    1990
0-24 months   ki1101329-Keneba           GAMBIA                         2                    0      149    1990
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1       65    1990
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   0      861    1990
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1      674    1990
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       69     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1      102     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0       73     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       82     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   0      112     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1      164     602
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     4399   14072
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1     1669   14072
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    0     2984   14072
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1     1228   14072
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   0     2572   14072
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1     1220   14072
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0       61    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1      152    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    0       53    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1      139    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   0      265    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1      690    1360
0-24 months   ki1135781-COHORTS          INDIA                          1                    0      613    4630
0-24 months   ki1135781-COHORTS          INDIA                          1                    1      199    4630
0-24 months   ki1135781-COHORTS          INDIA                          2                    0      964    4630
0-24 months   ki1135781-COHORTS          INDIA                          2                    1      221    4630
0-24 months   ki1135781-COHORTS          INDIA                          3+                   0     1956    4630
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1      677    4630
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0      356    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1      322    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    0      322    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1      368    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   0      632    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1     1058    3058
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     5245   27211
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     4983   27211
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     5275   27211
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1     3726   27211
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   0     4614   27211
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1     3368   27211


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

```
##       ever_stunted
## parity    0
##     1   622
##     2   934
##     3+ 1928
```




# Results Detail

## Results Plots
![](/tmp/a09e8f46-1fc0-4a8f-b0c1-988fc12246c3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a09e8f46-1fc0-4a8f-b0c1-988fc12246c3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a09e8f46-1fc0-4a8f-b0c1-988fc12246c3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a09e8f46-1fc0-4a8f-b0c1-988fc12246c3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5418314   0.4994195   0.5842433
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.5809313   0.5472545   0.6146082
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.6678254   0.6276413   0.7080095
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3337772   0.2811598   0.3863945
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.5331658   0.4828454   0.5834862
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.7363693   0.6935052   0.7792334
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2654055   0.2283791   0.3024318
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2829754   0.2431534   0.3227973
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1789556   0.1445549   0.2133563
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1895794   0.1663012   0.2128576
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2110864   0.1852904   0.2368824
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.2124029   0.1869964   0.2378094
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1097626   0.0819017   0.1376234
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1829707   0.1476204   0.2183210
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.4148680   0.3898801   0.4398559
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7388129   0.6832442   0.7943816
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.5567862   0.4896965   0.6238759
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.6291197   0.5812296   0.6770097
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2469649   0.2339611   0.2599688
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2873785   0.2724232   0.3023337
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.3755282   0.3550844   0.3959721
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.6996789   0.6625917   0.7367662
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.6075511   0.5665949   0.6485072
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7061253   0.6801645   0.7320861
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.2149273   0.1878731   0.2419815
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.1875982   0.1651881   0.2100083
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.2479506   0.2313448   0.2645564
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3858909   0.3508294   0.4209525
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.4569787   0.4229439   0.4910135
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.6084931   0.5858298   0.6311564
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4727255   0.4551203   0.4903307
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4208943   0.4080764   0.4337122
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.4475436   0.4300077   0.4650795
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4412854   0.3965119   0.4860590
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2800706   0.2518900   0.3082512
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2582575   0.2166265   0.2998885
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3074534   0.2562613   0.3586454
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.3868588   0.3311490   0.4425686
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.3818419   0.3311741   0.4325097
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1065680   0.0840444   0.1290916
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1213034   0.0968740   0.1457327
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0456729   0.0270709   0.0642749
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0781798   0.0624858   0.0938739
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0477200   0.0337801   0.0616600
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0544178   0.0402084   0.0686272
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.0571417   0.0408799   0.0734034
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.3364134   0.3054419   0.3673849
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.0721586   0.0574246   0.0868925
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1372465   0.0978743   0.1766186
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.0628093   0.0308694   0.0947491
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.0675138   0.0399067   0.0951208
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1220106   0.1120027   0.1320185
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1057272   0.0950190   0.1164355
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1123838   0.1005285   0.1242392
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.4432727   0.4076240   0.4789214
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.1734187   0.1397978   0.2070397
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1084280   0.0890418   0.1278143
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.1533059   0.1287427   0.1778692
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1053647   0.0865583   0.1241712
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.1177590   0.1049555   0.1305626
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0918546   0.0707183   0.1129909
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0546992   0.0400282   0.0693703
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0483142   0.0387303   0.0578980
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3766906   0.3596513   0.3937298
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2941078   0.2817992   0.3064164
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2815705   0.2648690   0.2982720
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1879493   0.1529149   0.2229838
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.3234000   0.2884281   0.3583719
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.4078534   0.3764583   0.4392486
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2984706   0.2228710   0.3740702
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.3851333   0.3156747   0.4545919
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.5793751   0.5126691   0.6460812
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1204872   0.0854185   0.1555559
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1609782   0.1202219   0.2017345
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0931901   0.0589420   0.1274383
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1090089   0.0881958   0.1298219
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1312850   0.1079249   0.1546451
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1121393   0.0905819   0.1336968
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.0480766   0.0321725   0.0639807
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1000488   0.0677493   0.1323484
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.2790723   0.2546061   0.3035385
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5638452   0.5007657   0.6269246
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.5185343   0.4437659   0.5933028
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.5234591   0.4683745   0.5785436
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0966700   0.0863760   0.1069639
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1308474   0.1185896   0.1431052
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2655953   0.2476358   0.2835548
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.3285117   0.2790070   0.3780163
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.3272030   0.2802554   0.3741506
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.5458594   0.5047441   0.5869748
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3239037   0.2877452   0.3600621
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.4018592   0.3642546   0.4394638
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.5410115   0.5137590   0.5682641
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1667447   0.1517197   0.1817697
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1949079   0.1812530   0.2085629
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2483306   0.2290962   0.2675650


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5942596   0.5539147   0.6346046
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7657431   0.7240285   0.8074577
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3757143   0.3398113   0.4116172
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2251375   0.2082936   0.2419815
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4135678   0.3919251   0.4352106
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5780731   0.5385891   0.6175571
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2925668   0.2850499   0.3000837
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7213235   0.6974864   0.7451606
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2369330   0.2246841   0.2491820
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5716154   0.5540738   0.5891570
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4438279   0.4363078   0.4513480
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2882353   0.2618269   0.3146436
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3863636   0.3383457   0.4343815
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0942857   0.0726222   0.1159492
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0672873   0.0571844   0.0773903
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0798705   0.0675239   0.0922170
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1112957   0.0861520   0.1364394
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1052669   0.1001921   0.1103417
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1347388   0.1144687   0.1550088
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1189358   0.1094482   0.1284235
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0614781   0.0529631   0.0699931
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3219377   0.3151813   0.3286942
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3184647   0.2882909   0.3486385
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.5669643   0.5019310   0.6319975
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2394366   0.2018814   0.2769918
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1322722   0.1167119   0.1478326
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2761283   0.2547687   0.2974878
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4479167   0.4033837   0.4924496
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1358952   0.1289363   0.1428542
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5625000   0.5235458   0.6014542
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4901079   0.4693271   0.5108888
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1970221   0.1889626   0.2050817


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0721626   1.0103579   1.1377479
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.2325336   1.1387599   1.3340293
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.5973705   1.3527811   1.8861827
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 2.2061705   1.8660424   2.6082947
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.0662002   0.8767680   1.2965607
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.6742725   0.5297788   0.8581759
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1134458   0.9379020   1.3218454
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.1203905   0.9450867   1.3282113
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.6669682   1.2181579   2.2811354
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 3.7796859   2.9102511   4.9088636
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.7536227   0.6540824   0.8683114
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.8515277   0.7648573   0.9480192
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1636409   1.0809921   1.2526086
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.5205731   1.4100346   1.6397772
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 0.8683284   0.7986932   0.9440348
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.0092133   0.9485190   1.0737913
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 0.8728449   0.7342969   1.0375343
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.1536489   1.0011561   1.3293690
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.1842172   1.0543906   1.3300293
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.5768525   1.4297796   1.7390540
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8903566   0.8503192   0.9322791
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9467303   0.8985919   0.9974475
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.6346699   0.5673591   0.7099665
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.5852391   0.4825695   0.7097522
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.2582683   1.0144200   1.5607334
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.2419507   1.0090563   1.5285981
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.1382720   0.8573200   1.5112948
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.4285799   0.2720070   0.6752794
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.6103881   0.4292904   0.8678827
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.6960593   0.5019163   0.9652977
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 5.8873573   4.3493999   7.9691399
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 1.2628011   0.8914381   1.7888698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.4576384   0.2561640   0.8175736
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.4919163   0.2999146   0.8068350
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.8665415   0.7607937   0.9869878
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.9210988   0.8059980   1.0526364
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 0.3912236   0.3187278   0.4802088
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.2446079   0.2024391   0.2955607
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.6872841   0.5408663   0.8733387
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 0.7681307   0.6330854   0.9319830
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.5954977   0.4186525   0.8470449
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.5259851   0.3890244   0.7111645
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7807677   0.7347584   0.8296581
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7474850   0.6942716   0.8047770
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.7206766   1.4066848   2.1047557
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 2.1700179   1.8639936   2.5262843
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.2903559   0.9599832   1.7344244
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.9411463   1.4782001   2.5490790
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.3360605   0.9115292   1.9583109
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.7734439   0.4799368   1.2464464
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.2043517   0.9287706   1.5617021
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0287178   0.7852559   1.3476630
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 2.0810273   1.3183717   3.2848663
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 5.8047382   4.1182094   8.1819504
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9196396   0.7669855   1.1026765
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.9283738   0.7958614   1.0829498
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.3535475   1.1752577   1.5588843
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 2.7474441   2.4235687   3.1146009
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 0.9960164   0.8173729   1.2137040
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.6616135   1.4058441   1.9639158
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.2406751   1.0742076   1.4329396
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.6702853   1.4784952   1.8869543
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.1689005   1.0466956   1.3053732
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.4892867   1.3292783   1.6685556


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0524282    0.0191470    0.0857094
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.4319659    0.3792848    0.4846471
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1103088    0.0766565    0.1439611
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0355581    0.0154523    0.0556640
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.3038053    0.2723247    0.3352859
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1607398   -0.2136197   -0.1078599
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0456019    0.0341035    0.0571002
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0216446   -0.0146522    0.0579414
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0220058   -0.0036035    0.0476150
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1857245    0.1526096    0.2188394
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0288977   -0.0450435   -0.0127518
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1530501   -0.1873372   -0.1187630
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0789103    0.0262377    0.1315828
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0122823   -0.0318413    0.0072767
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0108925   -0.0235870    0.0018020
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0227288    0.0065732    0.0388844
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0259508   -0.0598295    0.0079279
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0167437   -0.0256120   -0.0078755
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.3085339   -0.3432858   -0.2737821
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0343701   -0.0572191   -0.0115211
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0303765   -0.0501260   -0.0106271
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0547528   -0.0706191   -0.0388865
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1305154    0.1021833    0.1588475
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.2684937    0.1929002    0.3440872
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1189494    0.0858408    0.1520580
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0232634    0.0050927    0.0414341
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.2280516    0.2049140    0.2511892
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1159285   -0.1751596   -0.0566974
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0392253    0.0299228    0.0485277
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.2339883    0.1816872    0.2862894
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1662042    0.1318187    0.2005898
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0302774    0.0164900    0.0440649


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0882244    0.0323737    0.1408515
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.5641134    0.4960775    0.6229636
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.2935976    0.2073308    0.3704760
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1579397    0.0657096    0.2410651
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.7345960    0.6598428    0.7929213
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2780614   -0.3808993   -0.1828820
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1558682    0.1159005    0.1940291
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0300068   -0.0213425    0.0787744
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0928776   -0.0213935    0.1943642
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.3249116    0.2651262    0.3798332
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0651101   -0.1021686   -0.0292975
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.5309902   -0.6614546   -0.4107705
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.2042383    0.0677669    0.3207315
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1302666   -0.3747283    0.0707236
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1618803   -0.3704228    0.0149276
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.2845709    0.0665988    0.4516411
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2331696   -0.5931558    0.0454748
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1590595   -0.2472030   -0.0771453
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -2.2898673   -2.8050275   -1.8444543
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.2889802   -0.4982833   -0.1089159
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.4941035   -0.8653597   -0.1967371
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1700727   -0.2206658   -0.1215766
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.4098268    0.3168180    0.4901734
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.4735636    0.3382721    0.5811946
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.4967887    0.3627134    0.6026565
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1758750    0.0306068    0.2993740
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.8258902    0.7602573    0.8735552
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2588171   -0.4088832   -0.1247352
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2886435    0.2186983    0.3523269
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.4159793    0.3252960    0.4944743
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.3391177    0.2669117    0.4042116
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1536753    0.0813172    0.2203343
