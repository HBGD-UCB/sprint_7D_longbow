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

**Outcome Variable:** sstunted

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

agecat      studyid                     country                        intXparity      sstunted   n_cell       n
----------  --------------------------  -----------------------------  -------------  ---------  -------  ------
Birth       iLiNS_DYADM_LNS             MALAWI                         1_Birth                0        0       1
Birth       iLiNS_DYADM_LNS             MALAWI                         1_Birth                1        1       1
Birth       ki1000304b-SAS-CompFeed     INDIA                          1_Birth                0       36      39
Birth       ki1000304b-SAS-CompFeed     INDIA                          1_Birth                1        3      39
Birth       ki1000304b-SAS-CompFeed     INDIA                          2_Birth                0       36      42
Birth       ki1000304b-SAS-CompFeed     INDIA                          2_Birth                1        6      42
Birth       ki1000304b-SAS-CompFeed     INDIA                          3+_Birth               0       61      63
Birth       ki1000304b-SAS-CompFeed     INDIA                          3+_Birth               1        2      63
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth                0     5777    5972
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth                1      195    5972
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       2_Birth                0     4022    4125
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       2_Birth                1      103    4125
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       3+_Birth               0     3589    3732
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       3+_Birth               1      143    3732
Birth       ki1135781-COHORTS           GUATEMALA                      1_Birth                0      109     112
Birth       ki1135781-COHORTS           GUATEMALA                      1_Birth                1        3     112
Birth       ki1135781-COHORTS           GUATEMALA                      2_Birth                0      134     137
Birth       ki1135781-COHORTS           GUATEMALA                      2_Birth                1        3     137
Birth       ki1135781-COHORTS           GUATEMALA                      3+_Birth               0      598     603
Birth       ki1135781-COHORTS           GUATEMALA                      3+_Birth               1        5     603
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         1_Birth                0        0       1
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         1_Birth                1        1       1
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth                0    10744   12542
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth                1     1798   12542
Birth       kiGH5241-JiVitA-3           BANGLADESH                     2_Birth                0    12254   13420
Birth       kiGH5241-JiVitA-3           BANGLADESH                     2_Birth                1     1166   13420
Birth       kiGH5241-JiVitA-3           BANGLADESH                     3+_Birth               0    12110   13226
Birth       kiGH5241-JiVitA-3           BANGLADESH                     3+_Birth               1     1116   13226
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months             0      116     122
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months             1        6     122
6 months    iLiNS_DYADM_LNS             MALAWI                         2_6 months             0      146     152
6 months    iLiNS_DYADM_LNS             MALAWI                         2_6 months             1        6     152
6 months    iLiNS_DYADM_LNS             MALAWI                         3+_6 months            0      387     408
6 months    iLiNS_DYADM_LNS             MALAWI                         3+_6 months            1       21     408
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months             0      220     231
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months             1       11     231
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_6 months             0      188     195
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_6 months             1        7     195
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6 months            0      221     227
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6 months            1        6     227
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months             0      168     180
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months             1       12     180
6 months    ki1000304b-SAS-CompFeed     INDIA                          2_6 months             0      140     153
6 months    ki1000304b-SAS-CompFeed     INDIA                          2_6 months             1       13     153
6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_6 months            0      254     284
6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_6 months            1       30     284
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months             0       56      64
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months             1        8      64
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_6 months             0       70      76
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_6 months             1        6      76
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_6 months            0      173     208
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_6 months            1       35     208
6 months    ki1017093b-PROVIDE          BANGLADESH                     1_6 months             0       12      12
6 months    ki1017093b-PROVIDE          BANGLADESH                     1_6 months             1        0      12
6 months    ki1017093b-PROVIDE          BANGLADESH                     2_6 months             0       14      15
6 months    ki1017093b-PROVIDE          BANGLADESH                     2_6 months             1        1      15
6 months    ki1017093b-PROVIDE          BANGLADESH                     3+_6 months            0       19      19
6 months    ki1017093b-PROVIDE          BANGLADESH                     3+_6 months            1        0      19
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months             0      557     564
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months             1        7     564
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6 months             0      537     546
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6 months             1        9     546
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6 months            0      562     570
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6 months            1        8     570
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months             0      151     156
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months             1        5     156
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   2_6 months             0       74      75
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   2_6 months             1        1      75
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   3+_6 months            0      299     306
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   3+_6 months            1        7     306
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months             0     2958    3095
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months             1      137    3095
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_6 months             0     2268    2357
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_6 months             1       89    2357
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_6 months            0     2218    2323
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_6 months            1      105    2323
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months             0      114     130
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months             1       16     130
6 months    ki1135781-COHORTS           GUATEMALA                      2_6 months             0      115     132
6 months    ki1135781-COHORTS           GUATEMALA                      2_6 months             1       17     132
6 months    ki1135781-COHORTS           GUATEMALA                      3+_6 months            0      580     670
6 months    ki1135781-COHORTS           GUATEMALA                      3+_6 months            1       90     670
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months             0      168     179
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months             1       11     179
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         2_6 months             0      210     220
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         2_6 months             1       10     220
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6 months            0      595     627
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6 months            1       32     627
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months             0    11725   12691
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months             1      966   12691
6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_6 months             0    10840   11368
6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_6 months             1      528   11368
6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_6 months            0     8873    9408
6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_6 months            1      535    9408
24 months   iLiNS_DYADM_LNS             MALAWI                         1_24 months            0        9      10
24 months   iLiNS_DYADM_LNS             MALAWI                         1_24 months            1        1      10
24 months   iLiNS_DYADM_LNS             MALAWI                         2_24 months            0        6       7
24 months   iLiNS_DYADM_LNS             MALAWI                         2_24 months            1        1       7
24 months   iLiNS_DYADM_LNS             MALAWI                         3+_24 months           0       16      18
24 months   iLiNS_DYADM_LNS             MALAWI                         3+_24 months           1        2      18
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months            0      367     411
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months            1       44     411
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_24 months            0      339     376
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_24 months            1       37     376
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_24 months           0      342     400
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_24 months           1       58     400
24 months   ki1017093b-PROVIDE          BANGLADESH                     1_24 months            0        1       1
24 months   ki1017093b-PROVIDE          BANGLADESH                     1_24 months            1        0       1
24 months   ki1017093b-PROVIDE          BANGLADESH                     2_24 months            0        1       1
24 months   ki1017093b-PROVIDE          BANGLADESH                     2_24 months            1        0       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_24 months            0        1       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_24 months            1        0       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_24 months           0        2       3
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_24 months           1        1       3
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months            0      157     180
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months            1       23     180
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   2_24 months            0      174     201
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   2_24 months            1       27     201
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   3+_24 months           0      583     650
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   3+_24 months           1       67     650
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months            0       11      17
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months            1        6      17
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       2_24 months            0        6       9
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       2_24 months            1        3       9
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       3+_24 months           0        5      11
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       3+_24 months           1        6      11
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months            0       28      54
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months            1       26      54
24 months   ki1135781-COHORTS           GUATEMALA                      2_24 months            0       22      47
24 months   ki1135781-COHORTS           GUATEMALA                      2_24 months            1       25      47
24 months   ki1135781-COHORTS           GUATEMALA                      3+_24 months           0      138     228
24 months   ki1135781-COHORTS           GUATEMALA                      3+_24 months           1       90     228
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_24 months            0       15      16
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_24 months            1        1      16
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         2_24 months            0        9      12
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         2_24 months            1        3      12
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_24 months           0       31      37
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_24 months           1        6      37
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months            0       77     102
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months            1       25     102
24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_24 months            0       24      35
24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_24 months            1       11      35
24 months   kiGH5241-JiVitA-3           BANGLADESH                     3+_24 months           0       17      21
24 months   kiGH5241-JiVitA-3           BANGLADESH                     3+_24 months           1        4      21


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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXparity: 1_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXparity: 3+_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXparity: 1_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXparity: 2_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXparity: 1_Birth
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXparity: 1_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXparity: 2_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXparity: 3+_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXparity: 2_6 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXparity: 1_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXparity: 2_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXparity: 3+_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXparity: 1_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXparity: 2_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXparity: 1_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXparity: 3+_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXparity: 2_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXparity: 1_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXparity: 2_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXparity: 3+_24 months

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
```

```
##           sstunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     151   5
##           sstunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     299   7
##           sstunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     157  23
##           sstunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     174  27
##           sstunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     583  67
```




# Results Detail

## Results Plots
![](/tmp/b2283dc7-55e3-4115-a15f-aa00b537f8a7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b2283dc7-55e3-4115-a15f-aa00b537f8a7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b2283dc7-55e3-4115-a15f-aa00b537f8a7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b2283dc7-55e3-4115-a15f-aa00b537f8a7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                     country                        intXparity     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          2_Birth        Control              NA                0.1538462   -0.2183146   0.5260069
Birth       ki1000304b-SAS-CompFeed     INDIA                          2_Birth        Other                NA                0.1379310    0.0336746   0.2421874
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth        Control              NA                0.0360544    0.0265236   0.0455853
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth        VitA                 NA                0.0315415    0.0264357   0.0366473
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       2_Birth        Control              NA                0.0287413    0.0184309   0.0390517
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       2_Birth        VitA                 NA                0.0237484    0.0184015   0.0290953
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       3+_Birth       Control              NA                0.0309278    0.0200317   0.0418240
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       3+_Birth       VitA                 NA                0.0409124    0.0335240   0.0483008
Birth       ki1135781-COHORTS           GUATEMALA                      3+_Birth       Control              NA                0.0071429   -0.0027292   0.0170149
Birth       ki1135781-COHORTS           GUATEMALA                      3+_Birth       Other                NA                0.0092879   -0.0011819   0.0197578
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth        Control              NA                0.1578444    0.1447426   0.1709462
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth        Maternal             NA                0.1288676    0.1148747   0.1428605
Birth       kiGH5241-JiVitA-3           BANGLADESH                     2_Birth        Control              NA                0.0913160    0.0799320   0.1027000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     2_Birth        Maternal             NA                0.0824650    0.0721843   0.0927458
Birth       kiGH5241-JiVitA-3           BANGLADESH                     3+_Birth       Control              NA                0.0908531    0.0783211   0.1033851
Birth       kiGH5241-JiVitA-3           BANGLADESH                     3+_Birth       Maternal             NA                0.0781343    0.0685568   0.0877118
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months     Control              NA                0.0625000    0.0029515   0.1220485
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months     LNS                  NA                0.0344828   -0.0126695   0.0816350
6 months    iLiNS_DYADM_LNS             MALAWI                         2_6 months     Control              NA                0.0454545    0.0017902   0.0891189
6 months    iLiNS_DYADM_LNS             MALAWI                         2_6 months     LNS                  NA                0.0312500   -0.0115183   0.0740183
6 months    iLiNS_DYADM_LNS             MALAWI                         3+_6 months    Control              NA                0.0707071    0.0349587   0.1064554
6 months    iLiNS_DYADM_LNS             MALAWI                         3+_6 months    LNS                  NA                0.0333333    0.0090253   0.0576413
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months     Control              NA                0.0000000    0.0000000   0.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months     LNS                  NA                0.0833333    0.0193541   0.1473126
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months     Other                NA                0.0454545    0.0064441   0.0844650
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_6 months     Control              NA                0.1000000    0.0166317   0.1833683
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_6 months     LNS                  NA                0.0000000    0.0000000   0.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_6 months     Other                NA                0.0206186   -0.0077334   0.0489706
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6 months    Control              NA                0.0363636   -0.0132174   0.0859447
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6 months    LNS                  NA                0.0163934   -0.0155431   0.0483300
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6 months    Other                NA                0.0270270   -0.0032069   0.0572610
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months     Control              NA                0.0561798    0.0185874   0.0937721
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months     Other                NA                0.0769231    0.0250783   0.1287679
6 months    ki1000304b-SAS-CompFeed     INDIA                          2_6 months     Control              NA                0.1230769    0.0946044   0.1515495
6 months    ki1000304b-SAS-CompFeed     INDIA                          2_6 months     Other                NA                0.0568182    0.0247731   0.0888633
6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_6 months    Control              NA                0.1063830    0.0549318   0.1578341
6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_6 months    Other                NA                0.1048951    0.0735797   0.1362105
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months     Control              NA                0.1250000   -0.0383303   0.2883303
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months     Other                NA                0.1250000    0.0307012   0.2192988
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_6 months     Control              NA                0.0666667   -0.0604058   0.1937391
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_6 months     Other                NA                0.0819672    0.0126712   0.1512633
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_6 months    Control              NA                0.1785714    0.0780193   0.2791236
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_6 months    Other                NA                0.1644737    0.1053990   0.2235483
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months     Control              NA                0.0285714    0.0009503   0.0561925
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months     Other                NA                0.0065789   -0.0062845   0.0194424
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months     Zinc                 NA                0.0073529   -0.0028090   0.0175149
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6 months     Control              NA                0.0289855    0.0009693   0.0570018
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6 months     Other                NA                0.0076923   -0.0073400   0.0227246
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6 months     Zinc                 NA                0.0143885    0.0003770   0.0284000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6 months    Control              NA                0.0143885   -0.0054260   0.0342030
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6 months    Other                NA                0.0145985   -0.0055031   0.0347001
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6 months    Zinc                 NA                0.0136054    0.0003517   0.0268591
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months     Control              NA                0.0390836    0.0251373   0.0530298
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months     VitA                 NA                0.0458989    0.0374421   0.0543556
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_6 months     Control              NA                0.0160428    0.0056439   0.0264417
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_6 months     VitA                 NA                0.0445434    0.0350004   0.0540864
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_6 months    Control              NA                0.0489396    0.0318574   0.0660219
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_6 months    VitA                 NA                0.0438597    0.0341515   0.0535678
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months     Control              NA                0.1159420    0.0401085   0.1917755
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months     Other                NA                0.1311475    0.0461095   0.2161856
6 months    ki1135781-COHORTS           GUATEMALA                      2_6 months     Control              NA                0.1232877    0.0475824   0.1989930
6 months    ki1135781-COHORTS           GUATEMALA                      2_6 months     Other                NA                0.1355932    0.0479029   0.2232835
6 months    ki1135781-COHORTS           GUATEMALA                      3+_6 months    Control              NA                0.1774194    0.1348613   0.2199774
6 months    ki1135781-COHORTS           GUATEMALA                      3+_6 months    Other                NA                0.0972222    0.0665959   0.1278485
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months     Control              NA                0.0625000    0.0030297   0.1219703
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months     Maternal             NA                0.0608696    0.0170489   0.1046902
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         2_6 months     Control              NA                0.0454545    0.0018348   0.0890743
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         2_6 months     Maternal             NA                0.0454545    0.0098392   0.0810699
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6 months    Control              NA                0.0707071    0.0349740   0.1064401
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6 months    Maternal             NA                0.0419580    0.0229706   0.0609455
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months     Control              NA                0.0823566    0.0720694   0.0926439
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months     Maternal             NA                0.0697711    0.0595778   0.0799644
6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_6 months     Control              NA                0.0532954    0.0440847   0.0625062
6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_6 months     Maternal             NA                0.0397282    0.0327659   0.0466904
6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_6 months    Control              NA                0.0583700    0.0466138   0.0701263
6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_6 months    Maternal             NA                0.0554643    0.0457699   0.0651587
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months    Control              NA                0.1346154    0.0689385   0.2002922
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months    LNS                  NA                0.0860215    0.0289647   0.1430783
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months    Other                NA                0.1028037    0.0620640   0.1435435
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_24 months    Control              NA                0.0909091    0.0307651   0.1510531
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_24 months    LNS                  NA                0.1111111    0.0491226   0.1730996
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_24 months    Other                NA                0.0952381    0.0533329   0.1371433
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_24 months   Control              NA                0.1518987    0.0726524   0.2311450
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_24 months   LNS                  NA                0.1478261    0.0828756   0.2127766
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_24 months   Other                NA                0.1407767    0.0932239   0.1883295
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months    Control              NA                0.1666667   -0.1407099   0.4740432
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months    VitA                 NA                0.4545455    0.1512372   0.7578537
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       3+_24 months   Control              NA                0.3333333   -0.2261376   0.8928043
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       3+_24 months   VitA                 NA                0.6250000    0.2731520   0.9768480
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months    Control              NA                0.4838710    0.3063008   0.6614412
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months    Other                NA                0.4782609    0.2721968   0.6843249
24 months   ki1135781-COHORTS           GUATEMALA                      2_24 months    Control              NA                0.5416667    0.3401694   0.7431640
24 months   ki1135781-COHORTS           GUATEMALA                      2_24 months    Other                NA                0.5217391    0.3153849   0.7280933
24 months   ki1135781-COHORTS           GUATEMALA                      3+_24 months   Control              NA                0.4464286    0.3541594   0.5386977
24 months   ki1135781-COHORTS           GUATEMALA                      3+_24 months   Other                NA                0.3448276    0.2581409   0.4315143
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_24 months   Control              NA                0.3333333   -0.2074594   0.8741260
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_24 months   Maternal             NA                0.1470588    0.0263710   0.2677466
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months    Control              NA                0.2093023    0.0404540   0.3781507
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months    Maternal             NA                0.2711864    0.1254844   0.4168885
24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_24 months    Control              NA                0.5000000    0.2292827   0.7707173
24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_24 months    Maternal             NA                0.0666667   -0.1268778   0.2602112


### Parameter: E(Y)


agecat      studyid                     country                        intXparity     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------------  -----------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          2_Birth        NA                   NA                0.1428571   0.0046946   0.2810197
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth        NA                   NA                0.0326524   0.0281445   0.0371603
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       2_Birth        NA                   NA                0.0249697   0.0202075   0.0297319
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       3+_Birth       NA                   NA                0.0383173   0.0321577   0.0444768
Birth       ki1135781-COHORTS           GUATEMALA                      3+_Birth       NA                   NA                0.0082919   0.0010480   0.0155357
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth        NA                   NA                0.1433583   0.1337069   0.1530098
Birth       kiGH5241-JiVitA-3           BANGLADESH                     2_Birth        NA                   NA                0.0868852   0.0792013   0.0945692
Birth       kiGH5241-JiVitA-3           BANGLADESH                     3+_Birth       NA                   NA                0.0843793   0.0765100   0.0922485
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months     NA                   NA                0.0491803   0.0106502   0.0877104
6 months    iLiNS_DYADM_LNS             MALAWI                         2_6 months     NA                   NA                0.0394737   0.0084161   0.0705313
6 months    iLiNS_DYADM_LNS             MALAWI                         3+_6 months    NA                   NA                0.0514706   0.0300044   0.0729368
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months     NA                   NA                0.0476190   0.0200971   0.0751410
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_6 months     NA                   NA                0.0358974   0.0097192   0.0620757
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6 months    NA                   NA                0.0264317   0.0055176   0.0473458
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months     NA                   NA                0.0666667   0.0333561   0.0999773
6 months    ki1000304b-SAS-CompFeed     INDIA                          2_6 months     NA                   NA                0.0849673   0.0514083   0.1185264
6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_6 months    NA                   NA                0.1056338   0.0756261   0.1356415
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months     NA                   NA                0.1250000   0.0433348   0.2066652
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_6 months     NA                   NA                0.0789474   0.0179195   0.1399753
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_6 months    NA                   NA                0.1682692   0.1173060   0.2192324
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months     NA                   NA                0.0124113   0.0032662   0.0215565
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6 months     NA                   NA                0.0164835   0.0057938   0.0271732
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6 months    NA                   NA                0.0140351   0.0043695   0.0237007
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months     NA                   NA                0.0442649   0.0370175   0.0515124
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_6 months     NA                   NA                0.0377599   0.0300629   0.0454568
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_6 months    NA                   NA                0.0452002   0.0367504   0.0536499
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months     NA                   NA                0.1230769   0.0663849   0.1797690
6 months    ki1135781-COHORTS           GUATEMALA                      2_6 months     NA                   NA                0.1287879   0.0714275   0.1861482
6 months    ki1135781-COHORTS           GUATEMALA                      3+_6 months    NA                   NA                0.1343284   0.1084882   0.1601685
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months     NA                   NA                0.0614525   0.0261719   0.0967331
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         2_6 months     NA                   NA                0.0454545   0.0178670   0.0730421
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6 months    NA                   NA                0.0510367   0.0337971   0.0682763
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months     NA                   NA                0.0761169   0.0688597   0.0833742
6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_6 months     NA                   NA                0.0464462   0.0406525   0.0522398
6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_6 months    NA                   NA                0.0568665   0.0492923   0.0644407
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months    NA                   NA                0.1070560   0.0771282   0.1369837
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_24 months    NA                   NA                0.0984043   0.0682572   0.1285513
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_24 months   NA                   NA                0.1450000   0.1104515   0.1795485
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months    NA                   NA                0.3529412   0.1187820   0.5871003
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       3+_24 months   NA                   NA                0.5454545   0.2368403   0.8540688
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months    NA                   NA                0.4814815   0.3469630   0.6160000
24 months   ki1135781-COHORTS           GUATEMALA                      2_24 months    NA                   NA                0.5319149   0.3877191   0.6761107
24 months   ki1135781-COHORTS           GUATEMALA                      3+_24 months   NA                   NA                0.3947368   0.3311509   0.4583228
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_24 months   NA                   NA                0.1621622   0.0417552   0.2825691
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months    NA                   NA                0.2450980   0.1346081   0.3555880
24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_24 months    NA                   NA                0.3142857   0.1307972   0.4977743


### Parameter: RR


agecat      studyid                     country                        intXparity     intervention_level   baseline_level            estimate           ci_lower           ci_upper
----------  --------------------------  -----------------------------  -------------  -------------------  ---------------  -----------------  -----------------  -----------------
Birth       ki1000304b-SAS-CompFeed     INDIA                          2_Birth        Control              Control                  1.0000000          1.0000000          1.0000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          2_Birth        Other                Control                  0.8965517          0.0719869         11.1659969
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth        Control              Control                  1.0000000          1.0000000          1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth        VitA                 Control                  0.8748313          0.6416605          1.1927332
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       2_Birth        Control              Control                  1.0000000          1.0000000          1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       2_Birth        VitA                 Control                  0.8262804          0.5409909          1.2620163
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       3+_Birth       Control              Control                  1.0000000          1.0000000          1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       3+_Birth       VitA                 Control                  1.3228337          0.8903673          1.9653563
Birth       ki1135781-COHORTS           GUATEMALA                      3+_Birth       Control              Control                  1.0000000          1.0000000          1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      3+_Birth       Other                Control                  1.3003096          0.2185153          7.7376964
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth        Control              Control                  1.0000000          1.0000000          1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth        Maternal             Control                  0.8164220          0.7121112          0.9360122
Birth       kiGH5241-JiVitA-3           BANGLADESH                     2_Birth        Control              Control                  1.0000000          1.0000000          1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     2_Birth        Maternal             Control                  0.9030728          0.7571056          1.0771820
Birth       kiGH5241-JiVitA-3           BANGLADESH                     3+_Birth       Control              Control                  1.0000000          1.0000000          1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     3+_Birth       Maternal             Control                  0.8600068          0.7150862          1.0342974
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months     Control              Control                  1.0000000          1.0000000          1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months     LNS                  Control                  0.5517241          0.1042126          2.9209479
6 months    iLiNS_DYADM_LNS             MALAWI                         2_6 months     Control              Control                  1.0000000          1.0000000          1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         2_6 months     LNS                  Control                  0.6875000          0.1291525          3.6596763
6 months    iLiNS_DYADM_LNS             MALAWI                         3+_6 months    Control              Control                  1.0000000          1.0000000          1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         3+_6 months    LNS                  Control                  0.4714286          0.1941068          1.1449617
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months     Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months     LNS                  Control           26197168.0161835   11687383.5174304   58720723.1665344
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months     Other                Control           14289364.3724637    5846684.0307063   34923374.1889709
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_6 months     Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_6 months     LNS                  Control                  0.0000000          0.0000000          0.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_6 months     Other                Control                  0.2061856          0.0412941          1.0295061
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6 months    Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6 months    LNS                  Control                  0.4508197          0.0418125          4.8607102
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6 months    Other                Control                  0.7432432          0.1274051          4.3358573
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months     Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months     Other                Control                  1.3692308          0.5298398          3.5384148
6 months    ki1000304b-SAS-CompFeed     INDIA                          2_6 months     Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          2_6 months     Other                Control                  0.4616477          0.2508651          0.8495346
6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_6 months    Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_6 months    Other                Control                  0.9860140          0.5585894          1.7404977
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months     Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months     Other                Control                  1.0000000          0.2211794          4.5212160
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_6 months     Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_6 months     Other                Control                  1.2295082          0.1528123          9.8924630
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_6 months    Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_6 months    Other                Control                  0.9210526          0.4723055          1.7961635
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months     Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months     Other                Control                  0.2302632          0.0259986          2.0393838
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months     Zinc                 Control                  0.2573529          0.0476490          1.3899672
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6 months     Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6 months     Other                Control                  0.2653846          0.0299944          2.3480734
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6 months     Zinc                 Control                  0.4964029          0.1258811          1.9575291
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6 months    Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6 months    Other                Control                  1.0145985          0.1447243          7.1129053
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6 months    Zinc                 Control                  0.9455782          0.1750322          5.1083057
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months     Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months     VitA                 Control                  1.1743775          0.7859572          1.7547554
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_6 months     Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_6 months     VitA                 Control                  2.7765401          1.4028712          5.4952832
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_6 months    Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_6 months    VitA                 Control                  0.8961989          0.5927948          1.3548911
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months     Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months     Other                Control                  1.1311475          0.4503331          2.8412184
6 months    ki1135781-COHORTS           GUATEMALA                      2_6 months     Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      2_6 months     Other                Control                  1.0998117          0.4508326          2.6830041
6 months    ki1135781-COHORTS           GUATEMALA                      3+_6 months    Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      3+_6 months    Other                Control                  0.5479798          0.3688145          0.8141813
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months     Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months     Maternal             Control                  0.9739130          0.2953453          3.2115179
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         2_6 months     Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         2_6 months     Maternal             Control                  1.0000000          0.2897078          3.4517533
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6 months    Control              Control                  1.0000000          1.0000000          1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6 months    Maternal             Control                  0.5934066          0.3011210          1.1694015
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months     Control              Control                  1.0000000          1.0000000          1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months     Maternal             Control                  0.8471831          0.6990340          1.0267302
6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_6 months     Control              Control                  1.0000000          1.0000000          1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_6 months     Maternal             Control                  0.7454330          0.5827956          0.9534566
6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_6 months    Control              Control                  1.0000000          1.0000000          1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_6 months    Maternal             Control                  0.9502178          0.7277857          1.2406316
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months    Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months    LNS                  Control                  0.6390169          0.2804895          1.4558214
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months    Other                Control                  0.7636849          0.4073225          1.4318252
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_24 months    Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_24 months    LNS                  Control                  1.2222222          0.5144053          2.9039886
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_24 months    Other                Control                  1.0476190          0.4733016          2.3188292
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_24 months   Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_24 months   LNS                  Control                  0.9731884          0.4920131          1.9249400
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_24 months   Other                Control                  0.9267799          0.4978028          1.7254245
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months    Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months    VitA                 Control                  2.7272727          0.3836745         19.3862661
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       3+_24 months   Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       3+_24 months   VitA                 Control                  1.8750000          0.3192760         11.0112402
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months    Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months    Other                Control                  0.9884058          0.5612295          1.7407246
24 months   ki1135781-COHORTS           GUATEMALA                      2_24 months    Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      2_24 months    Other                Control                  0.9632107          0.5596479          1.6577831
24 months   ki1135781-COHORTS           GUATEMALA                      3+_24 months   Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      3+_24 months   Other                Control                  0.7724138          0.5578410          1.0695218
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_24 months   Control              Control                  1.0000000          1.0000000          1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_24 months   Maternal             Control                  0.4411765          0.0716153          2.7178101
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months    Control              Control                  1.0000000          1.0000000          1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months    Maternal             Control                  1.2956685          0.4915183          3.4154517
24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_24 months    Control              Control                  1.0000000          1.0000000          1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_24 months    Maternal             Control                  0.1333333          0.0070040          2.5382313


### Parameter: PAR


agecat      studyid                     country                        intXparity     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          2_Birth        Control              NA                -0.0109890   -0.2758877    0.2539097
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth        Control              NA                -0.0034020   -0.0115531    0.0047490
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       2_Birth        Control              NA                -0.0037716   -0.0125453    0.0050020
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       3+_Birth       Control              NA                 0.0073894   -0.0023548    0.0171336
Birth       ki1135781-COHORTS           GUATEMALA                      3+_Birth       Control              NA                 0.0011490   -0.0065596    0.0088576
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth        Control              NA                -0.0144861   -0.0241709   -0.0048012
Birth       kiGH5241-JiVitA-3           BANGLADESH                     2_Birth        Control              NA                -0.0044308   -0.0121119    0.0032504
Birth       kiGH5241-JiVitA-3           BANGLADESH                     3+_Birth       Control              NA                -0.0064738   -0.0145127    0.0015650
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months     Control              NA                -0.0133197   -0.0495160    0.0228767
6 months    iLiNS_DYADM_LNS             MALAWI                         2_6 months     Control              NA                -0.0059809   -0.0317401    0.0197784
6 months    iLiNS_DYADM_LNS             MALAWI                         3+_6 months    Control              NA                -0.0192365   -0.0415610    0.0030881
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months     Control              NA                 0.0476190    0.0200971    0.0751410
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_6 months     Control              NA                -0.0641026   -0.1279095   -0.0002956
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6 months    Control              NA                -0.0099319   -0.0512168    0.0313530
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months     Control              NA                 0.0104869   -0.0228065    0.0437803
6 months    ki1000304b-SAS-CompFeed     INDIA                          2_6 months     Control              NA                -0.0381096   -0.0739186   -0.0023007
6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_6 months    Control              NA                -0.0007492   -0.0310927    0.0295944
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months     Control              NA                 0.0000000   -0.1414482    0.1414482
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_6 months     Control              NA                 0.0122807   -0.1038995    0.1284609
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_6 months    Control              NA                -0.0103022   -0.0955298    0.0749254
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months     Control              NA                -0.0161601   -0.0377888    0.0054686
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6 months     Control              NA                -0.0125020   -0.0349165    0.0099126
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6 months    Control              NA                -0.0003534   -0.0175159    0.0168091
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months     Control              NA                 0.0051814   -0.0072188    0.0175816
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_6 months     Control              NA                 0.0217171    0.0109512    0.0324829
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_6 months    Control              NA                -0.0037395   -0.0182031    0.0107242
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months     Control              NA                 0.0071349   -0.0463450    0.0606148
6 months    ki1135781-COHORTS           GUATEMALA                      2_6 months     Control              NA                 0.0055002   -0.0462912    0.0572916
6 months    ki1135781-COHORTS           GUATEMALA                      3+_6 months    Control              NA                -0.0430910   -0.0714261   -0.0147559
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months     Control              NA                -0.0010475   -0.0485068    0.0464119
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         2_6 months     Control              NA                 0.0000000   -0.0337877    0.0337877
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6 months    Control              NA                -0.0196704   -0.0473764    0.0080356
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months     Control              NA                -0.0062397   -0.0134338    0.0009544
6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_6 months     Control              NA                -0.0068493   -0.0127130   -0.0009855
6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_6 months    Control              NA                -0.0015035   -0.0093908    0.0063837
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months    Control              NA                -0.0275594   -0.0825699    0.0274511
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_24 months    Control              NA                 0.0074952   -0.0457302    0.0607206
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_24 months   Control              NA                -0.0068987   -0.0775598    0.0637623
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months    Control              NA                 0.1862745   -0.1011604    0.4737094
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       3+_24 months   Control              NA                 0.2121212   -0.2752380    0.6994805
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months    Control              NA                -0.0023895   -0.1182512    0.1134723
24 months   ki1135781-COHORTS           GUATEMALA                      2_24 months    Control              NA                -0.0097518   -0.1509204    0.1314168
24 months   ki1135781-COHORTS           GUATEMALA                      3+_24 months   Control              NA                -0.0516917   -0.1164415    0.0130580
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_24 months   Control              NA                -0.1711712   -0.6806112    0.3382689
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months    Control              NA                 0.0357957   -0.0935982    0.1651897
24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_24 months    Control              NA                -0.1857143   -0.3592943   -0.0121343


### Parameter: PAF


agecat      studyid                     country                        intXparity     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          2_Birth        Control              NA                -0.0769231   -4.7560710    0.7985148
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth        Control              NA                -0.1041898   -0.3838090    0.1189282
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       2_Birth        Control              NA                -0.1510483   -0.5604425    0.1509381
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       3+_Birth       Control              NA                 0.1928484   -0.1036465    0.4096899
Birth       ki1135781-COHORTS           GUATEMALA                      3+_Birth       Control              NA                 0.1385714   -1.5117695    0.7045672
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth        Control              NA                -0.1010480   -0.1716703   -0.0346825
Birth       kiGH5241-JiVitA-3           BANGLADESH                     2_Birth        Control              NA                -0.0509958   -0.1428703    0.0334931
Birth       kiGH5241-JiVitA-3           BANGLADESH                     3+_Birth       Control              NA                -0.0767232   -0.1747326    0.0131092
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months     Control              NA                -0.2708333   -1.2200267    0.2725234
6 months    iLiNS_DYADM_LNS             MALAWI                         2_6 months     Control              NA                -0.1515152   -1.0120510    0.3409774
6 months    iLiNS_DYADM_LNS             MALAWI                         3+_6 months    Control              NA                -0.3737374   -0.8504246   -0.0198494
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months     Control              NA                 0.9999999    0.9999999    1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_6 months     Control              NA                -1.7857143   -3.5184830   -0.7174357
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6 months    Control              NA                -0.3757576   -3.2002547    0.5493824
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months     Control              NA                 0.1573034   -0.4834175    0.5212827
6 months    ki1000304b-SAS-CompFeed     INDIA                          2_6 months     Control              NA                -0.4485207   -1.1251460    0.0126738
6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_6 months    Control              NA                -0.0070922   -0.3382930    0.2421430
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months     Control              NA                 0.0000000   -2.1005693    0.6774786
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_6 months     Control              NA                 0.1555556   -3.8001337    0.8514445
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_6 months    Control              NA                -0.0612245   -0.7100377    0.3414195
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months     Control              NA                -1.3020408   -3.3651609   -0.2140198
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6 months     Control              NA                -0.7584541   -2.6275862    0.1475982
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6 months    Control              NA                -0.0251799   -2.3788920    0.6889531
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months     Control              NA                 0.1170539   -0.2117919    0.3566604
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_6 months     Control              NA                 0.5751366    0.2151019    0.7700225
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_6 months    Control              NA                -0.0827313   -0.4545812    0.1940587
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months     Control              NA                 0.0579710   -0.4931736    0.4056829
6 months    ki1135781-COHORTS           GUATEMALA                      2_6 months     Control              NA                 0.0427075   -0.4565961    0.3708558
6 months    ki1135781-COHORTS           GUATEMALA                      3+_6 months    Control              NA                -0.3207885   -0.5431887   -0.1304400
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months     Control              NA                -0.0170455   -1.1731952    0.5240274
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         2_6 months     Control              NA                 0.0000000   -1.1029253    0.5244719
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6 months    Control              NA                -0.3854167   -1.0301984    0.0545854
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months     Control              NA                -0.0819750   -0.1809769    0.0087275
6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_6 months     Control              NA                -0.1474669   -0.2772727   -0.0308529
6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_6 months    Control              NA                -0.0264400   -0.1743660    0.1028530
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months    Control              NA                -0.2574301   -0.8868532    0.1620279
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_24 months    Control              NA                 0.0761671   -0.6583452    0.4853501
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_24 months   Control              NA                -0.0475775   -0.6679317    0.3420483
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months    Control              NA                 0.5277778   -1.4478300    0.9089014
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       3+_24 months   Control              NA                 0.3888889   -1.6916262    0.8612524
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months    Control              NA                -0.0049628   -0.2768570    0.2090342
24 months   ki1135781-COHORTS           GUATEMALA                      2_24 months    Control              NA                -0.0183333   -0.3216043    0.2153455
24 months   ki1135781-COHORTS           GUATEMALA                      3+_24 months   Control              NA                -0.1309524   -0.3082212    0.0222958
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_24 months   Control              NA                -1.0555556   -8.3850515    0.5497831
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months    Control              NA                 0.1460465   -0.5903349    0.5414572
24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_24 months    Control              NA                -0.5909091   -1.3285448   -0.0869414
