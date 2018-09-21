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

agecat        studyid                    country                        parity    wast_rec90d   n_cell       n
------------  -------------------------  -----------------------------  -------  ------------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0      136     814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1       91     814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   0      110     814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   1       62     814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  0      258     814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  1      157     814
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       30     223
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        2     223
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       47     223
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1        3     223
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0      133     223
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1        8     223
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       52     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       76     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0       40     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1       63     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  0       36     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  1       40     307
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       90     702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1      158     702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0       83     702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1      155     702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0       90     702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1      126     702
0-24 months   ki1101329-Keneba           GAMBIA                         1                   0       44    1164
0-24 months   ki1101329-Keneba           GAMBIA                         1                   1       79    1164
0-24 months   ki1101329-Keneba           GAMBIA                         2                   0       43    1164
0-24 months   ki1101329-Keneba           GAMBIA                         2                   1       66    1164
0-24 months   ki1101329-Keneba           GAMBIA                         3+                  0      429    1164
0-24 months   ki1101329-Keneba           GAMBIA                         3+                  1      503    1164
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      136    1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      160    1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0      122    1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1      142    1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  0      278    1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  1      284    1122
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      680    3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      921    3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      490    3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      533    3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0      460    3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1      491    3575
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0       26     380
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1       23     380
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                   0       27     380
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                   1       32     380
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  0      159     380
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  1      113     380
0-24 months   ki1135781-COHORTS          INDIA                          1                   0      188    1708
0-24 months   ki1135781-COHORTS          INDIA                          1                   1       82    1708
0-24 months   ki1135781-COHORTS          INDIA                          2                   0      296    1708
0-24 months   ki1135781-COHORTS          INDIA                          2                   1       98    1708
0-24 months   ki1135781-COHORTS          INDIA                          3+                  0      830    1708
0-24 months   ki1135781-COHORTS          INDIA                          3+                  1      214    1708
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   0      140    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   1      241    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   0      133    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   1      226    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  0      391    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  1      558    1689
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     3291   15124
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     2610   15124
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     2709   15124
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1     1974   15124
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  0     2732   15124
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  1     1808   15124
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   0       43     341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   1       56     341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                   0       40     341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                   1       39     341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                  0       83     341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                  1       80     341
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       12      71
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0      71
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       13      71
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                   1        0      71
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0       46      71
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1        0      71
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0       15     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1       64     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   0       11     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   1       48     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                  0       13     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                  1       33     184
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       32     336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       93     336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0       32     336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1       77     336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0       35     336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1       67     336
0-6 months    ki1101329-Keneba           GAMBIA                         1                   0       11     316
0-6 months    ki1101329-Keneba           GAMBIA                         1                   1       28     316
0-6 months    ki1101329-Keneba           GAMBIA                         2                   0       11     316
0-6 months    ki1101329-Keneba           GAMBIA                         2                   1       19     316
0-6 months    ki1101329-Keneba           GAMBIA                         3+                  0       85     316
0-6 months    ki1101329-Keneba           GAMBIA                         3+                  1      162     316
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0       36     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       60     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   0       40     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   1       50     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                  0       74     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                  1      100     360
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      336    2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      899    2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      152    2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      509    2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0      158    2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1      463    2517
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   0        7     214
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   1       23     214
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                   0        5     214
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                   1       29     214
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                  0       42     214
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                  1      108     214
0-6 months    ki1135781-COHORTS          INDIA                          1                   0      115    1082
0-6 months    ki1135781-COHORTS          INDIA                          1                   1       82    1082
0-6 months    ki1135781-COHORTS          INDIA                          2                   0      161    1082
0-6 months    ki1135781-COHORTS          INDIA                          2                   1       98    1082
0-6 months    ki1135781-COHORTS          INDIA                          3+                  0      412    1082
0-6 months    ki1135781-COHORTS          INDIA                          3+                  1      214    1082
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                   0       53     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                   1      154     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                   0       37     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                   1      126     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                  0      108     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                  1      274     752
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1144    9466
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     2610    9466
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   0      910    9466
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   1     1974    9466
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                  0     1020    9466
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                  1     1808    9466
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0       93     473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1       35     473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   0       70     473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   1       23     473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  0      175     473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  1       77     473
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       18     152
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        2     152
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       34     152
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1        3     152
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0       87     152
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1        8     152
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       37     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       12     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0       29     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1       15     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  0       23     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  1        7     123
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       58     366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       65     366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0       51     366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1       78     366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0       55     366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1       59     366
6-24 months   ki1101329-Keneba           GAMBIA                         1                   0       33     848
6-24 months   ki1101329-Keneba           GAMBIA                         1                   1       51     848
6-24 months   ki1101329-Keneba           GAMBIA                         2                   0       32     848
6-24 months   ki1101329-Keneba           GAMBIA                         2                   1       47     848
6-24 months   ki1101329-Keneba           GAMBIA                         3+                  0      344     848
6-24 months   ki1101329-Keneba           GAMBIA                         3+                  1      341     848
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      100     762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      100     762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       82     762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       92     762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  0      204     762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  1      184     762
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      344    1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1       22    1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      338    1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1       24    1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0      302    1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1       28    1058
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0       19     166
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1        0     166
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                   0       22     166
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                   1        3     166
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  0      117     166
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  1        5     166
6-24 months   ki1135781-COHORTS          INDIA                          1                   0       73     626
6-24 months   ki1135781-COHORTS          INDIA                          1                   1        0     626
6-24 months   ki1135781-COHORTS          INDIA                          2                   0      135     626
6-24 months   ki1135781-COHORTS          INDIA                          2                   1        0     626
6-24 months   ki1135781-COHORTS          INDIA                          3+                  0      418     626
6-24 months   ki1135781-COHORTS          INDIA                          3+                  1        0     626
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   0       87     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   1       87     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   0       96     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   1      100     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  0      283     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  1      284     937
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     2147    5658
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1        0    5658
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     1799    5658
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1        0    5658
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  0     1712    5658
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  1        0    5658


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
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/8aaeb017-b9fd-4c78-9ca8-5450254656c8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8aaeb017-b9fd-4c78-9ca8-5450254656c8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8aaeb017-b9fd-4c78-9ca8-5450254656c8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8aaeb017-b9fd-4c78-9ca8-5450254656c8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2442325   0.2043257   0.2841392
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2577207   0.2068992   0.3085422
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.3281777   0.2900998   0.3662555
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5387249   0.4841562   0.5932936
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.5391149   0.4859691   0.5922608
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1927074   0.1362182   0.2491966
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6924966   0.6445049   0.7404883
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.6990498   0.6483737   0.7497258
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.6557113   0.6064946   0.7049280
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.9004219   0.8608805   0.9399633
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.8547500   0.8025657   0.9069344
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.5316185   0.4976778   0.5655593
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7429295   0.6938706   0.7919884
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.4278042   0.3537560   0.5018524
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.4542042   0.4043708   0.5040375
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.6167637   0.5937069   0.6398204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.5256441   0.4967531   0.5545350
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.5032035   0.4758631   0.5305439
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8283020   0.7515100   0.9050940
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.8550074   0.7922233   0.9177914
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.4843255   0.4283432   0.5403079
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3364350   0.2918115   0.3810584
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.2582034   0.2196559   0.2967509
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.2025182   0.1784092   0.2266272
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.7116170   0.6757539   0.7474801
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.6591481   0.6160898   0.7022064
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.5649797   0.5361841   0.5937753
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4643604   0.4399382   0.4887825
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4127322   0.3919967   0.4334677
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2940357   0.2717659   0.3163055
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6978015   0.6428870   0.7527161
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.5739915   0.5107494   0.6372335
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.5666950   0.5078296   0.6255604
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.7999874   0.7138931   0.8860818
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.7973581   0.7064930   0.8882233
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.6880631   0.5665901   0.8095362
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8628207   0.8082649   0.9173766
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8260571   0.7635016   0.8886126
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.8117533   0.7482331   0.8752735
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.7735298   0.6516458   0.8954138
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.6828980   0.5403965   0.8253996
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.6633796   0.6058196   0.7209396
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8923411   0.8369374   0.9477447
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.7715779   0.6876343   0.8555216
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.7146843   0.6361550   0.7932136
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7544289   0.7331966   0.7756611
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.7620954   0.7331383   0.7910525
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.7220464   0.6944816   0.7496112
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7666667   0.6142490   0.9190843
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.8529412   0.7330548   0.9728275
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7200000   0.6482985   0.7917015
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.4608919   0.4070131   0.5147707
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.4124526   0.3623547   0.4625505
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.3338168   0.2988166   0.3688169
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.8149624   0.7781295   0.8517953
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.8045103   0.7589329   0.8500876
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.7066557   0.6686813   0.7446302
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6579300   0.6338566   0.6820034
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.7049331   0.6833141   0.7265520
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.4770560   0.4545790   0.4995330
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1221727   0.0778202   0.1665251
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1276712   0.0680000   0.1873424
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2453413   0.1962898   0.2943928
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2448980   0.1297835   0.3600124
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3409091   0.1975459   0.4842723
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.2333333   0.0577808   0.4088859
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5138312   0.4472376   0.5804248
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.6161906   0.5506184   0.6817628
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.5381387   0.4721919   0.6040855
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1999744   0.1600293   0.2399195
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.4232907   0.3755144   0.4710669
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.4683460   0.4293853   0.5073068
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3829642   0.3152974   0.4506310
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2591941   0.1813125   0.3370757
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.3488369   0.2918214   0.4058524
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0343554   0.0197667   0.0489442
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0456759   0.0288204   0.0625314
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0620417   0.0417034   0.0823801
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5859788   0.5446892   0.6272685
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.4647024   0.4094712   0.5199336
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.4791403   0.4416238   0.5166567


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3808354   0.3457640   0.4159068
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6253561   0.5873792   0.6633330
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5567010   0.5253304   0.5880717
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5222816   0.4773852   0.5671781
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5440559   0.5275873   0.5605246
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4421053   0.3904403   0.4937702
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2306792   0.2105836   0.2507747
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4226395   0.4115127   0.4337663
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5131965   0.4596632   0.5667297
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7053571   0.6558827   0.7548316
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.6613924   0.6093076   0.7134773
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5833333   0.5108676   0.6557991
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7433453   0.7262923   0.7603982
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7476636   0.6894668   0.8058603
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3641405   0.3354558   0.3928252
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6752588   0.6619177   0.6885999
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2854123   0.2436284   0.3271961
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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0552270   0.8202153   1.3575753
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.3437102   1.0995889   1.6420292
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.0007240   0.8708242   1.1500009
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.3577102   0.2614757   0.4893633
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0094631   0.9143667   1.1144498
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9468802   0.8555356   1.0479775
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.9492773   0.8816983   1.0220359
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 0.5904105   0.5464782   0.6378746
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.5758341   0.4785829   0.6928476
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.6113691   0.5388864   0.6936011
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.8522617   0.7978872   0.9103418
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.8158773   0.7644032   0.8708177
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.0322411   0.9185538   1.1599992
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.5847209   0.5020168   0.6810501
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 0.7674690   0.6286944   0.9368761
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 0.6019535   0.5037651   0.7192796
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9262681   0.8531827   1.0056142
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.7939379   0.7392417   0.8526810
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8888187   0.8265027   0.9558332
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.6332058   0.5775208   0.6942600
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.8225712   0.7215112   0.9377865
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.8121148   0.7130682   0.9249192
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.9967133   0.8522893   1.1656107
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.8600924   0.6997176   1.0572251
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9573913   0.8660224   1.0584001
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9408134   0.8490623   1.0424793
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.8828335   0.6804020   1.1454919
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 0.8576006   0.7163011   1.0267732
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.8646671   0.7612130   0.9821813
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.8009094   0.7017518   0.9140780
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0101620   0.9650921   1.0573366
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.9570769   0.9143951   1.0017509
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 1.1125320   0.8721133   1.4192277
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.9391304   0.7518984   1.1729855
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.8949009   0.7563829   1.0587861
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 0.7242842   0.6191925   0.8472126
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9871747   0.9184819   1.0610050
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.8671023   0.8084280   0.9300350
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0714408   1.0215577   1.1237596
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7250862   0.6828893   0.7698906
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0450063   0.5797000   1.8837990
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 2.0081521   1.3182847   3.0590318
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.3920455   0.7407231   2.6160794
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9527778   0.3924523   2.3131106
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1992081   1.0193437   1.4108099
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0473064   0.8812734   1.2446202
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 2.1167243   1.6945952   2.6440071
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 2.3420299   1.8830054   2.9129519
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.6768103   0.4788584   0.9565923
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.9108865   0.7126929   1.1641959
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.3295099   0.7605143   2.3242121
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.8058784   1.0544983   3.0926526
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.7930361   0.6907289   0.9104966
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.8176750   0.7363844   0.9079395


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1366029    0.0990262    0.1741797
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0443370   -0.0010151    0.0896891
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0671405   -0.1078314   -0.0264495
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.3437209   -0.3898547   -0.2975870
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2206479   -0.2715459   -0.1697498
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0727077   -0.0919372   -0.0534783
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.3861967   -0.4677252   -0.3046683
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.1057558   -0.1475054   -0.0640062
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.1047490   -0.1391295   -0.0703685
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0417209   -0.0645729   -0.0188688
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1846050   -0.2385224   -0.1306876
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0119440   -0.0774625    0.0535746
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1574636   -0.2083616   -0.1065655
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1121374   -0.2279557    0.0036809
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.3090077   -0.3775124   -0.2405031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0110836   -0.0270816    0.0049144
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0190031   -0.1607938    0.1227875
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0967515   -0.1478040   -0.0456989
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0782603   -0.1133774   -0.0431431
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0173288   -0.0048308    0.0394884
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1632396    0.1182338    0.2082454
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0315248   -0.0648316    0.1278812
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0380814   -0.0165464    0.0927091
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.3177143    0.2696310    0.3657976
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1104741    0.0440376    0.1769107
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0355879    0.0210569    0.0501188
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0833107   -0.1256464   -0.0409751


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.3586928    0.2612351    0.4432939
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0760417   -0.0018308    0.1478611
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1073636   -0.1764765   -0.0423108
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.6174245   -0.7266109   -0.5151428
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.4224691   -0.5468695   -0.3080731
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1336402   -0.1704891   -0.0979513
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.8735403   -1.1345447   -0.6444505
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.4584542   -0.6601580   -0.2812567
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.1726059   -0.2332013   -0.1149880
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0987150   -0.1544681   -0.0456544
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.3597161   -0.4931943   -0.2381697
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0151565   -0.1018523    0.0647180
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2232395   -0.3057622   -0.1459322
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1695475   -0.3606642   -0.0052746
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.5297275   -0.7092832   -0.3690337
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0149105   -0.0367260    0.0064461
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0254167   -0.2337815    0.1477589
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.2656982   -0.4198079   -0.1283159
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.1062306   -0.1569990   -0.0576899
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0256624   -0.0076375    0.0578619
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.5719432    0.4082827    0.6903375
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1140456   -0.3070302    0.3994667
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0689989   -0.0339786    0.1617205
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.6137169    0.5293262    0.6829765
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.2238864    0.0857907    0.3411222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.5088101    0.2951091    0.6577236
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.1657371   -0.2588563   -0.0795060
