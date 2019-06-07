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
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_vagbrth
* delta_W_nrooms
* delta_impsan

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
![](/tmp/15443161-1763-4260-93aa-a2cd530df5cc/eb09046c-ea5f-4dcf-81c1-75de0fb753e5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/15443161-1763-4260-93aa-a2cd530df5cc/eb09046c-ea5f-4dcf-81c1-75de0fb753e5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.6159114   0.5677194   0.6641033
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7651903   0.6685693   0.8618113
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3894819   0.3051152   0.4738487
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3582429   0.3187902   0.3976955
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.5430427   0.4497324   0.6363530
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.6567489   0.5138838   0.7996139
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.3861366   0.3641760   0.4080971
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7637827   0.6925482   0.8350171
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.3349643   0.2999150   0.3700137
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.5561067   0.4978994   0.6143139
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.4680910   0.4525751   0.4836068
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4133188   0.3395947   0.4870428
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.4427715   0.3217060   0.5638370
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1733700   0.1102252   0.2365147
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1951289   0.1580051   0.2322528
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                0.3250603   0.2669198   0.3832008
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.1810432   0.1039557   0.2581308
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2618660   0.2411687   0.2825633
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.3801036   0.2828453   0.4773619
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.1536956   0.1262671   0.1811242
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2088135   0.1629292   0.2546977
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.3631014   0.3459968   0.3802061
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2748848   0.1858527   0.3639169
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.5806630   0.4346330   0.7266930
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1706331   0.1102833   0.2309828
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1648453   0.1283018   0.2013888
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3318323   0.2288168   0.4348478
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.6716982   0.5265513   0.8168451
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2044675   0.1828286   0.2261064
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.8499058   0.7687909   0.9310207
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.2385002   0.1959607   0.2810397
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.4511468   0.3912638   0.5110299
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1804695   0.1581936   0.2027454


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.6914547   0.6510509   0.7318584
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.8513854   0.8163510   0.8864198
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.4342857   0.3975409   0.4710305
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3470513   0.3278294   0.3662733
0-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.5673367   0.5455633   0.5891101
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.6744186   0.6369554   0.7118819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.3966032   0.3885203   0.4046860
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7639706   0.7413939   0.7865473
0-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.3911447   0.3770865   0.4052029
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6863963   0.6699497   0.7028430
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4938812   0.4860382   0.5017241
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.4254902   0.3977202   0.4532601
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.3939394   0.3457532   0.4421255
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2385714   0.2069753   0.2701675
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1947391   0.1787488   0.2107293
0-6 months    ki1101329-Keneba           GAMBIA                         observed             NA                0.3135456   0.2924164   0.3346748
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.2774086   0.2416141   0.3132032
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2580071   0.2507721   0.2652422
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.3253896   0.2975756   0.3532035
0-6 months    ki1135781-COHORTS          INDIA                          observed             NA                0.1902526   0.1787489   0.2017563
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2390451   0.2239262   0.2541640
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4108676   0.4034192   0.4183159
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5030750   0.4588491   0.5473009
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.7615063   0.7073642   0.8156483
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2997812   0.2577294   0.3418330
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2276474   0.2069456   0.2483493
6-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.4014652   0.3754511   0.4274793
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5610329   0.5138522   0.6082135
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2458522   0.2363900   0.2553144
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7642458   0.7364214   0.7920702
6-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.2705750   0.2559548   0.2851951
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6449788   0.6246093   0.6653483
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2172797   0.2079084   0.2266510


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1226529   1.0547253   1.1949553
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.1126453   0.9964891   1.2423413
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1150343   0.9123963   1.3626769
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9687600   0.8793330   1.0672815
0-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0447368   0.8831613   1.2358726
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0269049   0.8319784   1.2675013
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0271060   0.9742149   1.0828686
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0002461   0.9155737   1.0927489
0-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.1677204   1.0605461   1.2857253
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.2342890   1.1170596   1.3638211
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0550965   1.0242625   1.0868588
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0294480   0.9075338   1.1677396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           0.8897126   0.6927285   1.1427112
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.3760829   0.9798288   1.9325867
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9980020   0.8400333   1.1856767
0-6 months    ki1101329-Keneba           GAMBIA                         observed             optimal           0.9645768   0.8123104   1.1453853
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.5322785   1.0243361   2.2920968
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.9852639   0.9147707   1.0611893
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           0.8560548   0.6724018   1.0898690
0-6 months    ki1135781-COHORTS          INDIA                          observed             optimal           1.2378530   1.0485406   1.4613456
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.1447783   0.9290161   1.4106508
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.1315504   1.0816556   1.1837467
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.8301302   1.3752031   2.4355505
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.3114428   1.0483209   1.6406066
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.7568764   1.2832504   2.4053097
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.3809762   1.1323840   1.6841418
6-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.2098436   0.8911798   1.6424535
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.8352455   0.6771202   1.0302970
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.2024023   1.0902814   1.3260532
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           0.8992123   0.8185270   0.9878511
6-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.1344854   0.9577740   1.3438005
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.4296428   1.2606124   1.6213377
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.2039694   1.0737983   1.3499205


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0755433    0.0361415    0.1149451
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0861951    0.0025746    0.1698157
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0448038   -0.0334568    0.1230643
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0111915   -0.0458755    0.0234925
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0242940   -0.0669614    0.1155493
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0176697   -0.1205813    0.1559208
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0104666   -0.0099466    0.0308798
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0001879   -0.0673689    0.0677448
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0561804    0.0239839    0.0883769
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1302897    0.0749811    0.1855982
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0257902    0.0118864    0.0396939
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0121714   -0.0393659    0.0637087
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.0488321   -0.1595251    0.0618609
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0652015    0.0056707    0.1247323
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0003899   -0.0340130    0.0332333
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0115147   -0.0672984    0.0442690
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0963654    0.0226973    0.1700335
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0038589   -0.0232978    0.0155800
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0547141   -0.1466033    0.0371751
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0365570    0.0110217    0.0620922
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0302317   -0.0133704    0.0738337
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0477661    0.0312933    0.0642390
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2281902    0.1533476    0.3030329
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1808433    0.0534494    0.3082372
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1291481    0.0738925    0.1844038
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0628021    0.0298236    0.0957806
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0696329   -0.0320536    0.1713194
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.1106653   -0.2507769    0.0294463
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0413847    0.0213359    0.0614335
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0856600   -0.1651411   -0.0061790
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0320748   -0.0083247    0.0724743
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1938320    0.1373437    0.2503202
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0368102    0.0161451    0.0574754


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1092527    0.0518858    0.1631486
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1012410   -0.0035233    0.1950682
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1031666   -0.0960149    0.2661503
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0322474   -0.1372256    0.0630401
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0428211   -0.1322960    0.1908551
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0262000   -0.2019543    0.2110461
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0263907   -0.0264675    0.0765269
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0002460   -0.0922113    0.0848767
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1436306    0.0570896    0.2222289
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1898170    0.1047926    0.2667660
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0522194    0.0236877    0.0799173
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0286056   -0.1018873    0.1436447
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.1239584   -0.4435670    0.1248882
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.2732996   -0.0205865    0.4825588
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0020020   -0.1904290    0.1565998
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0367241   -0.2310566    0.1269313
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.3473771    0.0237579    0.5637183
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0149565   -0.0931701    0.0576610
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.1681495   -0.4872060    0.0824585
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.1921497    0.0462935    0.3156992
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1264684   -0.0764076    0.2911073
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1162568    0.0754913    0.1552247
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.4535908    0.2728347    0.5894152
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.2374810    0.0460936    0.3904694
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.4308080    0.2207289    0.5842531
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2758745    0.1169073    0.4062258
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.1734469   -0.1221080    0.3911548
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.1972528   -0.4768426    0.0294061
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1683316    0.0828056    0.2458825
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.1120844   -0.2217067   -0.0122983
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1185431   -0.0440876    0.2558419
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.3005246    0.2067348    0.3832254
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1694141    0.0687264    0.2592156
