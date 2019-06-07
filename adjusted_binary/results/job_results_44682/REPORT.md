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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country                        parity    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  -------  ------------  -------  -----
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0       47    243
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1       18    243
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   0       37    243
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   1       13    243
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  0       79    243
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  1       49    243
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        9     58
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     58
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       10     58
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1        2     58
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0       35     58
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1        2     58
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       52    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       76    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0       40    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1       63    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  0       36    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  1       40    307
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       90    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1      158    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0       83    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1      155    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0       90    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1      126    702
0-24 months   ki1101329-Keneba           GAMBIA                         1                   0       44   1164
0-24 months   ki1101329-Keneba           GAMBIA                         1                   1       79   1164
0-24 months   ki1101329-Keneba           GAMBIA                         2                   0       43   1164
0-24 months   ki1101329-Keneba           GAMBIA                         2                   1       66   1164
0-24 months   ki1101329-Keneba           GAMBIA                         3+                  0      429   1164
0-24 months   ki1101329-Keneba           GAMBIA                         3+                  1      503   1164
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       68    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       80    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       61    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       71    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  0      139    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  1      142    561
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      680   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      921   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      490   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      533   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0      460   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1      491   3575
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0       19    238
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1       11    238
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                   0       19    238
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                   1       23    238
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  0      107    238
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  1       59    238
0-24 months   ki1135781-COHORTS          INDIA                          1                   0      188   1708
0-24 months   ki1135781-COHORTS          INDIA                          1                   1       82   1708
0-24 months   ki1135781-COHORTS          INDIA                          2                   0      296   1708
0-24 months   ki1135781-COHORTS          INDIA                          2                   1       98   1708
0-24 months   ki1135781-COHORTS          INDIA                          3+                  0      830   1708
0-24 months   ki1135781-COHORTS          INDIA                          3+                  1      214   1708
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   0      140   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   1      241   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   0      133   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   1      226   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  0      391   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  1      558   1689
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0      838   3827
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      660   3827
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0      691   3827
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1      494   3827
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  0      672   3827
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  1      472   3827
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   0       16    108
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   1       10    108
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                   0       16    108
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                   1        9    108
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                  0       29    108
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                  1       28    108
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        2     16
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     16
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                   0        2     16
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                   1        0     16
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0       12     16
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1        0     16
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0       15    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1       64    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   0       11    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   1       48    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                  0       13    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                  1       33    184
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       32    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       93    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0       32    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1       77    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0       35    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1       67    336
0-6 months    ki1101329-Keneba           GAMBIA                         1                   0       11    316
0-6 months    ki1101329-Keneba           GAMBIA                         1                   1       28    316
0-6 months    ki1101329-Keneba           GAMBIA                         2                   0       11    316
0-6 months    ki1101329-Keneba           GAMBIA                         2                   1       19    316
0-6 months    ki1101329-Keneba           GAMBIA                         3+                  0       85    316
0-6 months    ki1101329-Keneba           GAMBIA                         3+                  1      162    316
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0       18    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       30    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   0       20    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   1       25    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                  0       37    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                  1       50    180
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      336   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      899   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      152   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      509   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0      158   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1      463   2517
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   0        4    127
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   1       11    127
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                   0        1    127
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                   1       21    127
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                  0       34    127
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                  1       56    127
0-6 months    ki1135781-COHORTS          INDIA                          1                   0      115   1082
0-6 months    ki1135781-COHORTS          INDIA                          1                   1       82   1082
0-6 months    ki1135781-COHORTS          INDIA                          2                   0      161   1082
0-6 months    ki1135781-COHORTS          INDIA                          2                   1       98   1082
0-6 months    ki1135781-COHORTS          INDIA                          3+                  0      412   1082
0-6 months    ki1135781-COHORTS          INDIA                          3+                  1      214   1082
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                   0       53    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                   1      154    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                   0       37    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                   1      126    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                  0      108    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                  1      274    752
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0      308   2418
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      660   2418
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   0      227   2418
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   1      494   2418
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                  0      257   2418
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                  1      472   2418
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0       31    135
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1        8    135
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   0       21    135
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   1        4    135
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  0       50    135
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  1       21    135
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        7     42
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     42
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0        8     42
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1        2     42
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0       23     42
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1        2     42
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       37    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       12    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0       29    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1       15    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  0       23    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  1        7    123
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       58    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       65    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0       51    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1       78    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0       55    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1       59    366
6-24 months   ki1101329-Keneba           GAMBIA                         1                   0       33    848
6-24 months   ki1101329-Keneba           GAMBIA                         1                   1       51    848
6-24 months   ki1101329-Keneba           GAMBIA                         2                   0       32    848
6-24 months   ki1101329-Keneba           GAMBIA                         2                   1       47    848
6-24 months   ki1101329-Keneba           GAMBIA                         3+                  0      344    848
6-24 months   ki1101329-Keneba           GAMBIA                         3+                  1      341    848
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       50    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       50    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       41    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       46    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  0      102    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  1       92    381
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      344   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1       22   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      338   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1       24   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0      302   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1       28   1058
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0       15    111
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1        0    111
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                   0       18    111
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                   1        2    111
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  0       73    111
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  1        3    111
6-24 months   ki1135781-COHORTS          INDIA                          1                   0       73    626
6-24 months   ki1135781-COHORTS          INDIA                          1                   1        0    626
6-24 months   ki1135781-COHORTS          INDIA                          2                   0      135    626
6-24 months   ki1135781-COHORTS          INDIA                          2                   1        0    626
6-24 months   ki1135781-COHORTS          INDIA                          3+                  0      418    626
6-24 months   ki1135781-COHORTS          INDIA                          3+                  1        0    626
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   0       87    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   1       87    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   0       96    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   1      100    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  0      283    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  1      284    937
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0      530   1409
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1        0   1409
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0      464   1409
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1        0   1409
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  0      415   1409
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  1        0   1409


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

* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
![](/tmp/95f48cc8-0493-47f5-ac8d-7c1298712280/8e55c44c-ebf8-496b-b1c1-723efe1f0776/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/95f48cc8-0493-47f5-ac8d-7c1298712280/8e55c44c-ebf8-496b-b1c1-723efe1f0776/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/95f48cc8-0493-47f5-ac8d-7c1298712280/8e55c44c-ebf8-496b-b1c1-723efe1f0776/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/95f48cc8-0493-47f5-ac8d-7c1298712280/8e55c44c-ebf8-496b-b1c1-723efe1f0776/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2769231   0.1645257   0.3893205
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2600000   0.1304920   0.3895080
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.3828125   0.2955339   0.4700911
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5937500   0.5025655   0.6849345
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.6116505   0.5258789   0.6974220
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.5263158   0.4036173   0.6490143
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6370968   0.5736047   0.7005888
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.6512605   0.5873324   0.7151886
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.5833333   0.5133344   0.6533322
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.6422764   0.5524262   0.7321266
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.6055046   0.5059390   0.7050702
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.5396996   0.5043596   0.5750395
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5405405   0.4511564   0.6299246
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.5378788   0.4446116   0.6311460
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.5053381   0.4431655   0.5675107
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.5752655   0.5506705   0.5998604
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.5210166   0.4906406   0.5513926
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.5162986   0.4840455   0.5485518
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.3666667   0.1888222   0.5445111
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.5476190   0.3929269   0.7023112
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.3554217   0.2788464   0.4319970
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3037037   0.2466236   0.3607838
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.2487310   0.2058243   0.2916376
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.2049808   0.1806925   0.2292692
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6325459   0.5812627   0.6838292
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.6295265   0.5778482   0.6812047
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.5879874   0.5549622   0.6210125
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4405874   0.4154034   0.4657715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4168776   0.3891176   0.4446377
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.4125874   0.3838952   0.4412797
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3846154   0.1919163   0.5773145
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.3600000   0.1690387   0.5509613
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.4912281   0.3607514   0.6217048
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8101266   0.7219638   0.8982894
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.8135593   0.7192838   0.9078348
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.7173913   0.5887014   0.8460812
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7440000   0.6670006   0.8209994
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.7064220   0.6191448   0.7936993
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.6568627   0.5631121   0.7506134
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.7179487   0.5666622   0.8692352
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.6333333   0.4620301   0.8046366
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.6558704   0.5973013   0.7144396
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6250000   0.4861138   0.7638862
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.5555556   0.4116994   0.6994117
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.5747126   0.4698150   0.6796103
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7279352   0.7031846   0.7526858
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.7700454   0.7379897   0.8021011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.7455717   0.7111822   0.7799612
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.4162437   0.3473776   0.4851097
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.3783784   0.3192869   0.4374699
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.3418530   0.3046787   0.3790273
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.7439614   0.6839765   0.8039462
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.7730061   0.7085362   0.8374760
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.7172775   0.6721142   0.7624408
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6818182   0.6524958   0.7111406
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.6851595   0.6512367   0.7190823
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.6474623   0.6127595   0.6821650
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2448980   0.1297835   0.3600124
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3409091   0.1975459   0.4842723
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.2333333   0.0577808   0.4088859
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5284553   0.4371428   0.6197678
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.6046512   0.5181147   0.6911876
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.5175439   0.4219153   0.6131725
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.6071429   0.4997767   0.7145091
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.5949367   0.4843292   0.7055442
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.4978102   0.4570458   0.5385746
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5000000   0.3902652   0.6097348
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.5287356   0.4138616   0.6436096
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.4742268   0.3991049   0.5493487
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0601093   0.0358144   0.0844041
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0662983   0.0415746   0.0910220
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0848485   0.0545378   0.1151592
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5000000   0.4226978   0.5773022
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.5102041   0.4359618   0.5844463
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.5008818   0.4572446   0.5445191


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3292181   0.2676535   0.3907827
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6253561   0.5873792   0.6633330
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5567010   0.5253304   0.5880717
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5222816   0.4773852   0.5671781
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5440559   0.5275873   0.5605246
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3907563   0.3259495   0.4555631
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2306792   0.2105836   0.2507747
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4248759   0.4092286   0.4405231
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4351852   0.3405027   0.5298677
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7053571   0.6558827   0.7548316
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.6613924   0.6093076   0.7134773
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5833333   0.5108676   0.6557991
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7433453   0.7262923   0.7603982
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3641405   0.3354558   0.3928252
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6724566   0.6537480   0.6911651
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5519126   0.4992021   0.6046230
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5176887   0.4814695   0.5539079
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4934383   0.4388573   0.5480193
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0699433   0.0547084   0.0851781
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.9388889   0.4937812   1.7852286
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.3823785   0.8677297   2.2022645
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.0301482   0.8364876   1.2686443
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.8864266   0.6704966   1.1718957
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0222317   0.8887885   1.1757100
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9156118   0.7833713   1.0701758
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.9427476   0.7596880   1.1699187
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 0.8402917   0.7200260   0.9806454
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9950758   0.7830650   1.2644874
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.9348754   0.7607609   1.1488394
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9056977   0.8425222   0.9736104
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.8974963   0.8320558   0.9680837
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.4935065   0.8519922   2.6180540
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.9693319   0.5701286   1.6480566
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 0.8189922   0.6345843   1.0569883
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 0.6749369   0.5404739   0.8428526
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9952265   0.8867579   1.1169630
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.9295568   0.8422341   1.0259330
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9461859   0.8666891   1.0329745
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9364484   0.8558332   1.0246572
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.9360000   0.4511981   1.9417105
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.2771930   0.7242802   2.2521973
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.0042373   0.8566368   1.1772697
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.8855299   0.7179293   1.0922568
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9494920   0.8081578   1.1155433
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.8828800   0.7401747   1.0530989
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.8821429   0.6260857   1.2429226
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 0.9135338   0.7266645   1.1484585
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.8888889   0.6319132   1.2503671
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.9195402   0.6897343   1.2259130
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0578488   1.0024911   1.1162633
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.0242280   0.9671870   1.0846331
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.9090310   0.7240548   1.1412636
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 0.8212811   0.6737649   1.0010949
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.0390407   0.9252364   1.1668429
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.9641327   0.8703775   1.0679871
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0049006   0.9411128   1.0730118
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9496113   0.8865467   1.0171620
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.3920455   0.7407231   2.6160794
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9527778   0.3924523   2.3131106
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1441860   0.9142288   1.4319847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9793522   0.7604469   1.2612726
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.9798958   0.7581225   1.2665442
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 0.8199227   0.6747222   0.9963704
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.0574713   0.7764736   1.4401590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.9484536   0.7235153   1.2433244
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1029633   0.6363888   1.9116115
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.4115702   0.8230679   2.4208579
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.0204082   0.8252214   1.2617618
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.0017637   0.8388740   1.1962827


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0522950   -0.0458378    0.1504278
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0106881   -0.0785721    0.0571958
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0117406   -0.0629794    0.0394981
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0855754   -0.1713266    0.0001758
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0182589   -0.0943365    0.0578187
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0312095   -0.0494761   -0.0129429
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0240896   -0.1428247    0.1910040
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0730245   -0.1242954   -0.0217537
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0256780   -0.0708591    0.0195032
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0157116   -0.0352710    0.0038479
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0505698   -0.1171987    0.2183383
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0220831   -0.0892797    0.0451135
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0386429   -0.1016463    0.0243606
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0565563   -0.1978405    0.0847279
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0416667   -0.1610526    0.0777192
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0154100   -0.0019763    0.0327963
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0521032   -0.1140580    0.0098516
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0072592   -0.0583861    0.0438676
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0093616   -0.0321957    0.0134725
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0315248   -0.0648316    0.1278812
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0234573   -0.0507771    0.0976917
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0894542   -0.1923247    0.0134164
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0065617   -0.0998668    0.0867434
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0098340   -0.0105095    0.0301775
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0026681   -0.0673364    0.0726726


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1588462   -0.1982314    0.4095132
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0183310   -0.1415645    0.0915993
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0187743   -0.1041148    0.0599699
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1537188   -0.3192727   -0.0089400
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0349599   -0.1913142    0.1008737
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0573645   -0.0915243   -0.0242738
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0616487   -0.4792025    0.4047447
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.3165633   -0.5571334   -0.1131601
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0423123   -0.1195161    0.0295675
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0369792   -0.0840573    0.0080544
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1162029   -0.3683793    0.4291808
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0280227   -0.1170025    0.0538690
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0547848   -0.1484138    0.0312107
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0855110   -0.3216055    0.1084071
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0714286   -0.2973095    0.1151231
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0207306   -0.0029611    0.0438628
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1430854   -0.3266735    0.0150974
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0098537   -0.0816967    0.0572178
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0139215   -0.0484605    0.0194797
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1140456   -0.3070302    0.3994667
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0425018   -0.1020073    0.1680610
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1727953   -0.3904713    0.0108038
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0132979   -0.2211282    0.1591607
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1405996   -0.2039309    0.3865354
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0053079   -0.1441731    0.1352598
