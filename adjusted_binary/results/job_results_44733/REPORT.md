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

**Outcome Variable:** ever_swasted

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

agecat        studyid                    country                        parity    ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  -------  -------------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      131     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       11     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    0       88     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1       17     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   0      178     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1       38     463
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       17     101
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        2     101
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    0       18     101
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1        3     101
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   0       47     101
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1       14     101
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      252     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       19     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0      236     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1        8     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   0      170     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1       15     700
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      767    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       54    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      717    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1       54    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   0      716    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1       49    2357
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0      208    1989
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1       32    1989
0-24 months   ki1101329-Keneba           GAMBIA                         2                    0      184    1989
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1       30    1989
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   0     1279    1989
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1      256    1989
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      135     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       36     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0      109     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       46     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   0      202     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1       74     602
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     5432   13938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      571   13938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    0     3815   13938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1      360   13938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   0     3415   13938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1      345   13938
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0      102     656
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1       10     656
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    0       93     656
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1       10     656
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   0      400     656
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1       41     656
0-24 months   ki1135781-COHORTS          INDIA                          1                    0      737    4624
0-24 months   ki1135781-COHORTS          INDIA                          1                    1       73    4624
0-24 months   ki1135781-COHORTS          INDIA                          2                    0     1082    4624
0-24 months   ki1135781-COHORTS          INDIA                          2                    1      102    4624
0-24 months   ki1135781-COHORTS          INDIA                          3+                   0     2336    4624
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1      294    4624
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0      584    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1       93    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    0      609    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1       73    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   0     1470    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1      216    3045
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     4693   13313
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      329   13313
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     4175   13313
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1      270   13313
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   0     3579   13313
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1      267   13313
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0      135     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1        7     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    0      101     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1        4     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   0      202     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1       13     462
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       19     101
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     101
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    0       20     101
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1        1     101
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   0       59     101
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1        2     101
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0      255     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1       16     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    0      240     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1        4     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   0      176     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1        9     700
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      790    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       31    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      744    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1       27    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   0      744    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1       21    2357
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0      217    1822
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1       14    1822
0-6 months    ki1101329-Keneba           GAMBIA                         2                    0      197    1822
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1        5    1822
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   0     1305    1822
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1       84    1822
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      157     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       14     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    0      138     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1       17     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   0      251     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1       25     602
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     5498   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      460   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    0     3894   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1      258   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   0     3503   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1      233   13846
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    0       73     511
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1        5     511
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    0       75     511
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1        6     511
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   0      323     511
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1       29     511
0-6 months    ki1135781-COHORTS          INDIA                          1                    0      704    4444
0-6 months    ki1135781-COHORTS          INDIA                          1                    1       55    4444
0-6 months    ki1135781-COHORTS          INDIA                          2                    0     1068    4444
0-6 months    ki1135781-COHORTS          INDIA                          2                    1       69    4444
0-6 months    ki1135781-COHORTS          INDIA                          3+                   0     2372    4444
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1      176    4444
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0      609    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1       67    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    0      638    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1       44    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   0     1586    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1      100    3044
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     4760   13264
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      229   13264
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    0     4257   13264
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1      179   13264
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   0     3650   13264
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1      189   13264
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      127     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1        6     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    0       82     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1       13     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   0      176     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1       28     432
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       17     100
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        2     100
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    0       18     100
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1        2     100
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   0       49     100
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1       12     100
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      224     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1        3     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0      220     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1        4     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   0      158     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1        6     615
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      648    1987
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       25    1987
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      623    1987
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1       29    1987
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   0      634    1987
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1       28    1987
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0      207    1924
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1       20    1924
6-24 months   ki1101329-Keneba           GAMBIA                         2                    0      172    1924
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1       26    1924
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   0     1314    1924
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1      185    1924
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      143     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       24     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0      118     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       34     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   0      216     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1       55     590
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     4293   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      119   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    0     3141   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1      111   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   0     2911   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1      118   10693
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0       93     595
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1        5     595
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    0       91     595
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1        4     595
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   0      390     595
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1       12     595
6-24 months   ki1135781-COHORTS          INDIA                          1                    0      734    4339
6-24 months   ki1135781-COHORTS          INDIA                          1                    1       19    4339
6-24 months   ki1135781-COHORTS          INDIA                          2                    0     1070    4339
6-24 months   ki1135781-COHORTS          INDIA                          2                    1       35    4339
6-24 months   ki1135781-COHORTS          INDIA                          3+                   0     2360    4339
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1      121    4339
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0      579    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1       29    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    0      595    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1       30    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   0     1447    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1      129    2809
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     3223    8549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      103    8549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     2788    8549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1       95    8549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   0     2258    8549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1       82    8549


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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/f67dc961-6328-403c-b5a2-320ec625c6d0/3a51d61b-4d7e-4b34-9350-8b687a9c2e55/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f67dc961-6328-403c-b5a2-320ec625c6d0/3a51d61b-4d7e-4b34-9350-8b687a9c2e55/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f67dc961-6328-403c-b5a2-320ec625c6d0/3a51d61b-4d7e-4b34-9350-8b687a9c2e55/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f67dc961-6328-403c-b5a2-320ec625c6d0/3a51d61b-4d7e-4b34-9350-8b687a9c2e55/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0774648   0.0518696   0.1030600
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1619048   0.1224675   0.2013420
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.1759259   0.1423685   0.2094833
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0701107   0.0396891   0.1005323
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0327869   0.0104267   0.0551470
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0810811   0.0417196   0.1204425
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0657734   0.0488137   0.0827332
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0700389   0.0520206   0.0880573
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0640523   0.0466982   0.0814064
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1333333   0.0903156   0.1763510
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1401869   0.0936598   0.1867140
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.1667752   0.1481222   0.1854283
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2105263   0.1493712   0.2716815
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2967742   0.2247955   0.3687528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.2681159   0.2158117   0.3204202
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0951191   0.0876973   0.1025409
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0862275   0.0777127   0.0947424
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0917553   0.0825278   0.1009829
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0892857   0.0364348   0.1421366
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.0970874   0.0398651   0.1543096
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.0929705   0.0658472   0.1200939
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0901235   0.0704009   0.1098460
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0861486   0.0701648   0.1021325
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1117871   0.0997431   0.1238311
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1373708   0.1114359   0.1633056
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.1070381   0.0838314   0.1302448
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.1281139   0.1121581   0.1440697
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0655117   0.0576021   0.0734214
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0607424   0.0527944   0.0686904
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0694228   0.0610393   0.0778063
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0377588   0.0247176   0.0508001
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0350195   0.0220409   0.0479980
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0274510   0.0158700   0.0390319
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.0606061   0.0298279   0.0913843
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.0247525   0.0033207   0.0461843
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.0604752   0.0479363   0.0730140
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0818713   0.0407442   0.1229985
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1096774   0.0604422   0.1589126
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.0905797   0.0566912   0.1244682
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0772071   0.0704292   0.0839850
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0621387   0.0547955   0.0694819
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0623662   0.0546117   0.0701206
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0641026   0.0096927   0.1185125
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.0740741   0.0169851   0.1311630
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.0823864   0.0536349   0.1111378
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.0724638   0.0540178   0.0909098
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.0606860   0.0468068   0.0745653
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.0690738   0.0592266   0.0789210
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0991124   0.0765832   0.1216416
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0645161   0.0460753   0.0829569
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0593120   0.0480352   0.0705887
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0459010   0.0393690   0.0524330
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0403517   0.0334968   0.0472066
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0492316   0.0421114   0.0563518
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0451128   0.0092896   0.0809359
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1368421   0.0720837   0.2016006
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.1372549   0.1070815   0.1674283
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0371471   0.0228551   0.0514391
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0444785   0.0286504   0.0603066
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0422961   0.0269607   0.0576314
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.0881057   0.0512231   0.1249884
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1313131   0.0842572   0.1783690
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.1234156   0.1067607   0.1400705
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1437126   0.0904631   0.1969621
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2236842   0.1573815   0.2899870
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.2029520   0.1550261   0.2508780
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0269719   0.0221914   0.0317523
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0341328   0.0278921   0.0403736
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0389568   0.0320658   0.0458477
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0252324   0.0140295   0.0364353
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0316742   0.0213471   0.0420014
6-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.0487707   0.0402943   0.0572470
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0476974   0.0307537   0.0646411
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0480000   0.0312381   0.0647619
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0818528   0.0683159   0.0953897
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0309681   0.0242780   0.0376582
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0329518   0.0252900   0.0406136
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0350427   0.0271630   0.0429225


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1425486   0.1120439   0.1730533
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0600000   0.0423945   0.0776055
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0666101   0.0565417   0.0766785
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1598793   0.1437689   0.1759898
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2591362   0.2241059   0.2941665
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0915483   0.0867604   0.0963361
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0929878   0.0707472   0.1152284
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1014273   0.0927249   0.1101298
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1254516   0.1136848   0.1372183
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0650492   0.0602046   0.0698938
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0335172   0.0262496   0.0407848
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0565313   0.0459241   0.0671385
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0930233   0.0698010   0.1162455
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0686841   0.0644712   0.0728970
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0782779   0.0549657   0.1015900
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0675068   0.0601293   0.0748842
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0693167   0.0602923   0.0783411
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0450090   0.0407907   0.0492274
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1087963   0.0724447   0.1451479
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0412682   0.0325201   0.0500164
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1200624   0.1055350   0.1345898
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1915254   0.1597467   0.2233042
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0325447   0.0291813   0.0359080
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0403319   0.0344774   0.0461863
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0669277   0.0576848   0.0761707
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0327524   0.0284767   0.0370280


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 2.0900433   1.6347837   2.6720850
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 2.2710438   1.7819953   2.8943060
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.4676445   0.2083855   1.0494558
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.1564723   0.6030613   2.2177317
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0648508   0.7397776   1.5327679
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9738320   0.6699577   1.4155352
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.0514019   0.6618331   1.6702788
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.2508143   0.8889854   1.7599124
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.4096774   0.9655419   2.0581090
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.2735507   0.8975340   1.8070975
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9065218   0.7993192   1.0281022
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.9646360   0.8493441   1.0955779
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.0873786   0.4716345   2.5070099
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.0412698   0.5382248   2.0144796
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 0.9558960   0.7174788   1.2735388
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.2403771   0.9718946   1.5830270
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.7791915   0.5845074   1.0387198
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.9326139   0.7438336   1.1693055
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9271987   0.7732070   1.1118593
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.0596997   0.9024929   1.2442905
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9274507   0.5588279   1.5392305
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.7270082   0.4214549   1.2540865
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.4084158   0.1496799   1.1144014
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 0.9978402   0.5765473   1.7269788
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.3396313   0.6829732   2.6276464
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1063665   0.5913951   2.0697613
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.8048316   0.6946576   0.9324795
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.8077774   0.6937285   0.9405760
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 1.1555556   0.3671790   3.6366690
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.2852273   0.5133479   3.2177188
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.8374670   0.5947710   1.1791951
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 0.9532182   0.7120072   1.2761458
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.6509389   0.4517901   0.9378723
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.5984313   0.4449543   0.8048469
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8791025   0.7037188   1.0981961
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.0725603   0.8874486   1.2962841
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 3.0333332   2.0941993   4.3936175
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 3.0424836   1.4889076   6.2171125
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1973620   0.7089571   2.0222319
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.1386103   0.6710892   1.9318347
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.4904038   0.8589866   2.5859584
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.4007670   0.9022960   2.1746168
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.5564693   0.9684283   2.5015755
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.4122079   0.9100773   2.1913864
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.2654966   0.9810044   1.6324918
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.4443461   1.1244020   1.8553291
6-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.2552989   0.7236329   2.1775894
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.9328581   1.1998616   3.1136430
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.0063448   0.6115196   1.6560874
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.7160861   1.1597472   2.5393048
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0640548   0.7747120   1.4614626
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.1315741   0.8318493   1.5392934


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0650838    0.0492573    0.0809103
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0101107   -0.0328889    0.0126675
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0008367   -0.0128975    0.0145708
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0265460   -0.0142399    0.0673319
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0486099   -0.0047041    0.1019239
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0035708   -0.0090988    0.0019572
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0037021   -0.0446102    0.0520144
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0113039   -0.0068189    0.0294266
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0119192   -0.0345463    0.0107079
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0004625   -0.0064646    0.0055395
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0042416   -0.0144598    0.0059765
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0040748   -0.0327035    0.0245540
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0111519   -0.0244823    0.0467861
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0085230   -0.0134375   -0.0036086
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0141753   -0.0368161    0.0651667
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0049570   -0.0216440    0.0117300
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0297957   -0.0488632   -0.0107283
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0008919   -0.0059072    0.0041233
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0636835    0.0469086    0.0804584
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0041211   -0.0078130    0.0160553
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0319566   -0.0034041    0.0673174
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0478128    0.0004820    0.0951437
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0055728    0.0016604    0.0094851
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0150995    0.0043190    0.0258800
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0192304    0.0034747    0.0349861
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0017842   -0.0034569    0.0070254


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.4565728    0.3464429    0.5481448
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1685117   -0.6132761    0.1536356
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0125604   -0.2167250    0.1986382
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1660377   -0.1318771    0.3855401
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1875843   -0.0456793    0.3688130
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0390048   -0.1011484    0.0196317
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0398126   -0.6493781    0.4410258
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.1114481   -0.0862109    0.2731388
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0950103   -0.2909022    0.0711554
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0071107   -0.1037105    0.0810344
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1265514   -0.4751575    0.1396728
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0720800   -0.7191477    0.3314387
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1198830   -0.3586020    0.4298508
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1240902   -0.1976073   -0.0550860
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1810897   -0.8100136    0.6294978
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0734300   -0.3512595    0.1472756
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.4298494   -0.7277015   -0.1833464
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0198168   -0.1375912    0.0857645
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.5853463    0.3035912    0.7531081
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0998623   -0.2401896    0.3466742
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.2661669   -0.0941166    0.5078121
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.2496423   -0.0399196    0.4585768
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1712343    0.0432911    0.2820673
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.3743806    0.0489747    0.5884445
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2873303    0.0125714    0.4856356
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0544766   -0.1198864    0.2016919
