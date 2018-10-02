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
![](/tmp/eadf5bbe-a972-4afe-94a8-ba0d08ff9c32/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/eadf5bbe-a972-4afe-94a8-ba0d08ff9c32/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/eadf5bbe-a972-4afe-94a8-ba0d08ff9c32/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/eadf5bbe-a972-4afe-94a8-ba0d08ff9c32/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3566042   0.3094379   0.4037704
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.4081894   0.3577194   0.4586594
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.4650087   0.4158878   0.5141297
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1520441   0.0921622   0.2119260
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.3868639   0.3194044   0.4543235
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.4594815   0.4032719   0.5156911
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3398879   0.3024639   0.3773118
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1990023   0.1616083   0.2363963
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1817915   0.1458702   0.2177128
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2874754   0.2601865   0.3147642
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2684224   0.2404864   0.2963584
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.2566232   0.2300092   0.2832372
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1296236   0.1010534   0.1581937
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.2896398   0.2409486   0.3383310
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.3701403   0.3466249   0.3936558
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4018415   0.3435236   0.4601595
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.4091851   0.3427080   0.4756622
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.6541805   0.6092084   0.6991525
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2556823   0.2426273   0.2687373
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2183346   0.2042612   0.2324081
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2592559   0.2398258   0.2786861
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.3595819   0.3251643   0.3939994
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.2835606   0.2419952   0.3251260
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.2384317   0.2130964   0.2637670
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.2947394   0.2643765   0.3251022
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.3157743   0.2893585   0.3421902
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.3487255   0.3302372   0.3672137
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3829901   0.3487615   0.4172187
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.3485572   0.3150268   0.3820876
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.3923251   0.3689098   0.4157403
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2827475   0.2671626   0.2983324
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2357044   0.2236057   0.2478031
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2338932   0.2195016   0.2482849
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1963543   0.1597174   0.2329912
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2261754   0.1859121   0.2664388
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2161299   0.1869646   0.2452952
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1261448   0.0549141   0.1973756
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.2401676   0.1332825   0.3470527
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.2358112   0.1774313   0.2941911
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2482871   0.2138069   0.2827673
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1499525   0.1157391   0.1841659
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1057420   0.0760674   0.1354166
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1791634   0.1567265   0.2016003
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1614372   0.1381932   0.1846812
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1598658   0.1373003   0.1824313
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1255720   0.1008223   0.1503217
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.0898596   0.0602424   0.1194767
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.1411875   0.1237166   0.1586583
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2262186   0.1796566   0.2727806
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2834098   0.2251416   0.3416780
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.2945527   0.2539079   0.3351976
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2132307   0.2012944   0.2251669
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1547720   0.1424134   0.1671306
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1412246   0.1256665   0.1567827
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2434333   0.2075028   0.2793638
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.2725805   0.2281895   0.3169716
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1826850   0.1571687   0.2082014
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2585164   0.2291167   0.2879160
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.2305718   0.2068660   0.2542776
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.2392062   0.2224651   0.2559473
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3578517   0.3250613   0.3906421
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.2250403   0.1948499   0.2552307
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2018331   0.1820406   0.2216257
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2146394   0.2000769   0.2292019
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1526449   0.1428144   0.1624754
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.1536687   0.1414253   0.1659122
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2480021   0.2054886   0.2905156
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2732820   0.2358495   0.3107144
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.3789324   0.3417880   0.4160767
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2190433   0.1273566   0.3107299
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.3651975   0.2682293   0.4621658
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.3742744   0.3114363   0.4371124
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1491961   0.1113875   0.1870047
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1575210   0.1222932   0.1927488
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1857217   0.1481327   0.2233108
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2208049   0.1948979   0.2467119
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1998101   0.1739507   0.2256695
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1814438   0.1590160   0.2038716
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.0875344   0.0606228   0.1144459
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1838819   0.1369425   0.2308212
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.3119493   0.2892669   0.3346317
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3006340   0.2434043   0.3578637
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2881863   0.2222038   0.3541688
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.4109812   0.3638115   0.4581509
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0744758   0.0654726   0.0834789
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1167318   0.1055126   0.1279510
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2058964   0.1882923   0.2235005
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1042813   0.0600458   0.1485167
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.1403524   0.0885244   0.1921803
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1290407   0.1066484   0.1514329
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0687208   0.0512878   0.0861538
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.1172756   0.0983152   0.1362360
6-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1538681   0.1400266   0.1677096
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1696340   0.1407374   0.1985305
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.2333242   0.2023873   0.2642612
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2909920   0.2681753   0.3138088
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1460585   0.1338028   0.1583143
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1557337   0.1445922   0.1668752
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.1426183   0.1288540   0.1563826


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
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 2.5444191   1.6608162   3.8981246
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 3.0220276   1.9955801   4.5764391
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.5854939   0.4713591   0.7272653
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.5348573   0.4256245   0.6721237
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9337231   0.8118963   1.0738302
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.8926788   0.7756214   1.0274027
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 2.2344688   1.6952872   2.9451357
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 2.8555021   2.2647315   3.6003791
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.0182747   0.8204162   1.2638504
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.6279563   1.3870558   1.9106957
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.8539295   0.7866316   0.9269848
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.0139769   0.9261732   1.1101047
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 0.7885843   0.6624013   0.9388043
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.6630805   0.5758496   0.7635253
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.0713681   0.9385518   1.2229795
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.1831656   1.0540005   1.3281596
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9100946   0.7982957   1.0375505
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.0243739   0.9199633   1.1406346
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8336215   0.7760185   0.8955003
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8272158   0.7620179   0.8979922
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.1518740   0.9910376   1.3388126
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.1007136   0.9726044   1.2456970
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.9039038   0.9255672   3.9163549
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.8693686   1.0098427   3.4604785
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.6039479   0.4626780   0.7883518
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.4258858   0.3102571   0.5846076
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9010612   0.7453060   1.0893663
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.8922904   0.7385806   1.0779895
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.7156018   0.4879771   1.0494056
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 1.1243546   0.8904756   1.4196607
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.2528139   0.9367906   1.6754467
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.3020713   1.0154222   1.6696402
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.7258431   0.6584502   0.8001337
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.6623091   0.5853817   0.7493458
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 1.1197340   0.9002362   1.3927502
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.7504521   0.6141618   0.9169869
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.8919042   0.7653819   1.0393413
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 0.9253038   0.8099472   1.0570901
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.6288647   0.5346467   0.7396862
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.5640133   0.4932873   0.6448798
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7111689   0.6510269   0.7768669
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7159391   0.6446014   0.7951716
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.1019342   0.9822196   1.2362399
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.5279404   1.2931120   1.8054135
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.6672391   1.0156388   2.7368848
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.7086777   1.0885499   2.6820816
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.0557984   0.7539692   1.4784560
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.2448162   0.9009815   1.7198658
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9049171   0.7612142   1.0757485
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.8217381   0.6930010   0.9743904
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 2.1006817   1.4127287   3.1236454
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 3.5637346   2.5935903   4.8967658
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9585951   0.7133469   1.2881594
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.3670484   1.0906621   1.7134740
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.5673793   1.3429381   1.8293307
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 2.7646087   2.3845265   3.2052742
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.3459020   0.7671818   2.3611773
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.2374292   0.7825830   1.9566371
6-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.7065516   1.2639250   2.3041860
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 2.2390329   1.7109748   2.9300655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.3754570   1.1091295   1.7057358
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.7154114   1.4223177   2.0689022
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0662417   0.9569171   1.1880562
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9764462   0.8590147   1.1099311


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0584652    0.0210888    0.0958417
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.3215075    0.2574558    0.3855593
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0115407   -0.0211836    0.0442650
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0507337   -0.0743178   -0.0271497
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.2745997    0.2424771    0.3067223
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1895206    0.1330790    0.2459622
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0209284   -0.0323020   -0.0095547
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1045483   -0.1396143   -0.0694823
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0430634    0.0141027    0.0720241
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0206224   -0.0117225    0.0529673
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0245523   -0.0388819   -0.0102227
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0235792   -0.0023857    0.0495441
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0526965   -0.0169108    0.1223038
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0102843   -0.0197011    0.0402697
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0395792   -0.0588801   -0.0202783
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0357891    0.0095780    0.0620002
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0694625    0.0244316    0.1144934
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0321675   -0.0423782   -0.0219569
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0430570   -0.0798328   -0.0062812
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0150420   -0.0427867    0.0127027
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.1223064   -0.1527704   -0.0918423
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0383595   -0.0519867   -0.0247323
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0579735    0.0242635    0.0916835
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1328555    0.0476922    0.2180187
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0117795   -0.0227009    0.0462599
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0607646   -0.0833605   -0.0381688
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.2466652    0.2158113    0.2775191
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1722474    0.1167073    0.2277874
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0195109    0.0113524    0.0276695
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0226767   -0.0187621    0.0641154
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0732474    0.0556114    0.0908834
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0970090    0.0687410    0.1252770
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0178464    0.0068261    0.0288668


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1408565    0.0562800    0.2178533
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.6789281    0.5335525    0.7789952
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0328393   -0.0635139    0.1204631
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2143000   -0.3215952   -0.1157157
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.6793268    0.6020066    0.7416256
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.3204814    0.2227060    0.4059577
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0891502   -0.1389171   -0.0415580
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.4099394   -0.5737951   -0.2631435
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.1274809    0.0379644    0.2086681
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0510946   -0.0321778    0.1276488
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0950921   -0.1521324   -0.0408758
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1072107   -0.0066505    0.2081932
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.2946549   -0.2087120    0.5883952
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0397735   -0.0813810    0.1473543
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2835506   -0.4364695   -0.1469107
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.2217952    0.0509347    0.3618957
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.2349237    0.0760689    0.3664660
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1776593   -0.2359379   -0.1221287
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.2148807   -0.4256692   -0.0352578
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0617807   -0.1824527    0.0465764
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.5192477   -0.6618668   -0.3888680
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.2176056   -0.2980002   -0.1421904
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1894709    0.0798064    0.2860661
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.3775389    0.0838882    0.5770627
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0731756   -0.1632582    0.2615540
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3796833   -0.5395166   -0.2364440
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.7380775    0.6458011    0.8063140
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.3642507    0.2424335    0.4664796
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2075925    0.1173362    0.2886196
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1786156   -0.2209113    0.4474027
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.5159423    0.3823758    0.6206239
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.3638160    0.2523346    0.4586749
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1088828    0.0391982    0.1735135
