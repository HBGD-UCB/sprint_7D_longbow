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

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
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
![](/tmp/d0e5e075-8c49-4ff8-b617-d8da6faffa32/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d0e5e075-8c49-4ff8-b617-d8da6faffa32/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d0e5e075-8c49-4ff8-b617-d8da6faffa32/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d0e5e075-8c49-4ff8-b617-d8da6faffa32/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3566042   0.3094379   0.4037704
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.4081894   0.3577194   0.4586594
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.4650087   0.4158878   0.5141297
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1528846   0.0936310   0.2121382
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.3687348   0.3018503   0.4356193
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.4511573   0.3944465   0.5078681
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3440747   0.3068894   0.3812601
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2029692   0.1657982   0.2401402
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1873496   0.1516752   0.2230240
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2869636   0.2596296   0.3142977
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2676157   0.2397555   0.2954759
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.2556508   0.2289424   0.2823593
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1262145   0.0974140   0.1550151
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.2807799   0.2309904   0.3305694
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.3691604   0.3455514   0.3927693
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4050978   0.3472594   0.4629362
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.4107544   0.3445466   0.4769622
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.6518965   0.6070514   0.6967416
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2555449   0.2426061   0.2684836
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2184019   0.2043902   0.2324137
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2572978   0.2382863   0.2763093
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.3597025   0.3254265   0.3939784
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.2814942   0.2402035   0.3227849
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.2388637   0.2135730   0.2641543
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.2987360   0.2685269   0.3289452
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.3177110   0.2913272   0.3440947
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.3475351   0.3291593   0.3659108
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3827069   0.3484031   0.4170107
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.3485559   0.3149880   0.3821238
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.3923108   0.3688401   0.4157814
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2827473   0.2671623   0.2983323
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2357043   0.2236056   0.2478030
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2338930   0.2195014   0.2482847
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1963543   0.1597174   0.2329912
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2261754   0.1859121   0.2664388
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2161299   0.1869646   0.2452952
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1264123   0.0552711   0.1975534
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.2392039   0.1326822   0.3457257
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.2352814   0.1770333   0.2935295
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2378600   0.2033723   0.2723477
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1523398   0.1182356   0.1864440
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1070731   0.0775725   0.1365736
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1736639   0.1516257   0.1957020
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1586488   0.1357830   0.1815146
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1563734   0.1341673   0.1785795
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1148561   0.0903264   0.1393857
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.0819593   0.0526685   0.1112502
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.1406870   0.1232176   0.1581564
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2283882   0.1819041   0.2748724
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2836884   0.2255681   0.3418086
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.2957039   0.2550802   0.3363276
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2134086   0.2014421   0.2253751
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1547558   0.1423769   0.1671346
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1411199   0.1254649   0.1567749
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2323439   0.1967324   0.2679555
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.3082507   0.2650431   0.3514584
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1820326   0.1565632   0.2075019
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2585326   0.2292902   0.2877750
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.2306295   0.2069945   0.2542645
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.2392155   0.2225191   0.2559120
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3547877   0.3223029   0.3872724
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.2249504   0.1949302   0.2549706
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2016978   0.1820888   0.2213068
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2146391   0.2000768   0.2292015
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1526452   0.1428147   0.1624756
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.1536699   0.1414266   0.1659132
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2480021   0.2054886   0.2905156
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2732820   0.2358495   0.3107144
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.3789324   0.3417880   0.4160767
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2134067   0.1258766   0.3009369
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.3608395   0.2685590   0.4531200
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.3762996   0.3140253   0.4385739
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1443353   0.1074374   0.1812333
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1585184   0.1230698   0.1939670
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1829357   0.1455547   0.2203167
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2217652   0.1957033   0.2478270
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2012737   0.1752470   0.2273004
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1827137   0.1601377   0.2052897
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.0865958   0.0595794   0.1136121
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1804944   0.1328724   0.2281164
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.3117740   0.2890606   0.3344873
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3014124   0.2443196   0.3585052
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2881044   0.2221913   0.3540175
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.4127183   0.3656251   0.4598115
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0748149   0.0658406   0.0837891
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1160536   0.1048640   0.1272431
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2020234   0.1847468   0.2193000
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1041623   0.0600600   0.1482647
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.1402651   0.0886292   0.1919011
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1290475   0.1066650   0.1514300
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0708109   0.0531267   0.0884951
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.1185889   0.0993730   0.1378047
6-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1522103   0.1382542   0.1661664
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1700059   0.1411603   0.1988516
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.2334041   0.2024916   0.2643166
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2905496   0.2677637   0.3133355
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1460586   0.1338029   0.1583143
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1557337   0.1445922   0.1668752
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.1426177   0.1288535   0.1563820


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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.1446569   1.0251247   1.2781268
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.3039913   1.1445443   1.4856509
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 2.4118503   1.5806908   3.6800505
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 2.9509663   1.9575019   4.4486304
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.5898985   0.4777402   0.7283881
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.5445026   0.4370198   0.6784202
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9325771   0.8108382   1.0725939
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.8908824   0.7735668   1.0259895
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 2.2246243   1.6683505   2.9663750
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 2.9248643   2.3020179   3.7162313
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.0139636   0.8189414   1.2554284
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.6092326   1.3738868   1.8848928
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.8546521   0.7876935   0.9273025
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.0068596   0.9206986   1.1010837
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 0.7825752   0.6574942   0.9314514
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.6640590   0.5771234   0.7640903
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.0635174   0.9331810   1.2120578
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.1633517   1.0379749   1.3038727
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9107646   0.7986794   1.0385798
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.0250946   0.9203364   1.1417771
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8336219   0.7760187   0.8955010
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8272159   0.7620177   0.8979924
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.1518740   0.9910376   1.3388126
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.1007136   0.9726044   1.2456970
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.8922522   0.9211621   3.8870669
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.8612229   1.0071817   3.4394496
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.6404598   0.4907540   0.8358338
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.4501517   0.3283494   0.6171369
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9135394   0.7550423   1.1053079
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9004373   0.7446392   1.0888325
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.7135831   0.4714996   1.0799603
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 1.2248983   0.9560852   1.5692909
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.2421321   0.9307734   1.6576454
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.2947422   1.0120379   1.6564177
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.7251617   0.6577211   0.7995174
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.6612662   0.5840344   0.7487111
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 1.3267002   1.0800686   1.6296495
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.7834617   0.6388635   0.9607878
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.8920713   0.7660471   1.0388280
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 0.9252819   0.8104351   1.0564036
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.6340424   0.5393794   0.7453190
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.5685029   0.4975434   0.6495826
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7111713   0.6510295   0.7768689
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7159455   0.6446082   0.7951774
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.1019342   0.9822196   1.2362399
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.5279404   1.2931120   1.8054135
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.6908533   1.0428993   2.7413818
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.7632977   1.1335096   2.7430017
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.0982647   0.7833218   1.5398338
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.2674354   0.9147613   1.7560782
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9075984   0.7631057   1.0794506
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.8239063   0.6944922   0.9774359
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 2.0843323   1.3892176   3.1272575
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 3.6003366   2.6083836   4.9695237
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9558479   0.7118167   1.2835400
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.3692812   1.0937871   1.7141645
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.5512093   1.3298199   1.8094557
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 2.7003098   2.3307921   3.1284099
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.3466014   0.7687842   2.3587053
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.2389076   0.7841346   1.9574343
6-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.6747256   1.2438584   2.2548436
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 2.1495319   1.6475093   2.8045288
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.3729174   1.1077708   1.7015271
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.7090558   1.4179014   2.0599963
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0662412   0.9569169   1.1880555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9764418   0.8590109   1.1099262


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0584652    0.0210888    0.0958417
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.3206670    0.2567859    0.3845481
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0073538   -0.0248827    0.0395903
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0502220   -0.0738389   -0.0266051
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.2780087    0.2456542    0.3103632
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1862643    0.1303367    0.2421919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0207909   -0.0320382   -0.0095437
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1046689   -0.1395572   -0.0697806
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0390667    0.0102606    0.0678729
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0209056   -0.0115156    0.0533268
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0245521   -0.0388818   -0.0102224
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0235792   -0.0023857    0.0495441
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0524290   -0.0170881    0.1219462
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0207114   -0.0093364    0.0507592
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0340796   -0.0528847   -0.0152746
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0465051    0.0204453    0.0725649
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0672928    0.0223744    0.1122113
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0323455   -0.0425893   -0.0221017
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0319676   -0.0683351    0.0043998
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0150582   -0.0426420    0.0125255
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.1192423   -0.1493896   -0.0890950
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0383592   -0.0519862   -0.0247322
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0579735    0.0242635    0.0916835
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1384920    0.0568649    0.2201191
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0166403   -0.0167907    0.0500712
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0617249   -0.0845162   -0.0389336
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.2476038    0.2166598    0.2785478
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1714689    0.1160749    0.2268629
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0191718    0.0110426    0.0273011
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0227956   -0.0185204    0.0641117
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0711573    0.0532925    0.0890220
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0966370    0.0684208    0.1248531
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0178464    0.0068260    0.0288667


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1408565    0.0562800    0.2178533
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.6771532    0.5335133    0.7765638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0209255   -0.0743398    0.1077434
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2121385   -0.3195225   -0.1134935
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.6877603    0.6094705    0.7503553
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.3149751    0.2182448    0.3997365
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0885649   -0.1377728   -0.0414851
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.4104123   -0.5735412   -0.2641950
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.1156496    0.0266629    0.1965007
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0517962   -0.0316814    0.1285194
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0950911   -0.1521317   -0.0408746
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1072107   -0.0066505    0.2081932
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.2931595   -0.2090447    0.5867618
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0800993   -0.0397193    0.1861099
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2441511   -0.3921250   -0.1119059
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.2882049    0.1192768    0.4247315
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.2275859    0.0691284    0.3590699
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1786422   -0.2371124   -0.1229355
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1595380   -0.3651435    0.0151010
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0618474   -0.1817873    0.0459198
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.5062393   -0.6472492   -0.3773004
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.2176041   -0.2979977   -0.1421897
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1894709    0.0798064    0.2860661
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.3935564    0.1145170    0.5846630
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1033714   -0.1240469    0.2847782
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3856835   -0.5470518   -0.2411471
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.7408860    0.6480222    0.8092492
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.3626046    0.2411886    0.4645930
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2039844    0.1141004    0.2847488
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1795525   -0.2185921    0.4476133
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.5012199    0.3658871    0.6076698
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.3624210    0.2511916    0.4571281
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1088825    0.0391979    0.1735130
