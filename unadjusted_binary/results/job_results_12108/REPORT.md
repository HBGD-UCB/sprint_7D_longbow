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

unadjusted

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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       58     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1      113     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0       56     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       99     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   0       82     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1      194     602
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     4758   27211
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     5470   27211
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     4869   27211
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1     4132   27211
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   0     4145   27211
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1     3837   27211
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      115     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       56     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    0      118     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1       37     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   0      202     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1       74     602
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     5398   27145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1     4788   27145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    0     5646   27145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1     3336   27145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   0     4948   27145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1     3029   27145
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       54     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       57     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0       55     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       62     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   0       78     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1      120     426
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     2936   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      682   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     3005   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1      796   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   0     2294   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1      808   10521


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
![](/tmp/2ec06193-c36f-4ff4-91c2-87076923345f/92611b97-7f12-4ef1-8ea4-6871f6d3831e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2ec06193-c36f-4ff4-91c2-87076923345f/92611b97-7f12-4ef1-8ea4-6871f6d3831e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2ec06193-c36f-4ff4-91c2-87076923345f/92611b97-7f12-4ef1-8ea4-6871f6d3831e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2ec06193-c36f-4ff4-91c2-87076923345f/92611b97-7f12-4ef1-8ea4-6871f6d3831e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6415929   0.6043150   0.6788709
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.6611111   0.5839267   0.7382956
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.7378641   0.6940814   0.7816467
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.7532468   0.6568305   0.8496631
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.8695652   0.8006604   0.9384700
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.8771930   0.8345363   0.9198497
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4317343   0.3727199   0.4907487
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.4508197   0.3883423   0.5132970
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.4162162   0.3451345   0.4872980
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3300853   0.2979123   0.3622583
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.3592737   0.3254000   0.3931473
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.3529412   0.3190698   0.3868125
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.5062241   0.4430869   0.5693612
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.4859813   0.4190006   0.5529620
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.5882736   0.5636474   0.6128998
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6608187   0.5898008   0.7318367
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.6387097   0.5630224   0.7143970
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.7028986   0.6489409   0.7568562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3806856   0.3684681   0.3929030
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.3938746   0.3791183   0.4086310
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.4251055   0.4093703   0.4408407
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7464789   0.6880357   0.8049221
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.7708333   0.7113612   0.8303054
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7664921   0.7396504   0.7933339
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3706897   0.3374654   0.4039139
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.3274262   0.3007046   0.3541478
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.4261299   0.4072392   0.4450206
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6032448   0.5664139   0.6400757
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.6492754   0.6136637   0.6848870
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.7349112   0.7138643   0.7559582
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5348064   0.5231167   0.5464962
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4590601   0.4475652   0.4705550
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.4807066   0.4682331   0.4931800
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4478936   0.4053524   0.4904348
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.3788301   0.3320137   0.4256465
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.4347222   0.3994932   0.4699513
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4025974   0.2929191   0.5122757
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.3736264   0.2741060   0.4731467
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.3991228   0.3354761   0.4627695
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2583026   0.2061529   0.3104523
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2500000   0.1956294   0.3043706
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1945946   0.1375065   0.2516827
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2119367   0.1839757   0.2398976
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1828794   0.1555872   0.2101716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1882353   0.1605292   0.2159414
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.3659574   0.3043539   0.4275610
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.2682927   0.2076244   0.3289609
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.3113942   0.2872432   0.3355452
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3274854   0.2570878   0.3978830
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2387097   0.1715431   0.3058763
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.2681159   0.2158117   0.3204202
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2576333   0.2466211   0.2686455
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2478002   0.2347506   0.2608499
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2699419   0.2558007   0.2840831
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.3333333   0.2600268   0.4066398
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.3164557   0.2439022   0.3890092
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.3255814   0.2925542   0.3586086
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2169935   0.1877807   0.2462062
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1494755   0.1288116   0.1701394
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.2004680   0.1849699   0.2159661
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2241888   0.1927917   0.2555859
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.2217391   0.1907379   0.2527403
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2520710   0.2313664   0.2727756
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4700569   0.4584351   0.4816788
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3714095   0.3602059   0.3826130
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.3797167   0.3677670   0.3916663
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3760684   0.3194388   0.4326979
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.5049505   0.4331088   0.5767922
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.5809019   0.5299093   0.6318944
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5869565   0.4443693   0.7295437
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.8070175   0.7043528   0.9096823
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.8014706   0.7342898   0.8686514
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2883436   0.2187258   0.3579614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2969697   0.2271746   0.3667648
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.3178295   0.2373894   0.3982695
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1861804   0.1527457   0.2196152
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2580645   0.2206941   0.2954349
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.2381853   0.2018741   0.2744964
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2482759   0.1779330   0.3186187
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.3245033   0.2498000   0.3992066
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.4331151   0.4034006   0.4628295
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5135135   0.4204224   0.6066046
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.5299145   0.4393711   0.6204579
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.6060606   0.5379212   0.6742000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2285627   0.2141850   0.2429404
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2510171   0.2338747   0.2681595
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2656461   0.2472763   0.2840160
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7794118   0.7096856   0.8491380
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.7716535   0.6986074   0.8446997
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7594937   0.7261543   0.7928331
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.2257525   0.1922394   0.2592656
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.2293869   0.2025911   0.2561827
6-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.3033932   0.2832626   0.3235238
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5503212   0.5051926   0.5954497
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.6082474   0.5647938   0.6517010
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.6980325   0.6717079   0.7243571
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1885019   0.1741054   0.2028985
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2094186   0.1951934   0.2236438
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2604771   0.2436820   0.2772722


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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4938812   0.4860382   0.5017241
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2172797   0.2079084   0.2266510


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0304215   0.9250059   1.1478503
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.1500502   1.0703796   1.2356509
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.1544228   0.9930811   1.3419769
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.1645493   1.0155265   1.3354404
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.0442062   0.8595054   1.2685979
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9640564   0.7746427   1.1997850
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0884269   0.9503977   1.2465024
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0692425   0.9325479   1.2259739
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.9600123   0.7971684   1.1561216
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.1620815   1.0188282   1.3254770
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9665430   0.8236540   1.1342205
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.0636783   0.9320796   1.2138573
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0346456   0.9848437   1.0869659
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.1166840   1.0632956   1.1727531
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.0326258   0.9251364   1.1526042
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.0268102   0.9424149   1.1187633
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 0.8832892   0.7824544   0.9971185
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.1495597   1.0401729   1.2704499
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.0763049   0.9914969   1.1683669
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.2182636   1.1388157   1.3032541
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8583669   0.8330397   0.8844641
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8988422   0.8712122   0.9273486
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.8458038   0.7360696   0.9718973
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.9705927   0.8607552   1.0944461
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 0.9280397   0.6340122   1.3584244
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 0.9913696   0.7230078   1.3593403
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.9678571   0.7193413   1.3022295
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.7533591   0.5276403   1.0756379
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8628964   0.7070514   1.0530919
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.8881677   0.7288724   1.0822770
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.7331254   0.5530299   0.9718694
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 0.8509027   0.7069465   1.0241729
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.7289171   0.5115619   1.0386232
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.8187112   0.6124365   1.0944613
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9618332   0.8987596   1.0293332
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.0477757   0.9792757   1.1210673
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 0.9493671   0.6909742   1.3043872
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.9767442   0.7666553   1.2444043
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.6888480   0.5679636   0.8354614
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 0.9238436   0.7910008   1.0789963
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9890732   0.8114962   1.2055089
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.1243694   0.9558682   1.3225740
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7901372   0.7623683   0.8189176
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8078100   0.7778417   0.8389329
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.3427093   1.0967153   1.6438798
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.5446708   1.3351008   1.7871370
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.3749188   1.0451644   1.8087123
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.3654684   1.0560298   1.7655790
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.0299162   0.7353089   1.4425602
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.1022596   0.7769168   1.5638434
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.3860991   1.1005379   1.7457562
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.2793249   1.0108262   1.6191431
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.3070272   0.9072792   1.8829045
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.7444912   1.3033653   2.3349168
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.0319388   0.8043868   1.3238627
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1802233   0.9535028   1.4608525
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0982416   1.0008625   1.2050954
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.1622460   1.0585202   1.2761361
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 0.9900461   0.8691413   1.1277697
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.9744447   0.8820231   1.0765506
6-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.0160990   0.8411969   1.2273667
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.3439196   1.1422341   1.5812168
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.1052589   0.9913586   1.2322456
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.2684093   1.1589373   1.3882219
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.1109625   1.0050745   1.2280061
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.3818273   1.2562768   1.5199251


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0498617    0.0136229    0.0861006
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0981386    0.0149673    0.1813099
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0025514   -0.0436685    0.0487712
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0169661   -0.0091774    0.0431096
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0611126    0.0019953    0.1202299
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0135999   -0.0462480    0.0734478
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0159176    0.0066511    0.0251841
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0174917   -0.0359444    0.0709279
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0204551   -0.0097823    0.0506925
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0831515    0.0511282    0.1151748
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0409253   -0.0490406   -0.0328099
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0224034   -0.0572353    0.0124286
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0086580   -0.1070103    0.0896942
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0197312   -0.0598829    0.0204206
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0171976   -0.0393979    0.0050027
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0524118   -0.1096733    0.0048496
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0500767   -0.1085715    0.0084180
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0003738   -0.0079341    0.0086817
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0079438   -0.0756277    0.0597401
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0267408   -0.0530812   -0.0004004
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0148563   -0.0130226    0.0427353
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0591894   -0.0673810   -0.0509977
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1270067    0.0803146    0.1736987
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1745498    0.0503070    0.2987925
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0114376   -0.0447554    0.0676306
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0414670    0.0130450    0.0698890
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1531893    0.0855609    0.2208177
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0475194   -0.0323299    0.1273686
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0172895    0.0060662    0.0285127
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0151660   -0.0796516    0.0493197
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0448225    0.0138664    0.0757786
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0946576    0.0552282    0.1340869
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0287778    0.0172371    0.0403185


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0721114    0.0204259    0.1210697
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1152693    0.0108131    0.2086952
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0058749   -0.1064587    0.1068039
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0488864   -0.0295081    0.1213112
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1077184   -0.0029348    0.2061633
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0201654   -0.0727409    0.1050253
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0401349    0.0164796    0.0632212
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0228958   -0.0496325    0.0904125
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0522954   -0.0282553    0.1265359
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1211421    0.0729569    0.1668228
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0828646   -0.0993777   -0.0665995
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0526531   -0.1381959    0.0264606
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0219780   -0.3047859    0.1995322
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0827054   -0.2646579    0.0730687
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0883109   -0.2083746    0.0198233
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1671586   -0.3648740    0.0019158
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1805162   -0.4112386    0.0124856
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0014490   -0.0312761    0.0331356
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0244131   -0.2550452    0.1638370
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1405544   -0.2876208   -0.0102852
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0621487   -0.0620086    0.1717910
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1440595   -0.1640735   -0.1243896
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.2524607    0.1563185    0.3376469
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.2292164    0.0435940    0.3788127
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0381532   -0.1687888    0.2084548
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1821545    0.0479340    0.2974529
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.3815756    0.1883521    0.5287998
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0846998   -0.0695666    0.2167159
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0703247    0.0235681    0.1148423
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0198443   -0.1078303    0.0611536
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.1656564    0.0431856    0.2724511
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1467608    0.0829894    0.2060973
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1324458    0.0777313    0.1839143
