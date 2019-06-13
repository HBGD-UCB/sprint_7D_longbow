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
![](/tmp/0797a16a-bfdc-47eb-b8d5-c6028e8eada1/639ec8be-93e8-4751-9706-ee11dee6182f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0797a16a-bfdc-47eb-b8d5-c6028e8eada1/639ec8be-93e8-4751-9706-ee11dee6182f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2852413   0.1977412   0.3727413
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.4550933   0.2214681   0.6887184
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3407125   0.2504640   0.4309611
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2204989   0.1879594   0.2530385
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3387226   0.2697280   0.4077173
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5264377   0.3591183   0.6937571
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2292790   0.2093884   0.2491697
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2863134   0.1757116   0.3969151
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.3125490   0.2761782   0.3489199
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.3717861   0.3170556   0.4265166
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2319259   0.2119205   0.2519313
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1672320   0.1149089   0.2195551
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2311148   0.1547422   0.3074873
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1289392   0.1013363   0.1565420
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                0.1647062   0.1242204   0.2051920
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.3714215   0.2570543   0.4857887
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1725545   0.1517835   0.1933256
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2018105   0.1113994   0.2922217
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.2482611   0.2163154   0.2802069
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2564649   0.2154462   0.2974837
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1527743   0.1373549   0.1681937
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2443929   0.1460000   0.3427858
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.3276276   0.0977739   0.5574812
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1563918   0.0883842   0.2243994
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1581757   0.1237122   0.1926392
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.2515268   0.1806989   0.3223548
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4157193   0.2482085   0.5832302
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0795427   0.0668770   0.0922084
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1732999   0.1047525   0.2418473
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.0892971   0.0627937   0.1158004
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.1734756   0.1336457   0.2133055
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1497562   0.1243712   0.1751413


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
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.0877979   0.6838375   1.730388
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0314518   0.8092599   1.314649
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0736634   0.9464048   1.218034
0-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.1933753   0.9781801   1.455912
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.1233279   0.8266315   1.526515
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0238787   0.9443489   1.110106
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.1234067   0.7736159   1.631355
0-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.0807994   0.9692880   1.205140
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0856040   0.9450789   1.247024
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.1390617   1.0573469   1.227092
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.3201972   1.0827248   1.609754
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1188010   0.8241587   1.518780
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0825587   0.9001617   1.301914
0-6 months    ki1101329-Keneba           GAMBIA                         observed             optimal           0.9796908   0.7812527   1.228532
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.7960796   0.5909033   1.072498
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0493095   0.9350171   1.177572
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.2315131   0.8119714   1.867830
0-6 months    ki1135781-COHORTS          INDIA                          observed             optimal           0.9807188   0.8722642   1.102658
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.9184309   0.7941120   1.062212
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.1927568   1.0955870   1.298545
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1081882   0.8393415   1.463148
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.1598535   0.6117552   2.199017
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0293098   0.6984391   1.516923
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0117877   0.8306462   1.232431
6-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.3286837   1.0061931   1.754535
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.1375015   0.7699508   1.680510
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1815880   1.0192148   1.369829
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           0.9989000   0.7005949   1.424220
6-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.5898417   1.1929800   2.118725
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.5370631   1.2334602   1.915394
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.1005524   0.9396262   1.289040


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0970482    0.0641085   0.1299879
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0399562   -0.1710594   0.2509719
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0107160   -0.0719230   0.0933551
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0162427   -0.0115618   0.0440472
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0655006   -0.0020917   0.1330929
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0649245   -0.0963183   0.2261672
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0054749   -0.0130618   0.0240115
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0353330   -0.0716563   0.1423223
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0252538   -0.0087900   0.0592975
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0318264   -0.0196625   0.0833153
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0322520    0.0151075   0.0493966
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0535472    0.0165902   0.0905043
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0274567   -0.0432667   0.0981800
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0106451   -0.0131192   0.0344093
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0033450   -0.0406129   0.0339228
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0757404   -0.1856586   0.0341777
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0085086   -0.0113956   0.0284127
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0467218   -0.0373864   0.1308300
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                -0.0047868   -0.0338852   0.0243117
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0209196   -0.0582682   0.0164290
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0294483    0.0165821   0.0423145
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0264404   -0.0394904   0.0923712
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0523724   -0.1568259   0.2615707
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0045838   -0.0560338   0.0652015
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0018645   -0.0293469   0.0330760
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0826728    0.0122577   0.1530878
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0571620   -0.1049468   0.2192709
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0144440    0.0026567   0.0262313
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0001906   -0.0616643   0.0612831
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0526711    0.0267630   0.0785792
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0931673    0.0546800   0.1316547
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0150584   -0.0086006   0.0387173


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2538604    0.1454854   0.3484907
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0807116   -0.4623356   0.4220949
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0304927   -0.2356970   0.2393408
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0686094   -0.0566303   0.1790048
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.1620407   -0.0223066   0.3131455
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.1097880   -0.2097290   0.3449132
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0233218   -0.0589307   0.0991852
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1098504   -0.2926311   0.3870128
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0747589   -0.0316851   0.1702206
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0788538   -0.0581128   0.1980909
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1220844    0.0542366   0.1850650
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2425374    0.0764043   0.3787870
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1061860   -0.2133585   0.3415768
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0762626   -0.1109115   0.2319003
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0207302   -0.2799956   0.1860205
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.2561558   -0.6923244   0.0675975
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0469923   -0.0694991   0.1507954
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1879907   -0.2315705   0.4646193
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                -0.0196603   -0.1464417   0.0931007
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0888135   -0.2592682   0.0585684
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1616061    0.0872473   0.2299072
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0976262   -0.1914101   0.3165422
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1378222   -0.6346408   0.5452514
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0284752   -0.4317641   0.3407709
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0116504   -0.2038820   0.1885958
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.2473754    0.0061550   0.4300483
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.1208803   -0.2987843   0.4049424
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1536813    0.0188525   0.2699820
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0011012   -0.4273585   0.2978613
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.3710066    0.1617630   0.5280181
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.3494086    0.1892726   0.4779143
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0913654   -0.0642530   0.2242288
