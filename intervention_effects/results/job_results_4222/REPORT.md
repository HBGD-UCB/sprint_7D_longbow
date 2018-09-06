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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** tr

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country
* intXparity

## Data Summary

agecat      studyid                     country                        intXparity      stunted   n_cell       n
----------  --------------------------  -----------------------------  -------------  --------  -------  ------
Birth       iLiNS_DYADM_LNS             MALAWI                         1_Birth               0        0       1
Birth       iLiNS_DYADM_LNS             MALAWI                         1_Birth               1        1       1
Birth       ki1000304b-SAS-CompFeed     INDIA                          1_Birth               0       27      39
Birth       ki1000304b-SAS-CompFeed     INDIA                          1_Birth               1       12      39
Birth       ki1000304b-SAS-CompFeed     INDIA                          2_Birth               0       30      42
Birth       ki1000304b-SAS-CompFeed     INDIA                          2_Birth               1       12      42
Birth       ki1000304b-SAS-CompFeed     INDIA                          3+_Birth              0       49      63
Birth       ki1000304b-SAS-CompFeed     INDIA                          3+_Birth              1       14      63
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth               0     5332    5972
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth               1      640    5972
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       2_Birth               0     3718    4125
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       2_Birth               1      407    4125
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       3+_Birth              0     3347    3732
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       3+_Birth              1      385    3732
Birth       ki1135781-COHORTS           GUATEMALA                      1_Birth               0      103     112
Birth       ki1135781-COHORTS           GUATEMALA                      1_Birth               1        9     112
Birth       ki1135781-COHORTS           GUATEMALA                      2_Birth               0      124     137
Birth       ki1135781-COHORTS           GUATEMALA                      2_Birth               1       13     137
Birth       ki1135781-COHORTS           GUATEMALA                      3+_Birth              0      575     603
Birth       ki1135781-COHORTS           GUATEMALA                      3+_Birth              1       28     603
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         1_Birth               0        0       1
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         1_Birth               1        1       1
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth               0     7554   12542
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth               1     4988   12542
Birth       kiGH5241-JiVitA-3           BANGLADESH                     2_Birth               0     9422   13420
Birth       kiGH5241-JiVitA-3           BANGLADESH                     2_Birth               1     3998   13420
Birth       kiGH5241-JiVitA-3           BANGLADESH                     3+_Birth              0     9544   13226
Birth       kiGH5241-JiVitA-3           BANGLADESH                     3+_Birth              1     3682   13226
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months            0       94     122
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months            1       28     122
6 months    iLiNS_DYADM_LNS             MALAWI                         2_6 months            0      116     152
6 months    iLiNS_DYADM_LNS             MALAWI                         2_6 months            1       36     152
6 months    iLiNS_DYADM_LNS             MALAWI                         3+_6 months           0      317     408
6 months    iLiNS_DYADM_LNS             MALAWI                         3+_6 months           1       91     408
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months            0      188     231
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months            1       43     231
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_6 months            0      170     195
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_6 months            1       25     195
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6 months           0      201     227
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6 months           1       26     227
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months            0      135     180
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months            1       45     180
6 months    ki1000304b-SAS-CompFeed     INDIA                          2_6 months            0      111     153
6 months    ki1000304b-SAS-CompFeed     INDIA                          2_6 months            1       42     153
6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_6 months           0      198     284
6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_6 months           1       86     284
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months            0       39      64
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months            1       25      64
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_6 months            0       48      76
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_6 months            1       28      76
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_6 months           0      115     208
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_6 months           1       93     208
6 months    ki1017093b-PROVIDE          BANGLADESH                     1_6 months            0        7      12
6 months    ki1017093b-PROVIDE          BANGLADESH                     1_6 months            1        5      12
6 months    ki1017093b-PROVIDE          BANGLADESH                     2_6 months            0       13      15
6 months    ki1017093b-PROVIDE          BANGLADESH                     2_6 months            1        2      15
6 months    ki1017093b-PROVIDE          BANGLADESH                     3+_6 months           0       16      19
6 months    ki1017093b-PROVIDE          BANGLADESH                     3+_6 months           1        3      19
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months            0      511     564
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months            1       53     564
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6 months            0      484     546
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6 months            1       62     546
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6 months           0      500     570
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6 months           1       70     570
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months            0      136     156
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months            1       20     156
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   2_6 months            0       67      75
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   2_6 months            1        8      75
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   3+_6 months           0      272     306
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   3+_6 months           1       34     306
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months            0     2590    3095
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months            1      505    3095
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_6 months            0     1989    2357
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_6 months            1      368    2357
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_6 months           0     1906    2323
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_6 months           1      417    2323
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months            0       77     130
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months            1       53     130
6 months    ki1135781-COHORTS           GUATEMALA                      2_6 months            0       83     132
6 months    ki1135781-COHORTS           GUATEMALA                      2_6 months            1       49     132
6 months    ki1135781-COHORTS           GUATEMALA                      3+_6 months           0      383     670
6 months    ki1135781-COHORTS           GUATEMALA                      3+_6 months           1      287     670
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months            0      134     179
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months            1       45     179
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         2_6 months            0      170     220
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         2_6 months            1       50     220
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6 months           0      490     627
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6 months           1      137     627
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months            0     9160   12691
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months            1     3531   12691
6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_6 months            0     8902   11368
6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_6 months            1     2466   11368
6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_6 months           0     6991    9408
6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_6 months           1     2417    9408
24 months   iLiNS_DYADM_LNS             MALAWI                         1_24 months           0        7      10
24 months   iLiNS_DYADM_LNS             MALAWI                         1_24 months           1        3      10
24 months   iLiNS_DYADM_LNS             MALAWI                         2_24 months           0        2       7
24 months   iLiNS_DYADM_LNS             MALAWI                         2_24 months           1        5       7
24 months   iLiNS_DYADM_LNS             MALAWI                         3+_24 months          0       11      18
24 months   iLiNS_DYADM_LNS             MALAWI                         3+_24 months          1        7      18
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months           0      254     411
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months           1      157     411
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_24 months           0      236     376
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_24 months           1      140     376
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_24 months          0      214     400
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_24 months          1      186     400
24 months   ki1017093b-PROVIDE          BANGLADESH                     1_24 months           0        1       1
24 months   ki1017093b-PROVIDE          BANGLADESH                     1_24 months           1        0       1
24 months   ki1017093b-PROVIDE          BANGLADESH                     2_24 months           0        1       1
24 months   ki1017093b-PROVIDE          BANGLADESH                     2_24 months           1        0       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_24 months           0        1       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_24 months           1        0       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_24 months          0        2       3
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_24 months          1        1       3
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months           0      105     180
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months           1       75     180
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   2_24 months           0      126     201
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   2_24 months           1       75     201
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   3+_24 months          0      436     650
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   3+_24 months          1      214     650
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months           0        5      17
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months           1       12      17
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       2_24 months           0        6       9
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       2_24 months           1        3       9
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       3+_24 months          0        3      11
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       3+_24 months          1        8      11
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months           0        5      54
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months           1       49      54
24 months   ki1135781-COHORTS           GUATEMALA                      2_24 months           0        8      47
24 months   ki1135781-COHORTS           GUATEMALA                      2_24 months           1       39      47
24 months   ki1135781-COHORTS           GUATEMALA                      3+_24 months          0       59     228
24 months   ki1135781-COHORTS           GUATEMALA                      3+_24 months          1      169     228
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_24 months           0       12      16
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_24 months           1        4      16
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         2_24 months           0        5      12
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         2_24 months           1        7      12
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_24 months          0       21      37
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_24 months          1       16      37
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months           0       47     102
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months           1       55     102
24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_24 months           0       19      35
24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_24 months           1       16      35
24 months   kiGH5241-JiVitA-3           BANGLADESH                     3+_24 months          0        9      21
24 months   kiGH5241-JiVitA-3           BANGLADESH                     3+_24 months          1       12      21


