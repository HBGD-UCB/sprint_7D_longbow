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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0       96     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1       46     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   0       68     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   1       37     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  0      122     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  1       94     463
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       11     101
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        8     101
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       10     101
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1       11     101
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0       30     101
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1       31     101
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       74     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       97     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       73     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       82     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  0       99     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  1      177     602
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     4520   13938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1     1483   13938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0     3255   13938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      920   13938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0     2891   13938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1      869   13938
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0       85     656
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1       27     656
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                   0       65     656
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                   1       38     656
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  0      295     656
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  1      146     656
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     3644   13313
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1378   13313
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     3363   13313
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1     1082   13313
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  0     2789   13313
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  1     1057   13313
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   0      117     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   1       25     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                   0       81     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                   1       24     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                  0      162     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                  1       53     462
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       17     101
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        2     101
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       19     101
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                   1        2     101
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0       49     101
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1       12     101
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      123     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       48     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   0      111     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   1       44     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                  0      190     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                  1       86     602
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     4730   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   1     1228   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                   0     3493   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      659   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0     3116   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1      620   13846
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   0       63     511
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   1       15     511
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                   0       59     511
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                   1       22     511
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                  0      262     511
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                  1       90     511
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     4022   13264
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      967   13264
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   0     3715   13264
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   1      721   13264
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                  0     3110   13264
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                  1      729   13264
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0       99     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1       34     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   0       73     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   1       22     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  0      143     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  1       61     432
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       13     100
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        6     100
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       11     100
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1        9     100
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0       38     100
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1       23     100
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       90     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       77     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       90     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       62     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  0      131     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  1      140     590
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     4061   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      351   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0     2907   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      345   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0     2720   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1      309   10693
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0       83     595
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1       15     595
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                   0       76     595
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                   1       19     595
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  0      333     595
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  1       69     595
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     2796    8549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      530    8549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     2419    8549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1      464    8549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  0     1925    8549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  1      415    8549


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

* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA

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
![](/tmp/d82df7a5-e2c2-49aa-a1a7-4daaacb7f1b9/b9f5f7f8-85b0-47b9-8f3c-92aa88047972/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d82df7a5-e2c2-49aa-a1a7-4daaacb7f1b9/b9f5f7f8-85b0-47b9-8f3c-92aa88047972/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d82df7a5-e2c2-49aa-a1a7-4daaacb7f1b9/b9f5f7f8-85b0-47b9-8f3c-92aa88047972/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d82df7a5-e2c2-49aa-a1a7-4daaacb7f1b9/b9f5f7f8-85b0-47b9-8f3c-92aa88047972/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3239437   0.2556636   0.3922238
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.3523810   0.2380295   0.4667324
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.4351852   0.3438714   0.5264990
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4210526   0.1979423   0.6441630
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.5238095   0.3091371   0.7384819
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.5081967   0.3821140   0.6342794
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
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2410714   0.1617951   0.3203478
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.3689320   0.2756771   0.4621870
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.3310658   0.2871107   0.3750208
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3086420   0.2768270   0.3404569
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.3065878   0.2803219   0.3328537
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.3608365   0.3424805   0.3791925
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4180207   0.3808605   0.4551809
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.3782991   0.3418962   0.4147020
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.4080664   0.3846029   0.4315299
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2743927   0.2610520   0.2877333
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2434196   0.2285676   0.2582716
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2748310   0.2603000   0.2893620
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1760563   0.1348346   0.2172780
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2285714   0.1680921   0.2890507
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2465116   0.1689036   0.3241197
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
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1923077   0.1047594   0.2798559
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.2716049   0.1746470   0.3685629
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.2556818   0.2100643   0.3012993
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2595520   0.2283606   0.2907435
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.2277924   0.2034113   0.2521735
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.2456829   0.2289658   0.2624000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2943787   0.2600162   0.3287412
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.2272727   0.1958160   0.2587295
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2153025   0.1956794   0.2349255
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1938264   0.1817604   0.2058924
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1625338   0.1500992   0.1749684
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.1898932   0.1766269   0.2031595
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2556391   0.1589624   0.3523158
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2315789   0.1670544   0.2961035
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2990196   0.2461023   0.3519369
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3157895   0.1057275   0.5258514
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.4500000   0.2308694   0.6691306
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.3770492   0.2548153   0.4992830
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
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1530612   0.0817170   0.2244055
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.2000000   0.1194971   0.2805029
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1716418   0.1347507   0.2085328
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0969456   0.0758096   0.1180815
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.1203620   0.1011747   0.1395493
6-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1652559   0.1506396   0.1798723
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2286184   0.1952325   0.2620044
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.2512000   0.2171922   0.2852078
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2874365   0.2650890   0.3097841
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1593506   0.1464315   0.1722696
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1609435   0.1463354   0.1755515
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.1773504   0.1606858   0.1940151


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3822894   0.3008363   0.4637425
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4950495   0.3970561   0.5930429
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2367416   0.2195770   0.2539062
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4042232   0.3826511   0.4257953
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5913621   0.5520608   0.6306634
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2347539   0.2277172   0.2417906
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3216463   0.2858742   0.3574185
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3378028   0.3241691   0.3514364
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4036125   0.3861835   0.4210415
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2641779   0.2551015   0.2732542
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2207792   0.1636864   0.2778721
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1395842   0.1255905   0.1535779
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1613611   0.1444653   0.1782570
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2956811   0.2591967   0.3321655
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1810631   0.1746489   0.1874773
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2485323   0.2110255   0.2860391
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2434743   0.2308547   0.2560940
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2355453   0.2204685   0.2506222
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1822226   0.1742229   0.1902222
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2708333   0.2169112   0.3247555
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3800000   0.2843867   0.4756133
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1600403   0.1439152   0.1761654
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3341996   0.3131165   0.3552826
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4728814   0.4325613   0.5132014
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0939867   0.0884555   0.0995179
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1731092   0.1426836   0.2035348
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1419682   0.1315821   0.1523542
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1648146   0.1556271   0.1740021


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0877847   0.9154955   1.2924974
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.3433977   1.1523972   1.5660551
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.2440476   0.6366658   2.4308743
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.2069672   0.6723464   2.1666953
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
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.5303848   1.0108060   2.3170395
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.3733098   0.9632747   1.9578837
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 0.9933446   0.8687394   1.1358222
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.1691103   1.0421578   1.3115277
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9049770   0.7938583   1.0316494
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.9761872   0.8781205   1.0852058
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8871213   0.8240187   0.9550561
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.0015974   0.9362391   1.0715184
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.2982857   1.1561437   1.4579033
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.4001860   1.0463212   1.8737277
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
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 1.4123457   0.7919387   2.5187812
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.3295455   0.8153593   2.1679903
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.8776368   0.7471794   1.0308722
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 0.9465650   0.8244687   1.0867427
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.7720420   0.6441802   0.9252829
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.7313793   0.6307036   0.8481253
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8385535   0.7631345   0.9214260
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9797075   0.8959365   1.0713112
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.9058824   0.6816347   1.2039042
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.1696943   0.8347505   1.6390345
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.4250000   0.6248681   3.2496857
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.1939891   0.5696757   2.5024939
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
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.3066667   0.7058312   2.4189606
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.1213930   0.6711848   1.8735859
6-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.2415421   0.9476894   1.6265107
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.7046263   1.3472554   2.1567929
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.0987741   0.9003806   1.3408824
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.2572764   1.0655674   1.4834763
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0099961   0.9000260   1.1334030
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.1129576   0.9909885   1.2499386


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0583458    0.0360178    0.0806737
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0739969   -0.1276278    0.2756215
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0470954   -0.0920469   -0.0021439
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0032097   -0.0267382    0.0203189
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0708899    0.0146294    0.1271504
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0241107   -0.0385811    0.0868025
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0122892   -0.0204143   -0.0041642
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0805749    0.0069653    0.1541845
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0291608    0.0001186    0.0582030
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0144082   -0.0471286    0.0183122
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0102148   -0.0201380   -0.0002916
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0447229    0.0066635    0.0827823
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0329415   -0.0743581    0.0084751
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0077970   -0.0271428    0.0115488
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0031410   -0.0477780    0.0414959
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0149793   -0.0424085    0.0723671
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0250463   -0.0325195   -0.0175731
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0562246   -0.0258214    0.1382706
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0160777   -0.0443590    0.0122036
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0588334   -0.0885596   -0.0291072
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0116039   -0.0207307   -0.0024770
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0151942   -0.0328927    0.0632812
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0642105   -0.1268393    0.2552603
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0064253   -0.0446808    0.0318303
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0025365   -0.0199242    0.0249973
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0786930    0.0247924    0.1325935
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0118035   -0.0523058    0.0759129
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0144310    0.0079704    0.0208915
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0200480   -0.0458232    0.0859192
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0450226    0.0250340    0.0650113
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0380245    0.0080308    0.0680182
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0054640   -0.0041893    0.0151174


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1526219    0.1080346    0.1949804
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1494737   -0.3741035    0.4735513
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1340113   -0.2695973   -0.0129052
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0135576   -0.1179764    0.0811085
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1753731    0.0237118    0.3034746
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0407714   -0.0713899    0.1411908
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0523494   -0.0875228   -0.0183137
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.2505078   -0.0164632    0.4473596
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0863249   -0.0038186    0.1683735
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0356981   -0.1200305    0.0422845
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0386664   -0.0769628   -0.0017317
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.2025684    0.0480135    0.3320312
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1273980   -0.2993131    0.0217706
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0558589   -0.2038776    0.0739606
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0194658   -0.3372562    0.2228037
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0506604   -0.1646653    0.2261762
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1383292   -0.1802105   -0.0979341
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.2262265   -0.1841768    0.4943953
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0660345   -0.1887387    0.0440040
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.2497751   -0.3823109   -0.1299469
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0636796   -0.1150795   -0.0146490
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0561018   -0.1501747    0.2253839
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1689751   -0.5218641    0.5462128
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0399146   -0.3068267    0.1724822
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0158494   -0.1349883    0.1466411
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.2354670    0.0561072    0.3807446
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0249608   -0.1205028    0.1515404
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1535426    0.0824678    0.2191117
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1158114   -0.3591853    0.4248102
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.3171319    0.1625951    0.4431501
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1426046    0.0225519    0.2479121
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0331526   -0.0271413    0.0899072
