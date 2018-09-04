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

agecat        studyid                    country                        parity    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  -------  -------------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      162    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1      290    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    0      122    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1      238    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   0      189    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1      532    1533
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       19     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       58     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    0       12     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1       80     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   0       28     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1      200     397
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      154     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1      117     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0      134     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1      110     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   0      108     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1       77     700
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      550    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      271    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      494    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1      277    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   0      495    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1      270    2357
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0      119    1990
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1      122    1990
0-24 months   ki1101329-Keneba           GAMBIA                         2                    0      110    1990
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1      104    1990
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   0      632    1990
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1      903    1990
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      116    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1      226    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0      112    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1      198    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   0      164    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1      388    1204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     3758   14072
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1     2310   14072
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    0     2553   14072
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1     1659   14072
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   0     2180   14072
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1     1612   14072
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0       54    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1      159    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    0       44    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1      148    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   0      223    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1      732    1360
0-24 months   ki1135781-COHORTS          INDIA                          1                    0      511    4630
0-24 months   ki1135781-COHORTS          INDIA                          1                    1      301    4630
0-24 months   ki1135781-COHORTS          INDIA                          2                    0      797    4630
0-24 months   ki1135781-COHORTS          INDIA                          2                    1      388    4630
0-24 months   ki1135781-COHORTS          INDIA                          3+                   0     1511    4630
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1     1122    4630
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0      269    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1      409    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    0      242    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1      448    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   0      448    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1     1242    3058
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     9491   54363
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1    10928   54363
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     9726   54363
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1     8259   54363
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   0     8287   54363
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1     7672   54363
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0      249    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1      202    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    0      223    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1      136    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   0      407    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1      313    1530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       46     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       31     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    0       57     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1       34     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   0      137     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1       91     396
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0      201     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1       70     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    0      183     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1       61     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   0      149     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1       36     700
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      647    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      174    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      630    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1      141    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   0      621    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1      144    2357
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0      149    1853
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1       86    1853
0-6 months    ki1101329-Keneba           GAMBIA                         2                    0      150    1853
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1       55    1853
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   0      973    1853
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1      440    1853
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      230    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1      112    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    0      236    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1       74    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   0      404    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1      148    1204
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     4498   14050
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1     1561   14050
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    0     3163   14050
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1     1042   14050
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   0     2764   14050
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1     1022   14050
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    0      106    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1       53    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    0      108    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1       50    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   0      522    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1      252    1091
0-6 months    ki1135781-COHORTS          INDIA                          1                    0      599    4473
0-6 months    ki1135781-COHORTS          INDIA                          1                    1      166    4473
0-6 months    ki1135781-COHORTS          INDIA                          2                    0      973    4473
0-6 months    ki1135781-COHORTS          INDIA                          2                    1      171    4473
0-6 months    ki1135781-COHORTS          INDIA                          3+                   0     2050    4473
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1      514    4473
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0      526    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1      152    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    0      537    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1      153    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   0     1264    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1      426    3058
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0    10796   54290
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1     9576   54290
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    0    11292   54290
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1     6672   54290
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   0     9896   54290
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1     6058   54290
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      146     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       88     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    0      100     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1      102     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   0      158     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1      219     813
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       19     239
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       27     239
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    0       11     239
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1       46     239
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   0       27     239
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1      109     239
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      116     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       47     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0      116     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1       49     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   0       88     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1       41     457
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      424    1577
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       97    1577
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      391    1577
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1      136    1577
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   0      403    1577
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1      126    1577
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0      109    1365
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1       36    1365
6-24 months   ki1101329-Keneba           GAMBIA                         2                    0      102    1365
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1       49    1365
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   0      606    1365
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1      463    1365
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      108     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1      114     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0      110     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1      124     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   0      156     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1      240     852
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     2528    7956
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      749    7956
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    0     1841    7956
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1      617    7956
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   0     1631    7956
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1      590    7956
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0       30     895
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1      106     895
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    0       29     895
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1       98     895
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   0      152     895
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1      480     895
6-24 months   ki1135781-COHORTS          INDIA                          1                    0      463    3548
6-24 months   ki1135781-COHORTS          INDIA                          1                    1      135    3548
6-24 months   ki1135781-COHORTS          INDIA                          2                    0      729    3548
6-24 months   ki1135781-COHORTS          INDIA                          2                    1      217    3548
6-24 months   ki1135781-COHORTS          INDIA                          3+                   0     1396    3548
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1      608    3548
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0      210    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1      257    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    0      190    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1      295    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   0      353    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1      816    2121
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     5847   20983
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1352   20983
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     5998   20983
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1     1587   20983
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   0     4585   20983
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1     1614   20983


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