The following strata were considered:

* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXparity: 1_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXparity: 2_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXparity: 3+_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXparity: 1_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXparity: 2_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXparity: 3+_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXparity: 1_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXparity: 2_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXparity: 1_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXparity: 3+_24 months
* agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXparity: 1_24 months
* agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXparity: 2_24 months
* agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXparity: 3+_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXparity: 1_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXparity: 2_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXparity: 3+_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXparity: 1_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXparity: 2_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXparity: 3+_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXparity: 1_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXparity: 2_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXparity: 3+_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXparity: 1_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXparity: 2_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXparity: 3+_24 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXparity: 1_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXparity: 2_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXparity: 3+_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXparity: 1_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXparity: 2_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXparity: 3+_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXparity: 1_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXparity: 2_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXparity: 3+_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXparity: 1_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXparity: 2_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXparity: 3+_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXparity: 1_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXparity: 2_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXparity: 3+_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXparity: 1_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXparity: 2_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXparity: 3+_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXparity: 1_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXparity: 2_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXparity: 3+_6 months
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXparity: 1_6 months
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXparity: 2_6 months
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXparity: 3+_6 months
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXparity: 1_6 months
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXparity: 2_6 months
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXparity: 3+_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXparity: 1_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXparity: 2_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXparity: 3+_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXparity: 1_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXparity: 2_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXparity: 3+_6 months
* agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXparity: 1_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXparity: 1_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXparity: 2_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXparity: 3+_Birth
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXparity: 1_Birth
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXparity: 2_Birth
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXparity: 3+_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXparity: 1_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXparity: 2_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXparity: 3+_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXparity: 1_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXparity: 1_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXparity: 2_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXparity: 3+_Birth

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXparity: 1_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXparity: 1_Birth
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXparity: 2_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXparity: 3+_6 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXparity: 1_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXparity: 2_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXparity: 1_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXparity: 2_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXparity: 1_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXparity: 3+_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXparity: 2_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXparity: 3+_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXparity: 1_24 months

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

```
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     136  20
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     67  8
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     272  34
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     105  75
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     126  75
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     436 214
```




# Results Detail

