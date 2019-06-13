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
![](/tmp/a9f9b3c5-6249-4ec8-ac5c-20063efc2fb8/161234ae-e3f8-44b3-b309-5bfe94896449/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a9f9b3c5-6249-4ec8-ac5c-20063efc2fb8/161234ae-e3f8-44b3-b309-5bfe94896449/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.6159114   0.5677194   0.6641033
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7535793   0.6554449   0.8517138
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3601262   0.2712872   0.4489651
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3307587   0.2918155   0.3697018
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.5455979   0.4603571   0.6308387
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.7310970   0.6017802   0.8604138
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.3902157   0.3680979   0.4123336
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7794570   0.7154752   0.8434389
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.3431550   0.3075515   0.3787586
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.5558672   0.4982979   0.6134366
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.4660982   0.4509320   0.4812645
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4133188   0.3395947   0.4870428
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.4352320   0.2546213   0.6158426
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1680378   0.0997620   0.2363136
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2171045   0.1779402   0.2562687
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                0.2834307   0.2203951   0.3464662
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.2095871   0.1272378   0.2919364
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2462590   0.2255423   0.2669758
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.4431143   0.3842509   0.5019778
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.1597290   0.1300470   0.1894111
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2023127   0.1586329   0.2459924
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.3771811   0.3598294   0.3945329
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2748848   0.1858527   0.3639169
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.5728445   0.4251621   0.7205270
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2458154   0.1658866   0.3257443
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1623307   0.1254537   0.1992078
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.2715140   0.1665650   0.3764630
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.6532704   0.5076692   0.7988716
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2055435   0.1832317   0.2278552
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.8342122   0.7335335   0.9348908
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.2173867   0.1781648   0.2566085
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.4473012   0.3835986   0.5110037
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1901941   0.1663877   0.2140005


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
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.1297886   1.0085263   1.2656312
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.2059266   0.9596955   1.5153337
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0492585   0.9464088   1.1632853
0-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0398440   0.8922537   1.2118476
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9224748   0.7774523   1.0945493
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0163690   0.9640830   1.0714907
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           0.9801317   0.9069755   1.0591887
0-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.1398484   1.0359849   1.2541248
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.2348206   1.1188338   1.3628316
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0596074   1.0292199   1.0908921
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0294480   0.9075338   1.1677396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           0.9051252   0.6133584   1.3356818
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.4197489   0.9684362   2.0813834
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.8969832   0.7651435   1.0515398
0-6 months    ki1101329-Keneba           GAMBIA                         observed             optimal           1.1062515   0.8925506   1.3711181
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.3235960   0.9130896   1.9186575
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0477062   0.9679140   1.1340762
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           0.7343241   0.6514364   0.8277584
0-6 months    ki1135781-COHORTS          INDIA                          observed             optimal           1.1910960   1.0007911   1.4175883
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.1815629   0.9626554   1.4502498
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0893110   1.0433219   1.1373274
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.8301302   1.3752031   2.4355505
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.3293420   1.0561655   1.6731754
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.2195377   0.9106363   1.6332230
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.4023680   1.1421586   1.7218589
6-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.4786170   1.0111935   2.1621067
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.8588065   0.6950674   1.0611181
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1961079   1.0813999   1.3229834
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           0.9161288   0.8142026   1.0308147
6-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.2446715   1.0487829   1.4771475
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.4419341   1.2592996   1.6510558
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.1424105   1.0143539   1.2866337


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0755433    0.0361415    0.1149451
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0978060    0.0131771    0.1824350
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0741596   -0.0080788    0.1563979
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0162927   -0.0178298    0.0504151
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0217388   -0.0618182    0.1052958
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0566784   -0.1815888    0.0682319
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0063874   -0.0142215    0.0269964
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0154865   -0.0759367    0.0449637
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0479897    0.0152449    0.0807344
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1305291    0.0758896    0.1851686
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0277829    0.0141944    0.0413714
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0121714   -0.0393659    0.0637087
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.0412926   -0.2110357    0.1284506
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0705337    0.0056850    0.1353823
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0223654   -0.0569651    0.0122343
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0301149   -0.0308379    0.0910677
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0678215   -0.0104934    0.1461365
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0117481   -0.0077610    0.0312572
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.1177248   -0.1697727   -0.0656768
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0305236    0.0027062    0.0583409
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0367325   -0.0047295    0.0781945
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0336864    0.0173766    0.0499963
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2281902    0.1533476    0.3030329
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1886617    0.0597144    0.3176091
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0539657   -0.0181630    0.1260945
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0653167    0.0316648    0.0989686
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.1299512    0.0265804    0.2333220
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0922375   -0.2301771    0.0457021
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0403087    0.0195561    0.0610614
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0699663   -0.1681933    0.0282607
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0531883    0.0159000    0.0904767
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1976776    0.1374678    0.2578874
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0270856    0.0044063    0.0497650


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1092527    0.0518858    0.1631486
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1148787    0.0084542    0.2098804
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1707622   -0.0419971    0.3400794
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0469460   -0.0566259    0.1403656
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0383173   -0.1207574    0.1748137
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0840404   -0.2862526    0.0863819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0161054   -0.0372551    0.0667207
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0202710   -0.1025656    0.0558812
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1226904    0.0347350    0.2026312
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1901658    0.1062122    0.2662336
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0562542    0.0283904    0.0833190
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0286056   -0.1018873    0.1436447
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.1048196   -0.6303683    0.2513187
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.2956501   -0.0325925    0.5195503
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.1148481   -0.3069445    0.0490137
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0960464   -0.1203847    0.2706682
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.2444824   -0.0951827    0.4788022
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0455339   -0.0331496    0.1182250
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.3617964   -0.5350694   -0.2080819
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.1604371    0.0007905    0.2945766
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1536633   -0.0387933    0.3104636
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0819886    0.0415230    0.1207457
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.4535908    0.2728347    0.5894152
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.2477481    0.0531787    0.4023340
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1800171   -0.0981333    0.3877137
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2869204    0.1244648    0.4192323
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.3236923    0.0110696    0.5374881
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.1644066   -0.4387094    0.0575979
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1639550    0.0752727    0.2441326
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0915495   -0.2281955    0.0298935
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1965751    0.0465139    0.3230195
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.3064870    0.2059078    0.3943269
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1246579    0.0141507    0.2227780
