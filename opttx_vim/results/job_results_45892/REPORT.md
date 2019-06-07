---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** parity

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* vagbrth
* single
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_vagbrth
* delta_single

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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/a76fbd5b-d960-4453-8857-8dfff8750677/18fef9fe-5689-4f74-a071-992c6fb76cdd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a76fbd5b-d960-4453-8857-8dfff8750677/18fef9fe-5689-4f74-a071-992c6fb76cdd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2852413   0.1977412   0.3727413
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.4991640   0.2585374   0.7397906
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2947766   0.2150056   0.3745476
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2353555   0.2003320   0.2703790
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3910870   0.3148027   0.4673712
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5449640   0.3784892   0.7114388
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2360403   0.2151184   0.2569622
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.3839904   0.2696289   0.4983519
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.3284181   0.2902211   0.3666151
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.3589621   0.3051014   0.4128228
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2317183   0.2120440   0.2513926
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1672320   0.1149089   0.2195551
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2738034   0.1897493   0.3578574
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1270195   0.1012287   0.1528102
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                0.1445166   0.1197841   0.1692492
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.3639350   0.2077789   0.5200910
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1615320   0.1419494   0.1811146
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1906827   0.1018472   0.2795182
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.2479702   0.2158142   0.2801263
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2423892   0.2005442   0.2842343
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1542246   0.1356495   0.1727996
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2443929   0.1460000   0.3427858
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.3274093   0.1046584   0.5501603
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1910510   0.1201326   0.2619693
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1543587   0.1212662   0.1874511
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3633531   0.2979903   0.4287159
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4451097   0.3163014   0.5739180
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0768957   0.0657281   0.0880633
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1750585   0.1106884   0.2394287
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.0829833   0.0578812   0.1080853
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.1965365   0.1483054   0.2447675
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1469778   0.1219286   0.1720269


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.3822894   0.3008363   0.4637425
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.4950495   0.3970561   0.5930429
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2367416   0.2195770   0.2539062
0-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.4042232   0.3826511   0.4257953
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5913621   0.5520608   0.6306634
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2347539   0.2277172   0.2417906
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.3216463   0.2858742   0.3574185
0-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.3378028   0.3241691   0.3514364
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.4036125   0.3861835   0.4210415
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2641779   0.2551015   0.2732542
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.2207792   0.1636864   0.2778721
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1395842   0.1255905   0.1535779
0-6 months    ki1101329-Keneba           GAMBIA                         observed             NA                0.1613611   0.1444653   0.1782570
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.2956811   0.2591967   0.3321655
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.1810631   0.1746489   0.1874773
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.2485323   0.2110255   0.2860391
0-6 months    ki1135781-COHORTS          INDIA                          observed             NA                0.2434743   0.2308547   0.2560940
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2355453   0.2204685   0.2506222
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1822226   0.1742229   0.1902222
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.2708333   0.2169112   0.3247555
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.3800000   0.2843867   0.4756133
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1600403   0.1439152   0.1761654
6-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.3341996   0.3131165   0.3552826
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.4728814   0.4325613   0.5132014
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.0939867   0.0884555   0.0995179
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.1731092   0.1426836   0.2035348
6-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.1419682   0.1315821   0.1523542
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2666429   0.2502871   0.2829988
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1648146   0.1556271   0.1740021


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.3402319   1.1702550   1.534897
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           0.9917572   0.6431777   1.529254
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1921861   0.9304495   1.527549
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0058894   0.8846990   1.143681
0-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0335891   0.8541040   1.250792
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0851399   0.8080596   1.457230
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.9945500   0.9145555   1.081542
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           0.8376416   0.6293106   1.114940
0-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.0285753   0.9220222   1.147442
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.1243874   0.9756474   1.295803
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.1400820   1.0596618   1.226606
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.3201972   1.0827248   1.609754
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9443691   0.7138107   1.249397
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0989200   0.9252114   1.305242
0-6 months    ki1101329-Keneba           GAMBIA                         observed             optimal           1.1165576   0.9779035   1.274871
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.8124558   0.5357477   1.232081
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1209116   0.9980389   1.258912
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.3033816   0.8430944   2.014962
0-6 months    ki1135781-COHORTS          INDIA                          observed             optimal           0.9818692   0.8726590   1.104747
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.9717648   0.8277131   1.140887
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.1815405   1.0630823   1.313198
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1081882   0.8393415   1.463148
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.1606266   0.6243546   2.157515
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.8425794   0.6042518   1.174908
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0368079   0.8546921   1.257728
6-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           0.9197653   0.7682364   1.101182
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0623929   0.8049088   1.402244
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.2222629   1.0704246   1.395639
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           0.9888650   0.7095578   1.378118
6-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.7108049   1.2762927   2.293246
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.3567098   1.0709091   1.718784
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.1213572   0.9556130   1.315848


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0970482    0.0641085   0.1299879
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.0041145   -0.2203095   0.2120805
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0566520   -0.0164506   0.1297545
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0013861   -0.0288268   0.0315990
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0131363   -0.0615035   0.0877761
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0463982   -0.1141467   0.2069430
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0012864   -0.0210784   0.0185056
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0623441   -0.1717766   0.0470885
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0093847   -0.0265360   0.0453053
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0446504   -0.0062390   0.0955397
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0324596    0.0156233   0.0492958
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0535472    0.0165902   0.0905043
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0152319   -0.0918969   0.0614331
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0125648   -0.0092692   0.0343987
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0168445   -0.0023515   0.0360405
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0682539   -0.2196604   0.0831526
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0195311    0.0007604   0.0383018
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0578496   -0.0253796   0.1410788
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                -0.0044959   -0.0337401   0.0247483
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0068439   -0.0457362   0.0320484
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0279980    0.0118468   0.0441492
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0264404   -0.0394904   0.0923712
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0525907   -0.1501902   0.2553716
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0300754   -0.0935852   0.0334344
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0056816   -0.0241620   0.0355252
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0291535   -0.0942638   0.0359567
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0277717   -0.0958193   0.1513626
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0170911    0.0068436   0.0273385
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0019493   -0.0600378   0.0561392
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0589849    0.0343202   0.0836496
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0701065    0.0234907   0.1167222
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0178368   -0.0056722   0.0413459


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2538604    0.1454854   0.3484907
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.0083113   -0.5547803   0.3460865
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1612048   -0.0747494   0.3453567
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0058549   -0.1303280   0.1256303
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0324976   -0.1708176   0.2005066
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0784598   -0.2375325   0.3137665
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0054798   -0.0934273   0.0753938
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.1938280   -0.5890404   0.1030907
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0277815   -0.0845726   0.1284965
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1106269   -0.0249604   0.2282779
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1228701    0.0563026   0.1847420
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2425374    0.0764043   0.3787870
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0589080   -0.4009317   0.1996139
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0900156   -0.0808341   0.2338588
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.1043901   -0.0225958   0.2156069
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.2308362   -0.8665503   0.1883648
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1078690   -0.0019649   0.2056631
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.2327650   -0.1861068   0.5037128
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                -0.0184656   -0.1459230   0.0948152
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0290556   -0.2081480   0.1234887
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1536473    0.0593390   0.2385005
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0976262   -0.1914101   0.3165422
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1383965   -0.6016540   0.5365037
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.1868318   -0.6549393   0.1488693
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0355011   -0.1700120   0.2049158
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0872339   -0.3016826   0.0918850
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0587286   -0.2423767   0.2868574
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1818454    0.0657913   0.2834825
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0112604   -0.4093284   0.2743724
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.4154798    0.2164807   0.5639369
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.2629227    0.0662139   0.4181933
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1082235   -0.0464487   0.2400341