## Results Plots
![](/tmp/237ca5f6-e16f-4504-9a8c-c2d2877e4cb2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/237ca5f6-e16f-4504-9a8c-c2d2877e4cb2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/237ca5f6-e16f-4504-9a8c-c2d2877e4cb2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/237ca5f6-e16f-4504-9a8c-c2d2877e4cb2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                     country                        intXparity     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          1_Birth        Control              NA                0.2857143    0.1396283   0.4318003
Birth       ki1000304b-SAS-CompFeed     INDIA                          1_Birth        Other                NA                0.3333333   -0.0341549   0.7008216
Birth       ki1000304b-SAS-CompFeed     INDIA                          2_Birth        Control              NA                0.3076923    0.1322634   0.4831213
Birth       ki1000304b-SAS-CompFeed     INDIA                          2_Birth        Other                NA                0.2758621    0.0789503   0.4727738
Birth       ki1000304b-SAS-CompFeed     INDIA                          3+_Birth       Control              NA                0.1944444    0.0337544   0.3551345
Birth       ki1000304b-SAS-CompFeed     INDIA                          3+_Birth       Other                NA                0.2592593    0.0747111   0.4438074
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth        Control              NA                0.1108844    0.0948320   0.1269368
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth        VitA                 NA                0.1059529    0.0969617   0.1149441
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       2_Birth        Control              NA                0.1000991    0.0815780   0.1186202
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       2_Birth        VitA                 NA                0.0982028    0.0877528   0.1086529
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       3+_Birth       Control              NA                0.0989691    0.0801742   0.1177640
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       3+_Birth       VitA                 NA                0.1046343    0.0932179   0.1160508
Birth       ki1135781-COHORTS           GUATEMALA                      1_Birth        Control              NA                0.0526316   -0.0055976   0.1108608
Birth       ki1135781-COHORTS           GUATEMALA                      1_Birth        Other                NA                0.1090909    0.0263300   0.1918518
Birth       ki1135781-COHORTS           GUATEMALA                      2_Birth        Control              NA                0.0571429    0.0025678   0.1117179
Birth       ki1135781-COHORTS           GUATEMALA                      2_Birth        Other                NA                0.1343284    0.0523759   0.2162808
Birth       ki1135781-COHORTS           GUATEMALA                      3+_Birth       Control              NA                0.0428571    0.0191145   0.0665998
Birth       ki1135781-COHORTS           GUATEMALA                      3+_Birth       Other                NA                0.0495356    0.0258528   0.0732185
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth        Control              NA                0.4177296    0.3991533   0.4363059
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth        Maternal             NA                0.3776715    0.3583456   0.3969973
Birth       kiGH5241-JiVitA-3           BANGLADESH                     2_Birth        Control              NA                0.3136377    0.2950029   0.3322726
Birth       kiGH5241-JiVitA-3           BANGLADESH                     2_Birth        Maternal             NA                0.2822269    0.2655764   0.2988773
Birth       kiGH5241-JiVitA-3           BANGLADESH                     3+_Birth       Control              NA                0.2962735    0.2770068   0.3155402
Birth       kiGH5241-JiVitA-3           BANGLADESH                     3+_Birth       Maternal             NA                0.2611408    0.2437486   0.2785330
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months     Control              NA                0.1718750    0.0790640   0.2646860
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months     LNS                  NA                0.2931034    0.1754757   0.4107312
6 months    iLiNS_DYADM_LNS             MALAWI                         2_6 months     Control              NA                0.2613636    0.1692597   0.3534675
6 months    iLiNS_DYADM_LNS             MALAWI                         2_6 months     LNS                  NA                0.2031250    0.1042314   0.3020186
6 months    iLiNS_DYADM_LNS             MALAWI                         3+_6 months    Control              NA                0.2424242    0.1826589   0.3021896
6 months    iLiNS_DYADM_LNS             MALAWI                         3+_6 months    LNS                  NA                0.2047619    0.1501177   0.2594062
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months     Control              NA                0.1836735    0.0750191   0.2923279
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months     LNS                  NA                0.2083333    0.1143232   0.3023434
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months     Other                NA                0.1727273    0.1019329   0.2435216
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_6 months     Control              NA                0.2600000    0.1381061   0.3818939
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_6 months     LNS                  NA                0.1250000    0.0312000   0.2188000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_6 months     Other                NA                0.0618557    0.0137935   0.1099178
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6 months    Control              NA                0.1090909    0.0265182   0.1916636
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6 months    LNS                  NA                0.1147541    0.0345941   0.1949141
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6 months    Other                NA                0.1171171    0.0571647   0.1770696
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months     Control              NA                0.2471910    0.1328037   0.3615783
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months     Other                NA                0.2527473    0.1398195   0.3656750
6 months    ki1000304b-SAS-CompFeed     INDIA                          2_6 months     Control              NA                0.3076923    0.2307196   0.3846650
6 months    ki1000304b-SAS-CompFeed     INDIA                          2_6 months     Other                NA                0.2500000    0.1496734   0.3503266
6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_6 months    Control              NA                0.2836879    0.2203282   0.3470477
6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_6 months    Other                NA                0.3216783    0.2963478   0.3470088
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months     Control              NA                0.4375000    0.1925045   0.6824955
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months     Other                NA                0.3750000    0.2369607   0.5130393
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_6 months     Control              NA                0.4000000    0.1504347   0.6495653
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_6 months     Other                NA                0.3606557    0.2393523   0.4819592
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_6 months    Control              NA                0.5535714    0.4230555   0.6840873
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_6 months    Other                NA                0.4078947    0.3295795   0.4862100
6 months    ki1017093b-PROVIDE          BANGLADESH                     1_6 months     Control              NA                0.3333333   -0.2238210   0.8904876
6 months    ki1017093b-PROVIDE          BANGLADESH                     1_6 months     Other                NA                0.4444444    0.1053711   0.7835178
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months     Control              NA                0.0928571    0.0447383   0.1409760
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months     Other                NA                0.0921053    0.0460932   0.1381173
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months     Zinc                 NA                0.0955882    0.0606151   0.1305614
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6 months     Control              NA                0.1086957    0.0567169   0.1606744
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6 months     Other                NA                0.1000000    0.0483826   0.1516174
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6 months     Zinc                 NA                0.1223022    0.0837531   0.1608512
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6 months    Control              NA                0.1366906    0.0795330   0.1938483
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6 months    Other                NA                0.1313869    0.0747684   0.1880053
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6 months    Zinc                 NA                0.1122449    0.0761301   0.1483597
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months     Control              NA                0.1603774    0.1339697   0.1867850
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months     VitA                 NA                0.1640459    0.1490807   0.1790111
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_6 months     Control              NA                0.1515152    0.1218389   0.1811914
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_6 months     VitA                 NA                0.1575724    0.1407188   0.1744260
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_6 months    Control              NA                0.1778140    0.1475394   0.2080887
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_6 months    VitA                 NA                0.1801170    0.1618991   0.1983348
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months     Control              NA                0.3913043    0.2757044   0.5069043
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months     Other                NA                0.4262295    0.3016488   0.5508102
6 months    ki1135781-COHORTS           GUATEMALA                      2_6 months     Control              NA                0.3561644    0.2458961   0.4664327
6 months    ki1135781-COHORTS           GUATEMALA                      2_6 months     Other                NA                0.3898305    0.2649092   0.5147518
6 months    ki1135781-COHORTS           GUATEMALA                      3+_6 months    Control              NA                0.5064516    0.4507554   0.5621478
6 months    ki1135781-COHORTS           GUATEMALA                      3+_6 months    Other                NA                0.3611111    0.3114571   0.4107651
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months     Control              NA                0.1718750    0.0791858   0.2645642
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months     Maternal             NA                0.2956522    0.2120149   0.3792894
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         2_6 months     Control              NA                0.2613636    0.1693539   0.3533734
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         2_6 months     Maternal             NA                0.2045455    0.1355766   0.2735143
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6 months    Control              NA                0.2424242    0.1826845   0.3021640
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6 months    Maternal             NA                0.2074592    0.1690581   0.2458603
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months     Control              NA                0.2912955    0.2724873   0.3101037
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months     Maternal             NA                0.2649396    0.2469341   0.2829451
6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_6 months     Control              NA                0.2266832    0.2092967   0.2440697
6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_6 months     Maternal             NA                0.2073532    0.1905644   0.2241420
6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_6 months    Control              NA                0.2649780    0.2417421   0.2882139
6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_6 months    Maternal             NA                0.2493837    0.2288896   0.2698778
24 months   iLiNS_DYADM_LNS             MALAWI                         3+_24 months   Control              NA                0.6666667    0.1177670   1.2155664
24 months   iLiNS_DYADM_LNS             MALAWI                         3+_24 months   LNS                  NA                0.3333333    0.0878579   0.5788087
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months    Control              NA                0.4038462    0.3094297   0.4982626
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months    LNS                  NA                0.3333333    0.2374089   0.4292578
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months    Other                NA                0.3925234    0.3270194   0.4580274
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_24 months    Control              NA                0.4090909    0.3062288   0.5119530
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_24 months    LNS                  NA                0.3131313    0.2216549   0.4046077
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_24 months    Other                NA                0.3862434    0.3167371   0.4557497
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_24 months   Control              NA                0.4683544    0.3581811   0.5785278
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_24 months   LNS                  NA                0.4695652    0.3782366   0.5608938
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_24 months   Other                NA                0.4611650    0.3930075   0.5293226
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months    Control              NA                0.5000000    0.0876111   0.9123889
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months    VitA                 NA                0.8181818    0.5832403   1.0531233
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months    Control              NA                0.8709677    0.7518500   0.9900855
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months    Other                NA                0.9565217    0.8723964   1.0406470
24 months   ki1135781-COHORTS           GUATEMALA                      2_24 months    Control              NA                0.8750000    0.7412569   1.0087431
24 months   ki1135781-COHORTS           GUATEMALA                      2_24 months    Other                NA                0.7826087    0.6122173   0.9530001
24 months   ki1135781-COHORTS           GUATEMALA                      3+_24 months   Control              NA                0.7767857    0.6994989   0.8540725
24 months   ki1135781-COHORTS           GUATEMALA                      3+_24 months   Other                NA                0.7068966    0.6238805   0.7899126
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         2_24 months    Control              NA                0.6000000    0.1514994   1.0485006
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         2_24 months    Maternal             NA                0.5714286    0.1885281   0.9543291
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_24 months   Control              NA                0.6666667    0.1258740   1.2074594
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_24 months   Maternal             NA                0.4117647    0.2440549   0.5794745
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months    Control              NA                0.4186047    0.2190717   0.6181376
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months    Maternal             NA                0.6271186    0.4749687   0.7792686
24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_24 months    Control              NA                0.6000000    0.3250221   0.8749779
24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_24 months    Maternal             NA                0.2666667   -0.0283915   0.5617249
24 months   kiGH5241-JiVitA-3           BANGLADESH                     3+_24 months   Control              NA                0.5000000    0.0035268   0.9964732
24 months   kiGH5241-JiVitA-3           BANGLADESH                     3+_24 months   Maternal             NA                0.6153846    0.2827390   0.9480303


### Parameter: E(Y)


agecat      studyid                     country                        intXparity     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------------  -----------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          1_Birth        NA                   NA                0.3076923   0.1203158   0.4950688
Birth       ki1000304b-SAS-CompFeed     INDIA                          2_Birth        NA                   NA                0.2857143   0.1356543   0.4357743
Birth       ki1000304b-SAS-CompFeed     INDIA                          3+_Birth       NA                   NA                0.2222222   0.0905686   0.3538758
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth        NA                   NA                0.1071668   0.0993209   0.1150126
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       2_Birth        NA                   NA                0.0986667   0.0895651   0.1077682
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       3+_Birth       NA                   NA                0.1031618   0.0934018   0.1129219
Birth       ki1135781-COHORTS           GUATEMALA                      1_Birth        NA                   NA                0.0803571   0.0297853   0.1309289
Birth       ki1135781-COHORTS           GUATEMALA                      2_Birth        NA                   NA                0.0948905   0.0456366   0.1441444
Birth       ki1135781-COHORTS           GUATEMALA                      3+_Birth       NA                   NA                0.0464345   0.0296254   0.0632436
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth        NA                   NA                0.3977037   0.3842293   0.4111782
Birth       kiGH5241-JiVitA-3           BANGLADESH                     2_Birth        NA                   NA                0.2979136   0.2853406   0.3104865
Birth       kiGH5241-JiVitA-3           BANGLADESH                     3+_Birth       NA                   NA                0.2783910   0.2653337   0.2914484
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months     NA                   NA                0.2295082   0.1545812   0.3044352
6 months    iLiNS_DYADM_LNS             MALAWI                         2_6 months     NA                   NA                0.2368421   0.1690317   0.3046525
6 months    iLiNS_DYADM_LNS             MALAWI                         3+_6 months    NA                   NA                0.2230392   0.1825964   0.2634820
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months     NA                   NA                0.1861472   0.1358452   0.2364492
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_6 months     NA                   NA                0.1282051   0.0811608   0.1752494
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6 months    NA                   NA                0.1145374   0.0730179   0.1560570
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months     NA                   NA                0.2500000   0.1695680   0.3304320
6 months    ki1000304b-SAS-CompFeed     INDIA                          2_6 months     NA                   NA                0.2745098   0.2062724   0.3427472
6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_6 months    NA                   NA                0.3028169   0.2655366   0.3400972
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months     NA                   NA                0.3906250   0.2701491   0.5111009
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_6 months     NA                   NA                0.3684211   0.2592510   0.4775911
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_6 months    NA                   NA                0.4471154   0.3793840   0.5148468
6 months    ki1017093b-PROVIDE          BANGLADESH                     1_6 months     NA                   NA                0.4166667   0.1253237   0.7080096
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months     NA                   NA                0.0939716   0.0698691   0.1180742
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6 months     NA                   NA                0.1135531   0.0869167   0.1401895
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6 months    NA                   NA                0.1228070   0.0958389   0.1497752
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months     NA                   NA                0.1631664   0.1501460   0.1761868
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_6 months     NA                   NA                0.1561307   0.1414738   0.1707876
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_6 months    NA                   NA                0.1795093   0.1638995   0.1951191
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months     NA                   NA                0.4076923   0.3228928   0.4924918
6 months    ki1135781-COHORTS           GUATEMALA                      2_6 months     NA                   NA                0.3712121   0.2884797   0.4539445
6 months    ki1135781-COHORTS           GUATEMALA                      3+_6 months    NA                   NA                0.4283582   0.3908609   0.4658556
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months     NA                   NA                0.2513966   0.1876667   0.3151266
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         2_6 months     NA                   NA                0.2272727   0.1717702   0.2827753
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6 months    NA                   NA                0.2185008   0.1861301   0.2508715
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months     NA                   NA                0.2782287   0.2651685   0.2912889
6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_6 months     NA                   NA                0.2169247   0.2048081   0.2290413
6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_6 months    NA                   NA                0.2569090   0.2414520   0.2723660
24 months   iLiNS_DYADM_LNS             MALAWI                         3+_24 months   NA                   NA                0.3888889   0.1571513   0.6206265
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months    NA                   NA                0.3819951   0.3349645   0.4290258
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_24 months    NA                   NA                0.3723404   0.3234116   0.4212692
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_24 months   NA                   NA                0.4650000   0.4160599   0.5139401
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months    NA                   NA                0.7058824   0.4826204   0.9291443
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months    NA                   NA                0.9074074   0.8293706   0.9854442
24 months   ki1135781-COHORTS           GUATEMALA                      2_24 months    NA                   NA                0.8297872   0.7211825   0.9383919
24 months   ki1135781-COHORTS           GUATEMALA                      3+_24 months   NA                   NA                0.7412281   0.6842550   0.7982011
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         2_24 months    NA                   NA                0.5833333   0.2919904   0.8746763
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_24 months   NA                   NA                0.4324324   0.2706003   0.5942646
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months    NA                   NA                0.5392157   0.4140660   0.6643654
24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_24 months    NA                   NA                0.4571429   0.2499949   0.6642908
24 months   kiGH5241-JiVitA-3           BANGLADESH                     3+_24 months   NA                   NA                0.5714286   0.2928514   0.8500057


### Parameter: RR


agecat      studyid                     country                        intXparity     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------------  -----------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          1_Birth        Control              Control           1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          1_Birth        Other                Control           1.1666667   0.3344619   4.0695554
Birth       ki1000304b-SAS-CompFeed     INDIA                          2_Birth        Control              Control           1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          2_Birth        Other                Control           0.8965517   0.3631278   2.2135594
Birth       ki1000304b-SAS-CompFeed     INDIA                          3+_Birth       Control              Control           1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          3+_Birth       Other                Control           1.3333333   0.4564468   3.8948189
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth        Control              Control           1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth        VitA                 Control           0.9555262   0.8079146   1.1301075
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       2_Birth        Control              Control           1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       2_Birth        VitA                 Control           0.9810559   0.7924931   1.2144847
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       3+_Birth       Control              Control           1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       3+_Birth       VitA                 Control           1.0572426   0.8492901   1.3161133
Birth       ki1135781-COHORTS           GUATEMALA                      1_Birth        Control              Control           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      1_Birth        Other                Control           2.0727273   0.5419341   7.9275289
Birth       ki1135781-COHORTS           GUATEMALA                      2_Birth        Control              Control           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      2_Birth        Other                Control           2.3507463   0.7568720   7.3011127
Birth       ki1135781-COHORTS           GUATEMALA                      3+_Birth       Control              Control           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      3+_Birth       Other                Control           1.1558307   0.5560199   2.4026923
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth        Control              Control           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth        Maternal             Control           0.9041051   0.8448095   0.9675625
Birth       kiGH5241-JiVitA-3           BANGLADESH                     2_Birth        Control              Control           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     2_Birth        Maternal             Control           0.8998498   0.8275703   0.9784422
Birth       kiGH5241-JiVitA-3           BANGLADESH                     3+_Birth       Control              Control           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     3+_Birth       Maternal             Control           0.8814181   0.8030687   0.9674115
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months     Control              Control           1.0000000   1.0000000   1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months     LNS                  Control           1.7053292   0.8701999   3.3419306
6 months    iLiNS_DYADM_LNS             MALAWI                         2_6 months     Control              Control           1.0000000   1.0000000   1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         2_6 months     LNS                  Control           0.7771739   0.4260899   1.4175394
6 months    iLiNS_DYADM_LNS             MALAWI                         3+_6 months    Control              Control           1.0000000   1.0000000   1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         3+_6 months    LNS                  Control           0.8446429   0.5873384   1.2146688
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months     Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months     LNS                  Control           1.1342593   0.5389976   2.3869199
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months     Other                Control           0.9404040   0.4578921   1.9313713
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_6 months     Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_6 months     LNS                  Control           0.4807692   0.1984572   1.1646793
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_6 months     Other                Control           0.2379064   0.0960041   0.5895525
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6 months    Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6 months    LNS                  Control           1.0519126   0.3755443   2.9464434
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6 months    Other                Control           1.0735736   0.4305156   2.6771626
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months     Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months     Other                Control           1.0224775   0.5373311   1.9456539
6 months    ki1000304b-SAS-CompFeed     INDIA                          2_6 months     Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          2_6 months     Other                Control           0.8125000   0.5058775   1.3049725
6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_6 months    Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_6 months    Other                Control           1.1339161   0.8942645   1.4377913
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months     Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months     Other                Control           0.8571429   0.4385453   1.6752976
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_6 months     Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_6 months     Other                Control           0.9016393   0.4438193   1.8317219
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_6 months    Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_6 months    Other                Control           0.7368421   0.5436554   0.9986773
6 months    ki1017093b-PROVIDE          BANGLADESH                     1_6 months     Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE          BANGLADESH                     1_6 months     Other                Control           1.3333333   0.2123201   8.3731032
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months     Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months     Other                Control           0.9919028   0.4829137   2.0373645
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months     Zinc                 Control           1.0294118   0.5458779   1.9412557
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6 months     Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6 months     Other                Control           0.9200000   0.4551968   1.8594154
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6 months     Zinc                 Control           1.1251799   0.6345788   1.9950708
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6 months    Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6 months    Other                Control           0.9611986   0.5272742   1.7522247
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6 months    Zinc                 Control           0.8211600   0.4844939   1.3917695
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months     Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months     VitA                 Control           1.0228744   0.8473642   1.2347372
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_6 months     Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_6 months     VitA                 Control           1.0399777   0.8319647   1.2999994
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_6 months    Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_6 months    VitA                 Control           1.0129513   0.8309637   1.2347956
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months     Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months     Other                Control           1.0892532   0.7188621   1.6504870
6 months    ki1135781-COHORTS           GUATEMALA                      2_6 months     Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      2_6 months     Other                Control           1.0945241   0.7009919   1.7089826
6 months    ki1135781-COHORTS           GUATEMALA                      3+_6 months    Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      3+_6 months    Other                Control           0.7130219   0.5979100   0.8502957
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months     Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months     Maternal             Control           1.7201581   0.9356063   3.1625951
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         2_6 months     Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         2_6 months     Maternal             Control           0.7826087   0.4806640   1.2742296
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6 months    Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6 months    Maternal             Control           0.8557692   0.6287908   1.1646815
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months     Control              Control           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months     Maternal             Control           0.9095217   0.8281351   0.9989068
6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_6 months     Control              Control           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_6 months     Maternal             Control           0.9147266   0.8181909   1.0226522
6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_6 months    Control              Control           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_6 months    Maternal             Control           0.9411489   0.8345724   1.0613354
24 months   iLiNS_DYADM_LNS             MALAWI                         3+_24 months   Control              Control           1.0000000   1.0000000   1.0000000
24 months   iLiNS_DYADM_LNS             MALAWI                         3+_24 months   LNS                  Control           0.5000000   0.1656652   1.5090679
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months    Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months    LNS                  Control           0.8253968   0.5696893   1.1958797
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months    Other                Control           0.9719626   0.7292930   1.2953797
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_24 months    Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_24 months    LNS                  Control           0.7654321   0.5206091   1.1253862
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_24 months    Other                Control           0.9441505   0.6930369   1.2862521
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_24 months   Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_24 months   LNS                  Control           1.0025852   0.7388604   1.3604424
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_24 months   Other                Control           0.9846497   0.7458134   1.2999699
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months    Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months    VitA                 Control           1.6363636   0.6832746   3.9189016
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months    Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months    Other                Control           1.0982287   0.9334161   1.2921421
24 months   ki1135781-COHORTS           GUATEMALA                      2_24 months    Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      2_24 months    Other                Control           0.8944099   0.6854980   1.1669897
24 months   ki1135781-COHORTS           GUATEMALA                      3+_24 months   Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      3+_24 months   Other                Control           0.9100277   0.7802049   1.0614525
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         2_24 months    Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         2_24 months    Maternal             Control           0.9523810   0.3490073   2.5988837
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_24 months   Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_24 months   Maternal             Control           0.6176471   0.2491907   1.5309074
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months    Control              Control           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months    Maternal             Control           1.4981168   0.8775709   2.5574615
24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_24 months    Control              Control           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_24 months    Maternal             Control           0.4444444   0.1344344   1.4693476
24 months   kiGH5241-JiVitA-3           BANGLADESH                     3+_24 months   Control              Control           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     3+_24 months   Maternal             Control           1.2307692   0.3933346   3.8511562


### Parameter: PAR


agecat      studyid                     country                        intXparity     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          1_Birth        Control              NA                 0.0219780   -0.1733167    0.2172727
Birth       ki1000304b-SAS-CompFeed     INDIA                          2_Birth        Control              NA                -0.0219780   -0.2021989    0.1582428
Birth       ki1000304b-SAS-CompFeed     INDIA                          3+_Birth       Control              NA                 0.0277778   -0.0805668    0.1361223
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth        Control              NA                -0.0037176   -0.0175878    0.0101526
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       2_Birth        Control              NA                -0.0014324   -0.0174965    0.0146317
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       3+_Birth       Control              NA                 0.0041928   -0.0120823    0.0204679
Birth       ki1135781-COHORTS           GUATEMALA                      1_Birth        Control              NA                 0.0277256   -0.0222440    0.0776952
Birth       ki1135781-COHORTS           GUATEMALA                      2_Birth        Control              NA                 0.0377477   -0.0108396    0.0863349
Birth       ki1135781-COHORTS           GUATEMALA                      3+_Birth       Control              NA                 0.0035774   -0.0143878    0.0215425
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth        Control              NA                -0.0200259   -0.0336109   -0.0064409
Birth       kiGH5241-JiVitA-3           BANGLADESH                     2_Birth        Control              NA                -0.0157242   -0.0282749   -0.0031735
Birth       kiGH5241-JiVitA-3           BANGLADESH                     3+_Birth       Control              NA                -0.0178824   -0.0312063   -0.0045586
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months     Control              NA                 0.0576332   -0.0144114    0.1296778
6 months    iLiNS_DYADM_LNS             MALAWI                         2_6 months     Control              NA                -0.0245215   -0.0816075    0.0325644
6 months    iLiNS_DYADM_LNS             MALAWI                         3+_6 months    Control              NA                -0.0193850   -0.0611064    0.0223364
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months     Control              NA                 0.0024737   -0.0941056    0.0990530
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_6 months     Control              NA                -0.1317949   -0.2290149   -0.0345748
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6 months    Control              NA                 0.0054465   -0.0669284    0.0778214
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months     Control              NA                 0.0028090   -0.0785753    0.0841933
6 months    ki1000304b-SAS-CompFeed     INDIA                          2_6 months     Control              NA                -0.0331825   -0.1116786    0.0453136
6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_6 months    Control              NA                 0.0191290   -0.0165313    0.0547892
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months     Control              NA                -0.0468750   -0.2578865    0.1641365
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_6 months     Control              NA                -0.0315789   -0.2543246    0.1911667
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_6 months    Control              NA                -0.1064560   -0.2180337    0.0051216
6 months    ki1017093b-PROVIDE          BANGLADESH                     1_6 months     Control              NA                 0.0833333   -0.4066577    0.5733243
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months     Control              NA                 0.0011145   -0.0406809    0.0429099
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6 months     Control              NA                 0.0048575   -0.0403703    0.0500852
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6 months    Control              NA                -0.0138836   -0.0628826    0.0351154
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months     Control              NA                 0.0027890   -0.0202873    0.0258654
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_6 months     Control              NA                 0.0046155   -0.0213898    0.0306208
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_6 months    Control              NA                 0.0016952   -0.0243143    0.0277047
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months     Control              NA                 0.0163880   -0.0634155    0.0961914
6 months    ki1135781-COHORTS           GUATEMALA                      2_6 months     Control              NA                 0.0150477   -0.0594845    0.0895799
6 months    ki1135781-COHORTS           GUATEMALA                      3+_6 months    Control              NA                -0.0780934   -0.1185600   -0.0376268
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months     Control              NA                 0.0795216   -0.0011586    0.1602019
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         2_6 months     Control              NA                -0.0340909   -0.1031828    0.0350010
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6 months    Control              NA                -0.0239234   -0.0725310    0.0246841
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months     Control              NA                -0.0130668   -0.0260117   -0.0001220
6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_6 months     Control              NA                -0.0097585   -0.0219968    0.0024797
6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_6 months    Control              NA                -0.0080690   -0.0241258    0.0079879
24 months   iLiNS_DYADM_LNS             MALAWI                         3+_24 months   Control              NA                -0.2777778   -0.7823200    0.2267645
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months    Control              NA                -0.0218510   -0.1031830    0.0594809
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_24 months    Control              NA                -0.0367505   -0.1263162    0.0528152
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_24 months   Control              NA                -0.0033544   -0.1020394    0.0953305
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months    Control              NA                 0.2058824   -0.1101318    0.5218965
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months    Control              NA                 0.0364397   -0.0267083    0.0995876
24 months   ki1135781-COHORTS           GUATEMALA                      2_24 months    Control              NA                -0.0452128   -0.1520510    0.0616254
24 months   ki1135781-COHORTS           GUATEMALA                      3+_24 months   Control              NA                -0.0355576   -0.0934431    0.0223278
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         2_24 months    Control              NA                -0.0166667   -0.3607687    0.3274353
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_24 months   Control              NA                -0.2342342   -0.7550230    0.2865546
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months    Control              NA                 0.1206110   -0.0267704    0.2679924
24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_24 months    Control              NA                -0.1428571   -0.3296219    0.0439077
24 months   kiGH5241-JiVitA-3           BANGLADESH                     3+_24 months   Control              NA                 0.0714286   -0.3104633    0.4533204


### Parameter: PAF


agecat      studyid                     country                        intXparity     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          1_Birth        Control              NA                 0.0714286   -0.7807537    0.5157978
Birth       ki1000304b-SAS-CompFeed     INDIA                          2_Birth        Control              NA                -0.0769231   -0.9690655    0.4110082
Birth       ki1000304b-SAS-CompFeed     INDIA                          3+_Birth       Control              NA                 0.1250000   -0.5226403    0.4971728
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth        Control              NA                -0.0346896   -0.1725376    0.0869524
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       2_Birth        Control              NA                -0.0145180   -0.1911169    0.1358978
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       3+_Birth       Control              NA                 0.0406426   -0.1307899    0.1860853
Birth       ki1135781-COHORTS           GUATEMALA                      1_Birth        Control              NA                 0.3450292   -0.6056629    0.7328289
Birth       ki1135781-COHORTS           GUATEMALA                      2_Birth        Control              NA                 0.3978022   -0.3236449    0.7260276
Birth       ki1135781-COHORTS           GUATEMALA                      3+_Birth       Control              NA                 0.0770408   -0.4021736    0.3924763
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth        Control              NA                -0.0503538   -0.0852188   -0.0166088
Birth       kiGH5241-JiVitA-3           BANGLADESH                     2_Birth        Control              NA                -0.0527809   -0.0955923   -0.0116425
Birth       kiGH5241-JiVitA-3           BANGLADESH                     3+_Birth       Control              NA                -0.0642350   -0.1130767   -0.0175363
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months     Control              NA                 0.2511161   -0.1297584    0.5035867
6 months    iLiNS_DYADM_LNS             MALAWI                         2_6 months     Control              NA                -0.1035354   -0.3721980    0.1125259
6 months    iLiNS_DYADM_LNS             MALAWI                         3+_6 months    Control              NA                -0.0869131   -0.2907360    0.0847237
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months     Control              NA                 0.0132890   -0.6693520    0.4167806
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_6 months     Control              NA                -1.0280000   -1.8916110   -0.4223158
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6 months    Control              NA                 0.0475524   -0.8487879    0.5093237
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months     Control              NA                 0.0112360   -0.3743142    0.2886239
6 months    ki1000304b-SAS-CompFeed     INDIA                          2_6 months     Control              NA                -0.1208791   -0.4659917    0.1429897
6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_6 months    Control              NA                 0.0631700   -0.0670198    0.1774751
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months     Control              NA                -0.1200000   -0.8150877    0.3089039
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_6 months     Control              NA                -0.0857143   -0.8950272    0.3779638
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_6 months    Control              NA                -0.2380952   -0.5177565   -0.0099643
6 months    ki1017093b-PROVIDE          BANGLADESH                     1_6 months     Control              NA                 0.2000000   -2.4844615    0.8163274
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months     Control              NA                 0.0118598   -0.5498607    0.3699944
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6 months     Control              NA                 0.0427770   -0.4510343    0.3685360
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6 months    Control              NA                -0.1130524   -0.5921648    0.2218860
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months     Control              NA                 0.0170932   -0.1350117    0.1488143
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_6 months     Control              NA                 0.0295619   -0.1521295    0.1826005
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_6 months    Control              NA                 0.0094437   -0.1465802    0.1442362
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months     Control              NA                 0.0401969   -0.1770071    0.2173182
6 months    ki1135781-COHORTS           GUATEMALA                      2_6 months     Control              NA                 0.0405368   -0.1828305    0.2217231
6 months    ki1135781-COHORTS           GUATEMALA                      3+_6 months    Control              NA                -0.1823086   -0.2817759   -0.0905601
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months     Control              NA                 0.3163194   -0.0845393    0.5690160
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         2_6 months     Control              NA                -0.1500000   -0.4970432    0.1165919
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6 months    Control              NA                -0.1094891   -0.3555446    0.0919030
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months     Control              NA                -0.0469644   -0.0944876   -0.0015047
6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_6 months     Control              NA                -0.0449859   -0.1029618    0.0099426
6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_6 months    Control              NA                -0.0314079   -0.0956960    0.0291083
24 months   iLiNS_DYADM_LNS             MALAWI                         3+_24 months   Control              NA                -0.7142857   -2.8286161    0.2324183
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months    Control              NA                -0.0572024   -0.2931142    0.1356704
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_24 months    Control              NA                -0.0987013   -0.3677455    0.1174202
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_24 months   Control              NA                -0.0072138   -0.2434561    0.1841452
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months    Control              NA                 0.2916667   -0.3752155    0.6351582
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months    Control              NA                 0.0401580   -0.0336434    0.1086900
24 months   ki1135781-COHORTS           GUATEMALA                      2_24 months    Control              NA                -0.0544872   -0.1934896    0.0683260
24 months   ki1135781-COHORTS           GUATEMALA                      3+_24 months   Control              NA                -0.0479713   -0.1295167    0.0276870
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         2_24 months    Control              NA                -0.0285714   -0.8257477    0.4205337
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_24 months   Control              NA                -0.5416667   -2.4172552    0.3044897
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months    Control              NA                 0.2236786   -0.1157033    0.4598252
24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_24 months    Control              NA                -0.3125000   -0.8298491    0.0585802
24 months   kiGH5241-JiVitA-3           BANGLADESH                     3+_24 months   Control              NA                 0.1250000   -0.8981779    0.5966527
