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
      W: []
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

unadjusted

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
##       ever_stunted
## parity    0
##     1   622
##     2   934
##     3+ 1928
```




# Results Detail

## Results Plots
![](/tmp/e7cc6d45-686e-431e-8c6c-62873c7fd1f4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e7cc6d45-686e-431e-8c6c-62873c7fd1f4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e7cc6d45-686e-431e-8c6c-62873c7fd1f4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e7cc6d45-686e-431e-8c6c-62873c7fd1f4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5553097   0.5090848   0.6015346
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.5583333   0.4868382   0.6298284
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.6366158   0.5866361   0.6865956
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.6623377   0.5565752   0.7681001
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.7391304   0.6492895   0.8289713
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.8114035   0.7605626   0.8622444
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3690037   0.3115123   0.4264951
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3893443   0.3281193   0.4505693
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.3675676   0.2980414   0.4370937
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2185273   0.1906087   0.2464459
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2260982   0.1966227   0.2555737
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.2315930   0.2013352   0.2618509
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3485477   0.2883720   0.4087234
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.3037383   0.2421091   0.3653675
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.4390879   0.4142551   0.4639208
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5964912   0.5228977   0.6700847
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.5290323   0.4503857   0.6076789
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.5942029   0.5362231   0.6521827
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2750494   0.2638137   0.2862851
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2915480   0.2778224   0.3052735
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.3217300   0.3068611   0.3365988
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7136150   0.6528820   0.7743481
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.7239583   0.6607024   0.7872143
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7225131   0.6941045   0.7509217
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.2450739   0.2154857   0.2746620
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.1864979   0.1643184   0.2086774
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.2571212   0.2404257   0.2738166
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4749263   0.4373315   0.5125210
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.5333333   0.4961030   0.5705637
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.6260355   0.6029632   0.6491078
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4871920   0.4756213   0.4987627
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4139540   0.4024946   0.4254134
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.4219494   0.4097087   0.4341901
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3592018   0.3072465   0.4111570
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2590529   0.2170897   0.3010162
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2583333   0.2149883   0.3016784
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4025974   0.2929191   0.5122757
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.3626374   0.2637351   0.4615396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.3903509   0.3269497   0.4537520
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0959410   0.0608517   0.1310302
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1065574   0.0678148   0.1453000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0756757   0.0375372   0.1138141
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0795724   0.0612889   0.0978560
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0555556   0.0394149   0.0716962
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0655957   0.0478381   0.0833533
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1574468   0.1108671   0.2040265
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.0878049   0.0490531   0.1265567
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.0658174   0.0528850   0.0787499
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1637427   0.1082339   0.2192515
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.0838710   0.0401965   0.1275454
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.0942029   0.0597122   0.1286936
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1085988   0.1007643   0.1164333
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1001189   0.0910463   0.1091915
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1056524   0.0958605   0.1154443
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1823899   0.1223387   0.2424412
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.1329114   0.0799534   0.1858694
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1253230   0.1019876   0.1486584
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.1607843   0.1347513   0.1868173
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.0987762   0.0814850   0.1160675
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.1154446   0.1030741   0.1278151
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0678466   0.0489139   0.0867793
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0623188   0.0442790   0.0803586
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0585799   0.0473818   0.0697779
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3823876   0.3714514   0.3933237
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2910265   0.2802833   0.3017697
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2795537   0.2686268   0.2904806
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2179931   0.1763772   0.2596089
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.3223140   0.2622947   0.3823334
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.3833718   0.3387228   0.4280208
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4347826   0.2912057   0.5783595
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.5272727   0.3950332   0.6595123
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.6341463   0.5488333   0.7194594
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2417582   0.1794932   0.3040233
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2391304   0.1774356   0.3008253
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.2366412   0.1637862   0.3094962
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1244168   0.0988986   0.1499350
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1392617   0.1114585   0.1670650
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1337907   0.1061495   0.1614320
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2009569   0.1466143   0.2552996
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1978610   0.1407445   0.2549774
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.2996894   0.2746629   0.3247159
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4370370   0.3532777   0.5207963
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.4206349   0.3343481   0.5069218
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.4703196   0.4041464   0.5364929
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1196099   0.1094196   0.1298001
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1411931   0.1283697   0.1540165
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1546193   0.1406867   0.1685518
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.5632184   0.4589129   0.6675239
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.5652174   0.4638388   0.6665960
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.5617978   0.5156614   0.6079341
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4050388   0.3626731   0.4474044
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.4656489   0.4229297   0.5083680
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.5380068   0.5096026   0.5664109
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1757908   0.1645132   0.1870683
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1965355   0.1838417   0.2092293
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2260163   0.2113463   0.2406862


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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0054449   0.8781547   1.1511860
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.1464157   1.0220096   1.2859655
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.1159420   0.9130357   1.3639407
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.2250602   1.0319560   1.4542989
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.0551230   0.8456015   1.3165592
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9961081   0.7796143   1.2727208
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0346450   0.8620241   1.2418333
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0597899   0.8827939   1.2722727
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.8714397   0.6676292   1.1374684
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.2597642   1.0504834   1.5107387
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.8869070   0.7311004   1.0759180
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.9961637   0.8511706   1.1658557
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0599838   0.9959317   1.1281554
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.1697168   1.0997476   1.2441377
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.0144942   0.8980019   1.1460984
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.0124690   0.9218635   1.1119797
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 0.7609864   0.6423587   0.9015216
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.0491577   0.9147565   1.2033058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.1229814   1.0104995   1.2479840
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.3181741   1.2079558   1.4384492
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8496732   0.8210998   0.8792409
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8660844   0.8360156   0.8972346
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.7211905   0.5792964   0.8978405
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.7191872   0.5678150   0.9109134
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 0.9007444   0.6126153   1.3243882
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 0.9695812   0.7060556   1.3314641
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.1106557   0.6631457   1.8601585
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.7887734   0.4231731   1.4702340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.6981758   0.4820560   1.0111885
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.8243521   0.5779684   1.1757676
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.5576796   0.3278189   0.9487146
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 0.4180295   0.2930670   0.5962754
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.5122120   0.2751679   0.9534584
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.5753106   0.3493021   0.9475530
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9219156   0.8210843   1.0351292
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.9728692   0.8650623   1.0941113
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 0.7287211   0.4345945   1.2219077
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.6871157   0.4707140   1.0030041
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.6143399   0.4840051   0.7797719
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 0.7180092   0.5912996   0.8718715
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9185255   0.6144286   1.3731280
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.8634165   0.6156325   1.2109304
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7610773   0.7280182   0.7956375
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7310742   0.6974608   0.7663076
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.4785518   1.0856533   2.0136404
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.7586422   1.4281533   2.1656095
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.2127273   0.8010782   1.8359101
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.4585366   1.0210734   2.0834241
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.9891304   0.6869619   1.4242114
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9788341   0.6552182   1.4622858
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1193163   0.8407092   1.4902524
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0753431   0.8037394   1.4387284
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.9845938   0.6629391   1.4623138
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.4913117   1.1237108   1.9791665
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9624697   0.7268860   1.2744062
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.0761551   0.8484373   1.3649915
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1804469   1.0422342   1.3369882
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.2926966   1.1419335   1.4633640
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.0035492   0.7754814   1.2986914
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.9974776   0.8145556   1.2214780
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.1496402   1.0003202   1.3212496
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.3282846   1.1814268   1.4933976
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.1180082   1.0253573   1.2190310
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.2857119   1.1785332   1.4026377


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0389499   -0.0078059    0.0857057
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1034054    0.0107406    0.1960702
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0067106   -0.0384011    0.0518223
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0066102   -0.0159218    0.0291422
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0650201    0.0083416    0.1216986
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0184181   -0.0808531    0.0440168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0175174    0.0089225    0.0261123
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0077085   -0.0479812    0.0633982
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0081408   -0.0349443    0.0186626
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0966892    0.0636082    0.1297701
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0433642   -0.0517410   -0.0349874
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0709665   -0.1154746   -0.0264584
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0162338   -0.1145037    0.0820362
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0016552   -0.0289905    0.0256800
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0122851   -0.0263608    0.0017906
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0775763   -0.1196689   -0.0354837
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0524470   -0.0967524   -0.0081416
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0033319   -0.0091794    0.0025157
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0476512   -0.1021115    0.0068091
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0418485   -0.0649984   -0.0186986
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0063685   -0.0228611    0.0101241
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0604498   -0.0684616   -0.0524381
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1004717    0.0578051    0.1431382
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1321817    0.0042088    0.2601545
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0023216   -0.0517977    0.0471545
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0078554   -0.0129698    0.0286806
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0751713    0.0234381    0.1269046
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0108796   -0.0602014    0.0819607
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0162854    0.0081975    0.0243733
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0007184   -0.0974827    0.0960459
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0850692    0.0477351    0.1224032
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0212314    0.0123492    0.0301135


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0655436   -0.0145056    0.1392765
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1350393    0.0039595    0.2488689
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0178609   -0.1098586    0.1308828
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0293608   -0.0760502    0.1244456
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1572175    0.0083429    0.2837421
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0318613   -0.1457660    0.0707198
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0598747    0.0300426    0.0887894
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0106866   -0.0696143    0.0849589
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0343593   -0.1538983    0.0727960
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1691508    0.1089117    0.2253176
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0977049   -0.1167202   -0.0790134
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.2462102   -0.4122309   -0.0997068
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0420168   -0.3301131    0.1836792
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0175556   -0.3529663    0.2347042
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1825767   -0.4096247    0.0079008
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.9712766   -1.5568906   -0.5197879
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.4712403   -0.9165067   -0.1294236
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0316517   -0.0887073    0.0224139
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.3536559   -0.8219396   -0.0057328
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.3518576   -0.5597210   -0.1716961
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.1035900   -0.4068563    0.1343032
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1877688   -0.2128731   -0.1631840
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.3154875    0.1778173    0.4301056
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.2331393   -0.0314468    0.4298540
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0096962   -0.2389925    0.1771650
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0593884   -0.1118665    0.2042658
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.2722334    0.0592375    0.4370054
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0242894   -0.1480500    0.1707581
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1198377    0.0585091    0.1771714
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0012771   -0.1889640    0.1567819
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1735723    0.0935469    0.2465327
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1077613    0.0618351    0.1514392
