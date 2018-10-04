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
```




# Results Detail

## Results Plots
![](/tmp/b56fdcf7-f283-45ac-b70f-255d938371c5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b56fdcf7-f283-45ac-b70f-255d938371c5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.6110673   0.5694150   0.6527197
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7500907   0.6579390   0.8422425
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2707555   0.2350907   0.3064202
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2972634   0.2688737   0.3256531
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3996569   0.3603361   0.4389778
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4790104   0.4211957   0.5368252
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.3547923   0.3405001   0.3690845
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.6907685   0.6582494   0.7232875
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.3306218   0.3044239   0.3568196
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.5500986   0.5158824   0.5843147
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.4406907   0.4274534   0.4539281
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4058578   0.3726692   0.4390463
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.3798140   0.3232978   0.4363303
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1537616   0.1248487   0.1826746
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1159636   0.0968950   0.1350322
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                0.2067310   0.1794017   0.2340602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.2490692   0.1993863   0.2987521
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2322230   0.2192316   0.2452145
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2249352   0.1982461   0.2516243
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.1549398   0.1338774   0.1760023
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2004323   0.1757884   0.2250762
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.3114634   0.2981414   0.3247853
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2800649   0.2257144   0.3344154
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.5717076   0.4307261   0.7126891
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1518803   0.1150172   0.1887434
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1323313   0.1099111   0.1547515
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.2643165   0.2280399   0.3005931
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4160649   0.3508746   0.4812553
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2033982   0.1885208   0.2182755
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7572391   0.7180196   0.7964586
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.1927136   0.1654448   0.2199823
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.4484873   0.4103279   0.4866467
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1769661   0.1594714   0.1944608


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.6919189   0.6515151   0.7323227
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.8510588   0.8160244   0.8860932
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.4404704   0.4037256   0.4772152
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3488641   0.3296422   0.3680860
0-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.5689736   0.5472002   0.5907470
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.6851180   0.6476548   0.7225813
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.3968973   0.3888144   0.4049801
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7641167   0.7415400   0.7866933
0-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.3913165   0.3772583   0.4053747
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6865654   0.6701188   0.7030121
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4942811   0.4864345   0.5021276
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.4237413   0.3959713   0.4515112
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.3942500   0.3460638   0.4424361
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2399380   0.2083419   0.2715341
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1987920   0.1828018   0.2147823
0-6 months    ki1101329-Keneba           GAMBIA                         observed             NA                0.3161697   0.2950405   0.3372989
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.2785896   0.2427950   0.3143842
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2586168   0.2513817   0.2658518
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.3315595   0.3037455   0.3593735
0-6 months    ki1135781-COHORTS          INDIA                          observed             NA                0.1902299   0.1787262   0.2017336
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2402721   0.2251532   0.2553909
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4113213   0.4038730   0.4187697
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5107961   0.4665702   0.5550220
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.7603318   0.7061898   0.8144739
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3132596   0.2712078   0.3553114
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2323552   0.2116533   0.2530570
6-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.4022376   0.3762235   0.4282518
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5715924   0.5244117   0.6187730
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2461049   0.2366427   0.2555672
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7640865   0.7362621   0.7919109
6-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.2716921   0.2570720   0.2863123
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6463470   0.6259775   0.6667165
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2171538   0.2077960   0.2265116


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.8831488   0.8465986   0.9212770
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.8813619   0.7923524   0.9803703
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.6146962   0.5474619   0.6901876
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8520893   0.7847079   0.9252567
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          0.7024174   0.6383332   0.7729351
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.6991648   0.6277275   0.7787320
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.8939146   0.8629641   0.9259751
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.9040091   0.8651686   0.9445934
0-24 months   ki1135781-COHORTS          INDIA                          optimal              observed          0.8448961   0.7868911   0.9071767
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.8012325   0.7567002   0.8483856
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.8915792   0.8684619   0.9153119
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.9577962   0.9230866   0.9938109
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.9633838   0.8366770   1.1092791
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.6408392   0.5392618   0.7615499
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.5833414   0.5030318   0.6764726
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          0.6538608   0.5806474   0.7363056
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.8940363   0.7447924   1.0731861
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.8979428   0.8551191   0.9429111
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.6784158   0.6228705   0.7389144
0-6 months    ki1135781-COHORTS          INDIA                          optimal              observed          0.8144871   0.7193363   0.9222241
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.8341888   0.7452052   0.9337978
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.7572264   0.7282827   0.7873203
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.5482910   0.4796855   0.6267086
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.7519185   0.6038238   0.9363352
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.4848384   0.3949590   0.5951713
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.5695218   0.4908275   0.6608331
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          0.6571153   0.5723668   0.7544124
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.7279050   0.6357264   0.8334492
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.8264692   0.7751256   0.8812139
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.9910384   0.9400991   1.0447378
6-24 months   ki1135781-COHORTS          INDIA                          optimal              observed          0.7093086   0.6214911   0.8095349
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.6938801   0.6415469   0.7504823
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.8149343   0.7431828   0.8936131
