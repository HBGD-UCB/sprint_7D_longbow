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

**Outcome Variable:** ever_wasted

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

agecat        studyid                    country                        parity    ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  -------  ------------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0      273    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1      175    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   0      219    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   1      135    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  0      393    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  1      318    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       51     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1       26     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       46     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1       46     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0      112     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1      116     397
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      163     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1      108     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0      170     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1       74     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  0      121     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  1       64     700
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      624    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1      197    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0      583    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1      188    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0      592    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1      173    2357
0-24 months   ki1101329-Keneba           GAMBIA                         1                   0      160    1989
0-24 months   ki1101329-Keneba           GAMBIA                         1                   1       80    1989
0-24 months   ki1101329-Keneba           GAMBIA                         2                   0      138    1989
0-24 months   ki1101329-Keneba           GAMBIA                         2                   1       76    1989
0-24 months   ki1101329-Keneba           GAMBIA                         3+                  0      887    1989
0-24 months   ki1101329-Keneba           GAMBIA                         3+                  1      648    1989
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      148    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      194    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0      146    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1      164    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  0      198    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  1      354    1204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     4520   13938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1     1483   13938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0     3255   13938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      920   13938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0     2891   13938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1      869   13938
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0      162    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1       46    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                   0      132    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                   1       55    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  0      705    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  1      241    1341
0-24 months   ki1135781-COHORTS          INDIA                          1                   0      560    4624
0-24 months   ki1135781-COHORTS          INDIA                          1                   1      250    4624
0-24 months   ki1135781-COHORTS          INDIA                          2                   0      821    4624
0-24 months   ki1135781-COHORTS          INDIA                          2                   1      363    4624
0-24 months   ki1135781-COHORTS          INDIA                          3+                  0     1681    4624
0-24 months   ki1135781-COHORTS          INDIA                          3+                  1      949    4624
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   0      394    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   1      283    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   0      424    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   1      258    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  0      998    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  1      688    3045
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0    14772   53812
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     5393   53812
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0    13543   53812
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1     4311   53812
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  0    11603   53812
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  1     4190   53812
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   0      349    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   1       96    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                   0      275    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                   1       77    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                  0      550    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                  1      158    1505
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       65     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1       12     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       79     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                   1       13     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0      182     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1       46     397
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      192     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1       79     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   0      187     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   1       57     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                  0      140     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                  1       45     700
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      700    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1      121    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0      663    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1      108    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0      665    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1      100    2357
0-6 months    ki1101329-Keneba           GAMBIA                         1                   0      193    1822
0-6 months    ki1101329-Keneba           GAMBIA                         1                   1       38    1822
0-6 months    ki1101329-Keneba           GAMBIA                         2                   0      174    1822
0-6 months    ki1101329-Keneba           GAMBIA                         2                   1       28    1822
0-6 months    ki1101329-Keneba           GAMBIA                         3+                  0     1161    1822
0-6 months    ki1101329-Keneba           GAMBIA                         3+                  1      228    1822
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      246    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       96    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   0      222    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   1       88    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                  0      380    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                  1      172    1204
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     4730   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   1     1228   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                   0     3493   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      659   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0     3116   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1      620   13846
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   0      122    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   1       30    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                   0      115    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                   1       34    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                  0      613    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                  1      149    1063
0-6 months    ki1135781-COHORTS          INDIA                          1                   0      562    4444
0-6 months    ki1135781-COHORTS          INDIA                          1                   1      197    4444
0-6 months    ki1135781-COHORTS          INDIA                          2                   0      878    4444
0-6 months    ki1135781-COHORTS          INDIA                          2                   1      259    4444
0-6 months    ki1135781-COHORTS          INDIA                          3+                  0     1922    4444
0-6 months    ki1135781-COHORTS          INDIA                          3+                  1      626    4444
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                   0      477    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                   1      199    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                   0      527    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                   1      155    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                  0     1323    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                  1      363    3044
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0    16326   53676
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     3750   53676
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   0    14946   53676
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   1     2884   53676
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                  0    12942   53676
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                  1     2828   53676
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0      303    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1      114    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   0      237    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   1       84    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  0      424    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  1      227    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       59     395
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1       18     395
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       56     395
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1       35     395
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0      141     395
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1       86     395
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      189     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       38     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0      189     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1       35     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  0      138     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  1       26     615
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      567    1987
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1      106    1987
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0      541    1987
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1      111    1987
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0      561    1987
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1      101    1987
6-24 months   ki1101329-Keneba           GAMBIA                         1                   0      169    1924
6-24 months   ki1101329-Keneba           GAMBIA                         1                   1       58    1924
6-24 months   ki1101329-Keneba           GAMBIA                         2                   0      140    1924
6-24 months   ki1101329-Keneba           GAMBIA                         2                   1       58    1924
6-24 months   ki1101329-Keneba           GAMBIA                         3+                  0      972    1924
6-24 months   ki1101329-Keneba           GAMBIA                         3+                  1      527    1924
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      180    1180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      154    1180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0      180    1180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1      124    1180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  0      262    1180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  1      280    1180
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     4061   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      351   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0     2907   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      345   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0     2720   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1      309   10693
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0      163    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1       19    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                   0      147    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                   1       24    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  0      749    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  1      111    1213
6-24 months   ki1135781-COHORTS          INDIA                          1                   0      680    4339
6-24 months   ki1135781-COHORTS          INDIA                          1                   1       73    4339
6-24 months   ki1135781-COHORTS          INDIA                          2                   0      972    4339
6-24 months   ki1135781-COHORTS          INDIA                          2                   1      133    4339
6-24 months   ki1135781-COHORTS          INDIA                          3+                  0     2071    4339
6-24 months   ki1135781-COHORTS          INDIA                          3+                  1      410    4339
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   0      469    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   1      139    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   0      468    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   1      157    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  0     1123    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  1      453    2809
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0    11050   34520
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     2147   34520
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     9871   34520
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1     1799   34520
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  0     7941   34520
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  1     1712   34520


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
```




# Results Detail

## Results Plots
![](/tmp/9970c17b-3de5-4659-918f-80817dc3b621/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9970c17b-3de5-4659-918f-80817dc3b621/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9970c17b-3de5-4659-918f-80817dc3b621/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9970c17b-3de5-4659-918f-80817dc3b621/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3906250   0.3307995   0.4504505
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.3813559   0.3153859   0.4473260
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.4472574   0.3772779   0.5172369
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3376623   0.2318999   0.4434248
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.5000000   0.3977009   0.6022991
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.5087719   0.4437991   0.5737447
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3985240   0.3401915   0.4568564
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3032787   0.2455603   0.3609971
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.3459459   0.2773523   0.4145395
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2399513   0.2107333   0.2691693
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2438392   0.2135232   0.2741552
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.2261438   0.1964933   0.2557943
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3333333   0.2736785   0.3929881
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.3551402   0.2910070   0.4192734
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.4221498   0.3974358   0.4468639
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5672515   0.4929296   0.6415733
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.5290323   0.4503857   0.6076789
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.6413043   0.5846739   0.6979348
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2470431   0.2361325   0.2579538
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2203593   0.2077860   0.2329326
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2311170   0.2176424   0.2445916
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2211538   0.1647315   0.2775762
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.2941176   0.2287871   0.3594481
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.2547569   0.2269804   0.2825333
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3086420   0.2768270   0.3404569
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.3065878   0.2803219   0.3328537
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.3608365   0.3424805   0.3791925
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4180207   0.3808605   0.4551809
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.3782991   0.3418962   0.4147020
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.4080664   0.3846029   0.4315299
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2674436   0.2575693   0.2773179
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2414585   0.2309410   0.2519760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2653074   0.2548291   0.2757857
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2157303   0.1605465   0.2709142
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2187500   0.1744136   0.2630864
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2231638   0.1803002   0.2660275
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1558442   0.0747281   0.2369602
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.1413043   0.0700356   0.2125731
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.2017544   0.1495979   0.2539108
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2915129   0.2373666   0.3456592
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2336066   0.1804775   0.2867356
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.2432432   0.1813745   0.3051120
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1473812   0.1231281   0.1716343
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1400778   0.1155744   0.1645813
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1307190   0.1068266   0.1546113
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1645022   0.1166810   0.2123233
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.1386139   0.0909495   0.1862782
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.1641469   0.1446620   0.1836317
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2807018   0.2132974   0.3481061
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2838710   0.2128316   0.3549104
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.3115942   0.2569088   0.3662796
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2061094   0.1958377   0.2163811
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1587187   0.1476034   0.1698340
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1659529   0.1540227   0.1778831
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1973684   0.1340649   0.2606719
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.2281879   0.1607722   0.2956037
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1955381   0.1673644   0.2237117
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2595520   0.2283606   0.2907435
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.2277924   0.2034113   0.2521735
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.2456829   0.2289658   0.2624000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2943787   0.2600162   0.3287412
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.2272727   0.1958160   0.2587295
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2153025   0.1956794   0.2349255
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1867902   0.1780493   0.1955311
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1617499   0.1528973   0.1706024
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.1793278   0.1700435   0.1886122
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2733813   0.2385106   0.3082520
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2616822   0.2078013   0.3155632
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.3486943   0.2924880   0.4049006
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2337662   0.1391153   0.3284171
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.3846154   0.2845314   0.4846993
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.3788546   0.3156690   0.4420403
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1674009   0.1187954   0.2160064
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1562500   0.1086623   0.2038377
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1585366   0.1025915   0.2144817
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1575037   0.1299754   0.1850320
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1702454   0.1413887   0.1991021
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1525680   0.1251704   0.1799656
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2555066   0.1987548   0.3122584
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.2929293   0.2295217   0.3563369
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.3515677   0.3273910   0.3757444
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4610778   0.3854105   0.5367452
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.4078947   0.3297017   0.4860878
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.5166052   0.4570579   0.5761525
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0795558   0.0715706   0.0875409
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1060886   0.0955040   0.1166732
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1020139   0.0912347   0.1127930
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1043956   0.0599539   0.1488373
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.1403509   0.0882677   0.1924340
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1290698   0.1066525   0.1514870
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0969456   0.0758096   0.1180815
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.1203620   0.1011747   0.1395493
6-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1652559   0.1506396   0.1798723
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2286184   0.1952325   0.2620044
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.2512000   0.2171922   0.2852078
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2874365   0.2650890   0.3097841
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1626885   0.1531097   0.1722673
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1541560   0.1443395   0.1639724
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.1773542   0.1662320   0.1884764


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4150694   0.3581204   0.4720184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4735516   0.4243746   0.5227286
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2367416   0.2195770   0.2539062
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4042232   0.3826511   0.4257953
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5913621   0.5520608   0.6306634
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2347539   0.2277172   0.2417906
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2550336   0.2316956   0.2783715
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3378028   0.3241691   0.3514364
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4036125   0.3861835   0.4210415
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2581952   0.2517314   0.2646590
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2199336   0.1753445   0.2645227
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1788413   0.1410973   0.2165853
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1395842   0.1255905   0.1535779
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1613611   0.1444653   0.1782570
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2956811   0.2591967   0.3321655
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1810631   0.1746489   0.1874773
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2003763   0.1763021   0.2244505
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2434743   0.2308547   0.2560940
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2355453   0.2204685   0.2506222
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1762799   0.1706566   0.1819032
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3059755   0.2638053   0.3481458
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3518987   0.3047435   0.3990540
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1600403   0.1439152   0.1761654
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3341996   0.3131165   0.3552826
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4728814   0.4325613   0.5132014
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0939867   0.0884555   0.0995179
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1269580   0.1082147   0.1457012
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1419682   0.1315821   0.1523542
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1639050   0.1577770   0.1700330


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.9762712   0.8276984   1.1515129
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.1449789   0.9904415   1.3236285
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.4807692   1.0186113   2.1526146
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.5067476   1.0743335   2.1132064
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.7610049   0.5985725   0.9675159
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.8680681   0.6784546   1.1106744
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0162028   0.8538912   1.2093674
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9424571   0.7880450   1.1271253
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.0654206   0.8262373   1.3738437
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.2664495   1.0490876   1.5288470
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9326239   0.7649755   1.1370133
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1305468   0.9653163   1.3240595
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.8919870   0.8298939   0.9587261
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.9355330   0.8695492   1.0065238
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.3299233   0.9482357   1.8652492
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.1519441   0.8728447   1.5202878
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 0.9933446   0.8687394   1.1358222
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.1691103   1.0421578   1.3115277
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9049770   0.7938583   1.0316494
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.9761872   0.8781205   1.0852058
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9028390   0.8562273   0.9519881
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9920126   0.9418845   1.0448086
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0139974   0.8466091   1.2144810
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.0344574   0.9233352   1.1589530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 0.9067029   0.4392377   1.8716748
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.2945906   0.7240003   2.3148679
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.8013592   0.5974492   1.0748639
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.8344167   0.6089782   1.1433105
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9504454   0.7475227   1.2084534
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.8869443   0.6935619   1.1342466
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.8426264   0.5371329   1.3218689
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 0.9978402   0.7289385   1.3659382
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.0112903   0.7149102   1.4305406
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1100543   0.8244676   1.4945653
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.7700700   0.7066446   0.8391882
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.8051688   0.7377301   0.8787724
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 1.1561521   0.7475360   1.7881250
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.9907262   0.6970269   1.4081785
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.8776368   0.7471794   1.0308722
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 0.9465650   0.8244687   1.0867427
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.7720420   0.6441802   0.9252829
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.7313793   0.6307036   0.8481253
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8659440   0.8090226   0.9268704
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9600495   0.8973845   1.0270904
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.9572061   0.8248034   1.1108629
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.2754871   1.1167135   1.4568351
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.6452991   1.0167567   2.6623963
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.6206559   1.0459559   2.5111245
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.9333882   0.6127965   1.4217012
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9470475   0.5996625   1.4956729
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0808977   0.8473183   1.3788676
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9686627   0.7539505   1.2445214
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.1464646   0.8407489   1.5633457
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.3759633   1.0905011   1.7361514
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.8846548   0.6873527   1.1385918
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1204294   0.9168300   1.3692418
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.3335121   1.1575348   1.5362428
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.2822940   1.1083955   1.4834756
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.3444137   0.7643079   2.3648168
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.2363525   0.7806671   1.9580274
6-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.2415421   0.9476894   1.6265107
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.7046263   1.3472554   2.1567929
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.0987741   0.9003806   1.3408824
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.2572764   1.0655674   1.4834763
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9475529   0.8722569   1.0293488
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.0901459   1.0027266   1.1851866


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0244444   -0.0150202    0.0639090
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1358893    0.0396342    0.2321444
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0470954   -0.0920469   -0.0021439
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0032097   -0.0267382    0.0203189
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0708899    0.0146294    0.1271504
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0241107   -0.0385811    0.0868025
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0122892   -0.0204143   -0.0041642
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0338797   -0.0184708    0.0862302
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0291608    0.0001186    0.0582030
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0144082   -0.0471286    0.0183122
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0092484   -0.0164459   -0.0020508
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0042032   -0.0153692    0.0237756
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0229972   -0.0508409    0.0968352
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0329415   -0.0743581    0.0084751
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0077970   -0.0271428    0.0115488
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0031410   -0.0477780    0.0414959
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0149793   -0.0424085    0.0723671
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0250463   -0.0325195   -0.0175731
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0030079   -0.0556511    0.0616668
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0160777   -0.0443590    0.0122036
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0588334   -0.0885596   -0.0291072
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0105103   -0.0170078   -0.0040128
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0325942    0.0089271    0.0562613
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1181325    0.0304420    0.2058230
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0064253   -0.0446808    0.0318303
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0025365   -0.0199242    0.0249973
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0786930    0.0247924    0.1325935
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0118035   -0.0523058    0.0759129
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0144310    0.0079704    0.0208915
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0225624   -0.0190753    0.0642000
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0450226    0.0250340    0.0650113
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0380245    0.0080308    0.0680182
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0012165   -0.0058665    0.0082995


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0588923   -0.0390883    0.1476339
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.2869577    0.0509431    0.4642795
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1340113   -0.2695973   -0.0129052
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0135576   -0.1179764    0.0811085
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1753731    0.0237118    0.3034746
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0407714   -0.0713899    0.1411908
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0523494   -0.0875228   -0.0183137
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1328441   -0.0985709    0.3155114
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0863249   -0.0038186    0.1683735
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0356981   -0.1200305    0.0422845
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0358194   -0.0640503   -0.0083374
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0191113   -0.0757596    0.1056156
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1285897   -0.3986622    0.4570842
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1273980   -0.2993131    0.0217706
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0558589   -0.2038776    0.0739606
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0194658   -0.3372562    0.2228037
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0506604   -0.1646653    0.2261762
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1383292   -0.1802105   -0.0979341
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0150111   -0.3258814    0.2682580
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0660345   -0.1887387    0.0440040
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.2497751   -0.3823109   -0.1299469
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0596228   -0.0971120   -0.0234146
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1065256    0.0335461    0.1739942
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.3357003    0.0349818    0.5427090
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0399146   -0.3068267    0.1724822
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0158494   -0.1349883    0.1466411
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.2354670    0.0561072    0.3807446
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0249608   -0.1205028    0.1515404
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1535426    0.0824678    0.2191117
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1777151   -0.2240976    0.4476320
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.3171319    0.1625951    0.4431501
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1426046    0.0225519    0.2479121
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0074220   -0.0367611    0.0497221