# Results Detail

## Results Plots
![](/tmp/e091383f-713b-41c6-922e-343a615cbbda/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e091383f-713b-41c6-922e-343a615cbbda/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e091383f-713b-41c6-922e-343a615cbbda/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e091383f-713b-41c6-922e-343a615cbbda/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5528314   0.5099778   0.5956849
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.6578289   0.6146487   0.7010091
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.7604356   0.7286141   0.7922571
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.7285387   0.6381367   0.8189407
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.8550799   0.7898484   0.9203114
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.8718586   0.8297807   0.9139364
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2893066   0.2506926   0.3279206
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3275923   0.2861001   0.3690845
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.2030072   0.1662911   0.2397234
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3289038   0.3002830   0.3575246
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.3634025   0.3331603   0.3936446
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.3890447   0.3593148   0.4187745
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2252273   0.1894380   0.2610166
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.3158747   0.2748509   0.3568986
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.5548843   0.5295543   0.5802143
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7526122   0.7031142   0.8021102
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.7112489   0.6558887   0.7666091
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.7407334   0.6967871   0.7846798
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3554162   0.3412493   0.3695832
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.3945201   0.3782644   0.4107758
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.4221495   0.4012349   0.4430640
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.5667960   0.5328514   0.6007406
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.6446920   0.6050480   0.6843360
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7414085   0.7156864   0.7671307
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3278115   0.2973726   0.3582504
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.3243973   0.2982262   0.3505684
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.4075054   0.3885904   0.4264205
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4867805   0.4522663   0.5212947
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.5742652   0.5407358   0.6077945
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.7246699   0.7047675   0.7445722
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5257436   0.5074996   0.5439875
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4660852   0.4532731   0.4788973
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.4940587   0.4772539   0.5108635
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4778345   0.4396825   0.5159866
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.3966633   0.3631787   0.4301480
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.4419237   0.4096383   0.4742090
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2949988   0.2445846   0.3454130
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.3839774   0.3291060   0.4388487
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.3873478   0.3366403   0.4380552
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1877946   0.1528503   0.2227390
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1743259   0.1389595   0.2096922
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0980023   0.0691037   0.1269009
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2138804   0.1890683   0.2386926
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1762458   0.1522947   0.2001969
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1819577   0.1578086   0.2061069
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1110515   0.0877231   0.1343799
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.3206092   0.2820663   0.3591521
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.2853491   0.2616838   0.3090144
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4415806   0.3876894   0.4954719
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1783300   0.1305718   0.2260883
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1940594   0.1557336   0.2323851
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2506827   0.2376662   0.2636992
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2513824   0.2366682   0.2660967
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2628251   0.2453833   0.2802670
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.6741268   0.6346229   0.7136308
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.5071383   0.4588604   0.5554163
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.3815166   0.3512800   0.4117532
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2002466   0.1732084   0.2272847
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1504897   0.1292352   0.1717443
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.1989422   0.1831240   0.2147604
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2079218   0.1783642   0.2374794
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.1936969   0.1675144   0.2198794
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2251747   0.2059560   0.2443935
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4684064   0.4500266   0.4867862
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3764028   0.3639579   0.3888476
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.3761144   0.3597605   0.3924682
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2230881   0.1716763   0.2744999
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.4384953   0.4006307   0.4763599
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.5709516   0.5308599   0.6110432
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5814557   0.4405135   0.7223978
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.8128383   0.7098266   0.9158499
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.8002542   0.7335677   0.8669408
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1761725   0.1339384   0.2184066
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2233184   0.1762719   0.2703649
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1887221   0.1443185   0.2331256
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1665243   0.1401386   0.1929101
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2981184   0.2656476   0.3305892
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.3498894   0.3193843   0.3803944
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1430903   0.1070817   0.1790989
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1461232   0.1111627   0.1810837
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.4103942   0.3814261   0.4393622
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6589667   0.6035709   0.7143625
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.6531999   0.5875228   0.7188771
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.6803637   0.6242018   0.7365257
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1966029   0.1817491   0.2114566
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2544137   0.2362087   0.2726187
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.3144870   0.2932732   0.3357007
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7241544   0.6844775   0.7638314
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.6999808   0.6537649   0.7461967
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7447881   0.7125731   0.7770031
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.1820095   0.1531542   0.2108649
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.2211531   0.1953717   0.2469344
6-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.2834202   0.2638911   0.3029493
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4036893   0.3650822   0.4422964
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.5352600   0.4964464   0.5740736
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.6996972   0.6756219   0.7237725
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1806086   0.1629555   0.1982617
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2116528   0.1971132   0.2261925
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2792535   0.2563000   0.3022070


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6914547   0.6510509   0.7318584
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8513854   0.8163510   0.8864198
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4342857   0.3975409   0.4710305
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3470513   0.3278294   0.3662733
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5673367   0.5455633   0.5891101
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6744186   0.6369554   0.7118819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3966032   0.3885203   0.4046860
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7639706   0.7413939   0.7865473
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3911447   0.3770865   0.4052029
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6863963   0.6699497   0.7028430
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4940677   0.4862211   0.5019142
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4254902   0.3977202   0.4532601
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3939394   0.3457532   0.4421255
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2385714   0.2069753   0.2701675
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1947391   0.1787488   0.2107293
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.3135456   0.2924164   0.3346748
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2774086   0.2416141   0.3132032
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2580071   0.2507721   0.2652422
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3253896   0.2975756   0.3532035
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1902526   0.1787489   0.2017563
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2390451   0.2239262   0.2541640
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4108676   0.4034192   0.4183159
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5030750   0.4588491   0.5473009
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7615063   0.7073642   0.8156483
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2276474   0.2069456   0.2483493
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4014652   0.3754511   0.4274793
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5610329   0.5138522   0.6082135
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2458522   0.2363900   0.2553144
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7642458   0.7364214   0.7920702
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2705750   0.2559548   0.2851951
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6449788   0.6246093   0.6653483
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2169852   0.2076274   0.2263430


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.1899269   1.1411918   1.2407431
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.3755290   1.2908812   1.4657275
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.1736918   1.0148876   1.3573449
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.1967224   1.0483744   1.3660621
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.1323361   0.9423853   1.3605741
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.7017027   0.5568819   0.8841852
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1048897   0.9804074   1.2451775
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.1828523   1.0542790   1.3271057
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.4024708   1.1481875   1.7130690
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 2.4636636   2.0873628   2.9078023
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9450404   0.8535849   1.0462947
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.9842166   0.9005217   1.0756902
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1100227   1.0485556   1.1750930
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.1877607   1.1148321   1.2654602
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.1374322   1.0487226   1.2336457
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.3080695   1.2233916   1.3986084
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 0.9895848   0.8757136   1.1182631
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.2431091   1.1212149   1.3782551
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.1797210   1.0779527   1.2910973
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.4886996   1.3801976   1.6057313
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8865258   0.8501989   0.9244048
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9397332   0.8966689   0.9848657
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.8301269   0.7775594   0.8862482
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.9248466   0.8477220   1.0089880
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.3016233   1.0467691   1.6185262
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.3130485   1.0636401   1.6209395
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.9282793   0.7042069   1.2236496
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.5218588   0.3673037   0.7414479
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8240390   0.6903734   0.9835841
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.8507451   0.7144695   1.0130134
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 2.8870323   2.2660891   3.6781236
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 2.5695213   2.0462644   3.2265818
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.4038448   0.3006105   0.5425315
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.4394653   0.3498525   0.5520319
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0027914   0.9275892   1.0840906
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.0484376   0.9639429   1.1403388
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 0.7522892   0.6763603   0.8367420
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.5659418   0.5125368   0.6249116
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.7515221   0.6183966   0.9133064
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 0.9934865   0.8498048   1.1614612
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9315853   0.7670061   1.1314787
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.0829778   0.9186727   1.2766691
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8035816   0.7648725   0.8442499
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8029659   0.7576576   0.8509837
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.9655698   1.6112394   2.3978216
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 2.5593095   2.0868109   3.1387918
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.3979368   1.0636184   1.8373387
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.3762945   1.0660213   1.7768749
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.2676121   0.9237963   1.7393881
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.0712346   0.7625255   1.5049249
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.7902392   1.4778085   2.1687223
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 2.1011304   1.7547288   2.5159152
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.0211959   0.7259020   1.4366140
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 2.8680785   2.2094811   3.7229893
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9912488   0.8696591   1.1298383
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.0324706   0.9169286   1.1625721
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.2940489   1.1664076   1.4356581
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.5996053   1.4460322   1.7694885
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 0.9666182   0.8880367   1.0521532
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.0284935   0.9597689   1.1021392
6-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.2150632   0.9987215   1.4782684
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.5571723   1.3105558   1.8501963
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.3259207   1.1786083   1.4916454
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.7332567   1.5664392   1.9178394
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.1718869   1.0418270   1.3181833
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.5461806   1.3626001   1.7544945


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1386233    0.1125141    0.1647325
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1228467    0.0453153    0.2003781
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1449791    0.1097320    0.1802262
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0181475   -0.0066857    0.0429807
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.3421094    0.3043161    0.3799027
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0781936   -0.1252446   -0.0311425
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0411869    0.0287801    0.0535938
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1971746    0.1643961    0.2299531
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0633332    0.0344653    0.0922012
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1996159    0.1674665    0.2317652
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0316759   -0.0483209   -0.0150309
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0523444   -0.0794425   -0.0252462
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0989406    0.0462945    0.1515866
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0507768    0.0203800    0.0811737
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0191414   -0.0400416    0.0017589
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.2024941    0.1758319    0.2291563
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1641720   -0.2141917   -0.1141522
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0073245   -0.0040730    0.0187219
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.3487373   -0.3897045   -0.3077701
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0099939   -0.0354172    0.0154294
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0311233    0.0031054    0.0591412
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0575388   -0.0744447   -0.0406330
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.2799869    0.2505760    0.3093978
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1800506    0.0575055    0.3025957
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1236087    0.0840396    0.1631778
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0611231    0.0365117    0.0857345
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.2583749    0.2184289    0.2983209
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0979338   -0.1514171   -0.0444505
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0492493    0.0360363    0.0624624
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0400914   -0.0002472    0.0804300
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0885655    0.0605632    0.1165677
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2412895    0.2050192    0.2775598
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0363766    0.0196822    0.0530710


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.2004807    0.1627002    0.2365564
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1442904    0.0468604    0.2317610
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.3338335    0.2558750    0.4036246
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0522906   -0.0215503    0.1207940
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.6030094    0.5362389    0.6601666
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1159422   -0.1904801   -0.0460713
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1038492    0.0721429    0.1344722
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.2580919    0.2155903    0.2982905
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.1619176    0.0853359    0.2320874
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2908172    0.2426392    0.3359305
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0641125   -0.0983804   -0.0309137
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1230213   -0.1893615   -0.0603814
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.2511568    0.1196752    0.3630009
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.2128370    0.0831763    0.3241605
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0982924   -0.2123869    0.0050650
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.6458204    0.5667199    0.7104801
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.5918056   -0.8189976   -0.3929897
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0283886   -0.0167487    0.0715220
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -1.0717532   -1.2624153   -0.8971589
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0525298   -0.1953485    0.0732251
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1301985    0.0059570    0.2389115
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1400423   -0.1820578   -0.0995202
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.5565510    0.4764601    0.6243896
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.2364401    0.0532523    0.3841825
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.4123297    0.2830502    0.5182978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2684989    0.1583214    0.3642540
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.6435798    0.5437711    0.7215535
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1745599   -0.2812179   -0.0767809
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2003209    0.1455784    0.2515561
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0524588   -0.0011094    0.1031606
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.3273231    0.2178669    0.4214614
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.3741045    0.3160112    0.4272638
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1676455    0.0880592    0.2402863
