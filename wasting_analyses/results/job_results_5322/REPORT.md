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
![](/tmp/352d09bf-19e9-4066-a164-046c07b010f6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/352d09bf-19e9-4066-a164-046c07b010f6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/352d09bf-19e9-4066-a164-046c07b010f6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/352d09bf-19e9-4066-a164-046c07b010f6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2387291   0.1985618   0.2788963
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2555837   0.2040935   0.3070738
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.3255170   0.2872617   0.3637724
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5288679   0.4739455   0.5837902
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.5332736   0.4796236   0.5869237
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1883027   0.1313667   0.2452387
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6867431   0.6397797   0.7337064
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.6971821   0.6480324   0.7463318
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.6582976   0.6105642   0.7060311
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.9021251   0.8624853   0.9417648
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.8568954   0.8046092   0.9091815
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.5303960   0.4963631   0.5644289
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7402718   0.6913158   0.7892278
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.4312403   0.3574473   0.5050333
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.4571862   0.4074778   0.5068946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.6161859   0.5930415   0.6393304
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.5256675   0.4966401   0.5546949
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.5069607   0.4793648   0.5345566
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8317560   0.7549927   0.9085193
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.8562585   0.7944027   0.9181143
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.4895146   0.4331604   0.5458689
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3347805   0.2894686   0.3800924
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.2567734   0.2175883   0.2959585
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.2028306   0.1783180   0.2273432
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.7109465   0.6749675   0.7469254
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.6583872   0.6152153   0.7015592
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.5648877   0.5360141   0.5937613
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4645648   0.4406666   0.4884629
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4128595   0.3921975   0.4335215
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2958575   0.2740727   0.3176423
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.7029038   0.6484240   0.7573837
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.5865731   0.5235406   0.6496057
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.5740135   0.5148294   0.6331975
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8103645   0.7225615   0.8981675
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.8130461   0.7192967   0.9067955
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.7177397   0.5899250   0.8455544
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8574468   0.8028333   0.9120603
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8215026   0.7593836   0.8836217
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.8069483   0.7436614   0.8702352
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.7777339   0.6480846   0.9073832
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.6873338   0.5373646   0.8373029
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.6611122   0.6031374   0.7190870
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8923313   0.8360750   0.9485876
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.7728707   0.6875429   0.8581986
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.7158401   0.6367726   0.7949075
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7546027   0.7333099   0.7758956
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.7623549   0.7332423   0.7914674
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.7218160   0.6940249   0.7496070
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7666667   0.6142490   0.9190843
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.8529412   0.7330548   0.9728275
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7200000   0.6482985   0.7917015
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.4612495   0.4062330   0.5162661
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.4177854   0.3669386   0.4686321
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.3339236   0.2985511   0.3692962
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.8166028   0.7798222   0.8533835
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.8027742   0.7572664   0.8482820
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.7087126   0.6706714   0.7467537
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6575369   0.6334173   0.6816564
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.7049589   0.6833341   0.7265837
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.4772753   0.4547776   0.4997731
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1205463   0.0765667   0.1645258
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1276873   0.0683253   0.1870494
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2423349   0.1932758   0.2913941
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2448980   0.1297835   0.3600124
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3409091   0.1975459   0.4842723
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.2333333   0.0577808   0.4088859
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5144426   0.4469231   0.5819621
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.6161661   0.5494875   0.6828447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.5379580   0.4706755   0.6052405
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1848576   0.1447669   0.2249483
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.4006951   0.3525667   0.4488235
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.4672222   0.4280646   0.5063799
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3841604   0.3165387   0.4517821
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2625947   0.1848856   0.3403037
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.3520431   0.2951897   0.4088965
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0340591   0.0195628   0.0485555
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0453041   0.0285417   0.0620665
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0613331   0.0410084   0.0816579
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5971837   0.5561602   0.6382072
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.4612141   0.4059077   0.5165205
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.4772603   0.4396644   0.5148562


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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0706015   0.8265199   1.3867632
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.3635417   1.1093982   1.6759048
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.0083305   0.8740567   1.1632317
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.3560487   0.2574198   0.4924666
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0152008   0.9225187   1.1171944
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9585792   0.8690943   1.0572778
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.9498632   0.8822637   1.0226421
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 0.5879407   0.5440568   0.6353642
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.5825432   0.4850519   0.6996295
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.6175923   0.5447304   0.7002001
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.8530988   0.7983606   0.9115901
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.8227398   0.7706068   0.8783997
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.0294587   0.9171000   1.1555831
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.5885315   0.5054346   0.6852902
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 0.7669903   0.6256751   0.9402229
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 0.6058614   0.5054689   0.7261931
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9260715   0.8527253   1.0057264
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.7945572   0.7396301   0.8535634
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8887017   0.8271896   0.9547880
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.6368488   0.5822308   0.6965903
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.8344999   0.7339515   0.9488230
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.8166316   0.7175981   0.9293323
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.0033091   0.8566909   1.1750201
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.8856998   0.7192596   1.0906550
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9580800   0.8669495   1.0587898
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9411060   0.8492213   1.0429325
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.8837647   0.6720558   1.1621655
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 0.8500494   0.7039841   1.0264208
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.8661253   0.7608413   0.9859784
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.8022133   0.7021634   0.9165192
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0102732   0.9649940   1.0576768
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.9565510   0.9135976   1.0015238
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 1.1125320   0.8721133   1.4192277
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.9391304   0.7518984   1.1729855
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.9057686   0.7642035   1.0735580
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 0.7239544   0.6173833   0.8489215
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9830656   0.9147416   1.0564930
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.8678791   0.8092612   0.9307430
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0721207   1.0221305   1.1245558
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7258533   0.6835603   0.7707631
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0592392   0.5881239   1.9077402
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 2.0103062   1.3152063   3.0727736
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.3920455   0.7407231   2.6160794
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9527778   0.3924523   2.3131106
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1977353   1.0146294   1.4138856
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0457104   0.8764478   1.2476615
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 2.1675879   1.7062505   2.7536620
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 2.5274711   1.9991161   3.1954672
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.6835547   0.4856026   0.9622004
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.9163961   0.7184670   1.1688523
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.3301597   0.7597906   2.3287005
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.8007832   1.0481635   3.0938114
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.7723152   0.6726238   0.8867821
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.7991850   0.7203761   0.8866156


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1421063    0.1041521    0.1800606
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0541940    0.0081641    0.1002240
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0613870   -0.1008396   -0.0219344
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.3454240   -0.3916572   -0.2991909
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2179902   -0.2687391   -0.1672413
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0721300   -0.0914830   -0.0527770
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.3896508   -0.4713838   -0.3079177
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.1041013   -0.1466040   -0.0615987
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.1040785   -0.1385899   -0.0695671
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0419252   -0.0642394   -0.0196111
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1897074   -0.2438544   -0.1355603
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0223210   -0.0891366    0.0444946
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1520897   -0.2026210   -0.1015584
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1163415   -0.2383970    0.0057140
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.3089980   -0.3777902   -0.2402057
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0112575   -0.0273359    0.0048210
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0190031   -0.1607938    0.1227875
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0971091   -0.1493914   -0.0448268
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0799007   -0.1149965   -0.0448049
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0177219   -0.0044844    0.0399283
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1648660    0.1199777    0.2097543
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0315248   -0.0648316    0.1278812
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0374700   -0.0182004    0.0931404
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.3328311    0.2846001    0.3810621
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1092779    0.0429962    0.1755596
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0358842    0.0213800    0.0503883
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0945157   -0.1367515   -0.0522798


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.3731437    0.2744955    0.4583785
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0929473    0.0143756    0.1652554
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0981632   -0.1650418   -0.0351237
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.6204839   -0.7299645   -0.5179318
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.4173805   -0.5411784   -0.3035270
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1325783   -0.1696517   -0.0966799
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.8813529   -1.1438316   -0.6510107
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.4512820   -0.6564494   -0.2715266
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.1715011   -0.2322998   -0.1137020
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0991986   -0.1536302   -0.0473352
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.3696583   -0.5047143   -0.2467244
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0283246   -0.1167833    0.0531273
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2156208   -0.2972085   -0.1391645
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1759039   -0.3773408   -0.0039272
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.5297108   -0.7093609   -0.3689415
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0151443   -0.0370711    0.0063189
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0254167   -0.2337815    0.1477589
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.2666802   -0.4244937   -0.1263503
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.1084573   -0.1592462   -0.0598935
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0262447   -0.0071259    0.0585095
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.5776416    0.4149802    0.6950759
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1140456   -0.3070302    0.3994667
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0678911   -0.0372381    0.1623650
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.6429174    0.5577737    0.7116681
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.2214622    0.0836643    0.3385381
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.5130464    0.3004261    0.6610454
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.1880280   -0.2818051   -0.1011116
