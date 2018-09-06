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

agecat        studyid                     country                        intXparity        ever_stunted   n_cell       n
------------  --------------------------  -----------------------------  ---------------  -------------  -------  ------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         1_0-6 months                 0        5       9
0-6 months    iLiNS_DYADM_LNS             MALAWI                         1_0-6 months                 1        4       9
0-6 months    iLiNS_DYADM_LNS             MALAWI                         2_0-6 months                 0        6       8
0-6 months    iLiNS_DYADM_LNS             MALAWI                         2_0-6 months                 1        2       8
0-6 months    iLiNS_DYADM_LNS             MALAWI                         3+_0-6 months                0       22      26
0-6 months    iLiNS_DYADM_LNS             MALAWI                         3+_0-6 months                1        4      26
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_0-6 months                 0       67      78
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_0-6 months                 1       11      78
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_0-6 months                 0       64      70
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_0-6 months                 1        6      70
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     3+_0-6 months                0       69      73
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     3+_0-6 months                1        4      73
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months                 0      165     231
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months                 1       66     231
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          2_0-6 months                 0      143     193
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          2_0-6 months                 1       50     193
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_0-6 months                0      261     368
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_0-6 months                1      107     368
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_0-6 months                 0       46      77
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_0-6 months                 1       31      77
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_0-6 months                 0       58      91
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_0-6 months                 1       33      91
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_0-6 months                0      139     228
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_0-6 months                1       89     228
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months                 0      199     241
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months                 1       42     241
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     2_0-6 months                 0      198     227
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     2_0-6 months                 1       29     227
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     3+_0-6 months                0      154     172
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     3+_0-6 months                1       18     172
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months                 0      697     748
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months                 1       51     748
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_0-6 months                 0      670     728
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_0-6 months                 1       58     728
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_0-6 months                0      676     722
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_0-6 months                1       46     722
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_0-6 months                 0        9      13
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_0-6 months                 1        4      13
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   2_0-6 months                 0        9       9
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   2_0-6 months                 1        0       9
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   3+_0-6 months                0       15      16
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   3+_0-6 months                1        1      16
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months                 0     3040    3693
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months                 1      653    3693
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_0-6 months                 0     2331    2794
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_0-6 months                 1      463    2794
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_0-6 months                0     2135    2614
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_0-6 months                1      479    2614
0-6 months    ki1135781-COHORTS           GUATEMALA                      1_0-6 months                 0       22      30
0-6 months    ki1135781-COHORTS           GUATEMALA                      1_0-6 months                 1        8      30
0-6 months    ki1135781-COHORTS           GUATEMALA                      2_0-6 months                 0       40      52
0-6 months    ki1135781-COHORTS           GUATEMALA                      2_0-6 months                 1       12      52
0-6 months    ki1135781-COHORTS           GUATEMALA                      3+_0-6 months                0      143     216
0-6 months    ki1135781-COHORTS           GUATEMALA                      3+_0-6 months                1       73     216
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_0-6 months                 0        9      15
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_0-6 months                 1        6      15
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         2_0-6 months                 0        9      13
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         2_0-6 months                 1        4      13
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_0-6 months                0       36      42
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_0-6 months                1        6      42
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months                 0    10240   14640
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months                 1     4400   14640
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_0-6 months                 0    10076   12904
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_0-6 months                 1     2828   12904
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_0-6 months                0     8474   11148
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_0-6 months                1     2674   11148
6-24 months   iLiNS_DYADM_LNS             MALAWI                         1_6-24 months                0       67      85
6-24 months   iLiNS_DYADM_LNS             MALAWI                         1_6-24 months                1       18      85
6-24 months   iLiNS_DYADM_LNS             MALAWI                         2_6-24 months                0       75     100
6-24 months   iLiNS_DYADM_LNS             MALAWI                         2_6-24 months                1       25     100
6-24 months   iLiNS_DYADM_LNS             MALAWI                         3+_6-24 months               0      210     307
6-24 months   iLiNS_DYADM_LNS             MALAWI                         3+_6-24 months               1       97     307
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_6-24 months                0      996    1546
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_6-24 months                1      550    1546
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_6-24 months                0      951    1439
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_6-24 months                1      488    1439
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6-24 months               0      851    1571
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6-24 months               1      720    1571
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          1_6-24 months                0      117     170
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          1_6-24 months                1       53     170
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          2_6-24 months                0       97     164
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          2_6-24 months                1       67     164
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          3+_6-24 months               0      139     293
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          3+_6-24 months               1      154     293
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          1_6-24 months                0       26      46
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          1_6-24 months                1       20      46
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          2_6-24 months                0       23      57
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          2_6-24 months                1       34      57
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          3+_6-24 months               0       42     136
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          3+_6-24 months               1       94     136
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     1_6-24 months                0      117     134
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     1_6-24 months                1       17     134
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     2_6-24 months                0      110     119
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     2_6-24 months                1        9     119
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     3+_6-24 months               0       78      89
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     3+_6-24 months               1       11      89
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6-24 months                0      493     584
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6-24 months                1       91     584
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6-24 months                0      478     597
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6-24 months                1      119     597
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6-24 months               0      482     595
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6-24 months               1      113     595
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6-24 months                0      776    1226
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6-24 months                1      450    1226
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   2_6-24 months                0      725    1104
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   2_6-24 months                1      379    1104
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   3+_6-24 months               0     2244    3454
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   3+_6-24 months               1     1210    3454
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months                0     2781    3469
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months                1      688    3469
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       2_6-24 months                0     2016    2590
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       2_6-24 months                1      574    2590
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       3+_6-24 months               0     1785    2348
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       3+_6-24 months               1      563    2348
6-24 months   ki1135781-COHORTS           GUATEMALA                      1_6-24 months                0       26      77
6-24 months   ki1135781-COHORTS           GUATEMALA                      1_6-24 months                1       51      77
6-24 months   ki1135781-COHORTS           GUATEMALA                      2_6-24 months                0       23      70
6-24 months   ki1135781-COHORTS           GUATEMALA                      2_6-24 months                1       47      70
6-24 months   ki1135781-COHORTS           GUATEMALA                      3+_6-24 months               0      128     327
6-24 months   ki1135781-COHORTS           GUATEMALA                      3+_6-24 months               1      199     327
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_6-24 months                0       94     120
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_6-24 months                1       26     120
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         2_6-24 months                0      116     160
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         2_6-24 months                1       44     160
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6-24 months               0      325     477
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6-24 months               1      152     477
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_6-24 months                0     5307    6347
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_6-24 months                1     1040    6347
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_6-24 months                0     5370    6409
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_6-24 months                1     1039    6409
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     3+_6-24 months               0     4027    5027
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     3+_6-24 months               1     1000    5027


The following strata were considered:

* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXparity: 1_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXparity: 2_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXparity: 3+_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXparity: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXparity: 2_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXparity: 3+_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXparity: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXparity: 2_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXparity: 3+_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXparity: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXparity: 2_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXparity: 3+_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXparity: 1_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXparity: 2_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXparity: 3+_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXparity: 1_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXparity: 2_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXparity: 3+_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXparity: 1_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXparity: 2_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXparity: 3+_0-6 months
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXparity: 1_0-6 months
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXparity: 2_0-6 months
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXparity: 3+_0-6 months
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXparity: 1_0-6 months
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXparity: 2_0-6 months
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXparity: 3+_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXparity: 1_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXparity: 2_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXparity: 3+_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXparity: 1_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXparity: 2_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXparity: 3+_0-6 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXparity: 1_6-24 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXparity: 2_6-24 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXparity: 3+_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXparity: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXparity: 2_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXparity: 3+_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXparity: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXparity: 2_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXparity: 3+_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXparity: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXparity: 2_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXparity: 3+_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXparity: 1_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXparity: 2_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXparity: 3+_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXparity: 1_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXparity: 2_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXparity: 3+_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXparity: 1_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXparity: 2_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXparity: 3+_6-24 months
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXparity: 1_6-24 months
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXparity: 2_6-24 months
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXparity: 3+_6-24 months
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXparity: 1_6-24 months
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXparity: 2_6-24 months
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXparity: 3+_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXparity: 1_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXparity: 2_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXparity: 3+_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXparity: 1_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXparity: 2_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXparity: 3+_6-24 months

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXparity: 1_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXparity: 2_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXparity: 3+_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXparity: 3+_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXparity: 1_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXparity: 2_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXparity: 3+_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXparity: 2_0-6 months

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
##           ever_stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     776 450
##           ever_stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     725 379
##           ever_stunted
## tr            0    1
##   Control     0    0
##   LNS         0    0
##   Maternal    0    0
##   Other       0    0
##   VitA        0    0
##   Zinc     2244 1210
```




# Results Detail

## Results Plots
![](/tmp/5339676e-9de3-4cc8-8bcb-2405fdfed8bb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5339676e-9de3-4cc8-8bcb-2405fdfed8bb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5339676e-9de3-4cc8-8bcb-2405fdfed8bb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5339676e-9de3-4cc8-8bcb-2405fdfed8bb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                     country                        intXparity       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------------  -----------------------------  ---------------  -------------------  ---------------  ----------  -----------  ----------
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_0-6 months     Control              NA                0.1538462   -0.0435535   0.3512458
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_0-6 months     LNS                  NA                0.0869565   -0.0289433   0.2028564
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_0-6 months     Other                NA                0.1666667    0.0532285   0.2801048
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_0-6 months     Control              NA                0.2500000    0.0032356   0.4967644
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_0-6 months     LNS                  NA                0.0869565   -0.0290294   0.2029425
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_0-6 months     Other                NA                0.0285714   -0.0270203   0.0841631
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months     Control              NA                0.2545455    0.1917175   0.3173734
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months     Other                NA                0.3140496    0.2782617   0.3498375
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          2_0-6 months     Control              NA                0.2658228    0.2327756   0.2988699
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          2_0-6 months     Other                NA                0.2543860    0.2300902   0.2786817
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_0-6 months    Control              NA                0.3033708    0.2178378   0.3889037
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_0-6 months    Other                NA                0.2789474    0.2602320   0.2976627
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_0-6 months     Control              NA                0.4210526    0.1975938   0.6445115
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_0-6 months     Other                NA                0.3965517    0.2698325   0.5232710
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_0-6 months     Control              NA                0.3333333    0.1305970   0.5360697
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_0-6 months     Other                NA                0.3714286    0.2576099   0.4852472
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_0-6 months    Control              NA                0.4098361    0.2861476   0.5335245
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_0-6 months    Other                NA                0.3832335    0.3093349   0.4571322
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months     Control              NA                0.1791045    0.0870996   0.2711093
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months     Other                NA                0.1724138    0.1161707   0.2286569
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     2_0-6 months     Control              NA                0.1206897    0.0366665   0.2047128
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     2_0-6 months     Other                NA                0.1301775    0.0793327   0.1810223
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     3+_0-6 months    Control              NA                0.1219512    0.0214955   0.2224070
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     3+_0-6 months    Other                NA                0.0992366    0.0478891   0.1505842
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months     Control              NA                0.0819672    0.0421966   0.1217378
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months     Other                NA                0.0492611    0.0194709   0.0790513
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months     Zinc                 NA                0.0718232    0.0452079   0.0984385
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_0-6 months     Control              NA                0.0740741    0.0367115   0.1114367
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_0-6 months     Other                NA                0.0635838    0.0271981   0.0999696
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_0-6 months     Zinc                 NA                0.0901639    0.0608007   0.1195272
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_0-6 months    Control              NA                0.0632184    0.0270345   0.0994023
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_0-6 months    Other                NA                0.0764706    0.0364948   0.1164464
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_0-6 months    Zinc                 NA                0.0582011    0.0345828   0.0818193
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months     Control              NA                0.1742919    0.1497484   0.1988355
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months     VitA                 NA                0.1776577    0.1634346   0.1918807
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_0-6 months     Control              NA                0.1495601    0.1227892   0.1763310
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_0-6 months     VitA                 NA                0.1709280    0.1548704   0.1869857
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_0-6 months    Control              NA                0.1836735    0.1546917   0.2126552
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_0-6 months    VitA                 NA                0.1830913    0.1658250   0.2003575
0-6 months    ki1135781-COHORTS           GUATEMALA                      1_0-6 months     Control              NA                0.2142857   -0.0043266   0.4328980
0-6 months    ki1135781-COHORTS           GUATEMALA                      1_0-6 months     Other                NA                0.3125000    0.0815005   0.5434995
0-6 months    ki1135781-COHORTS           GUATEMALA                      2_0-6 months     Control              NA                0.2812500    0.1239514   0.4385486
0-6 months    ki1135781-COHORTS           GUATEMALA                      2_0-6 months     Other                NA                0.1500000   -0.0080173   0.3080173
0-6 months    ki1135781-COHORTS           GUATEMALA                      3+_0-6 months    Control              NA                0.3789474    0.2811679   0.4767268
0-6 months    ki1135781-COHORTS           GUATEMALA                      3+_0-6 months    Other                NA                0.3057851    0.2235006   0.3880697
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_0-6 months     Control              NA                0.2000000   -0.1629148   0.5629148
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_0-6 months     Maternal             NA                0.5000000    0.1792256   0.8207744
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_0-6 months    Control              NA                0.2142857   -0.0032576   0.4318290
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_0-6 months    Maternal             NA                0.1071429   -0.0088081   0.2230938
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months     Control              NA                0.3223163    0.3043773   0.3402553
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months     Maternal             NA                0.2787647    0.2620927   0.2954367
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_0-6 months     Control              NA                0.2306492    0.2142809   0.2470174
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_0-6 months     Maternal             NA                0.2078202    0.1927316   0.2229088
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_0-6 months    Control              NA                0.2707952    0.2494761   0.2921142
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_0-6 months    Maternal             NA                0.2101933    0.1925968   0.2277898
6-24 months   iLiNS_DYADM_LNS             MALAWI                         1_6-24 months    Control              NA                0.1666667    0.0532891   0.2800442
6-24 months   iLiNS_DYADM_LNS             MALAWI                         1_6-24 months    LNS                  NA                0.2558140    0.1246282   0.3869997
6-24 months   iLiNS_DYADM_LNS             MALAWI                         2_6-24 months    Control              NA                0.2033898    0.0991151   0.3076645
6-24 months   iLiNS_DYADM_LNS             MALAWI                         2_6-24 months    LNS                  NA                0.3170732    0.1732946   0.4608518
6-24 months   iLiNS_DYADM_LNS             MALAWI                         3+_6-24 months   Control              NA                0.3181818    0.2444987   0.3918650
6-24 months   iLiNS_DYADM_LNS             MALAWI                         3+_6-24 months   LNS                  NA                0.3137255    0.2400819   0.3873690
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_6-24 months    Control              NA                0.3422460    0.2941450   0.3903469
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_6-24 months    LNS                  NA                0.2992874    0.2555290   0.3430458
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_6-24 months    Other                NA                0.3941411    0.3591804   0.4291019
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_6-24 months    Control              NA                0.3837535    0.3332910   0.4342160
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_6-24 months    LNS                  NA                0.2650602    0.2175674   0.3125531
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_6-24 months    Other                NA                0.3506667    0.3165042   0.3848292
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6-24 months   Control              NA                0.4903047    0.4387200   0.5418894
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6-24 months   LNS                  NA                0.4210526    0.3725922   0.4695131
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6-24 months   Other                NA                0.4623921    0.4280668   0.4967174
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          1_6-24 months    Control              NA                0.3294118    0.2446621   0.4141614
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          1_6-24 months    Other                NA                0.2941176    0.2294913   0.3587440
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          2_6-24 months    Control              NA                0.4328358    0.2352167   0.6304549
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          2_6-24 months    Other                NA                0.3917526    0.3070458   0.4764594
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          3+_6-24 months   Control              NA                0.5314685    0.4639816   0.5989555
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          3+_6-24 months   Other                NA                0.5200000    0.4260525   0.6139475
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          1_6-24 months    Control              NA                0.4545455    0.1570418   0.7520491
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          1_6-24 months    Other                NA                0.4285714    0.2628116   0.5943313
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          2_6-24 months    Control              NA                0.6666667    0.3975785   0.9357548
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          2_6-24 months    Other                NA                0.5777778    0.4321862   0.7233693
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          3+_6-24 months   Control              NA                0.7777778    0.6414699   0.9140856
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          3+_6-24 months   Other                NA                0.6600000    0.5668116   0.7531884
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     1_6-24 months    Control              NA                0.1351351    0.0245665   0.2457038
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     1_6-24 months    Other                NA                0.1237113    0.0579430   0.1894797
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     2_6-24 months    Control              NA                0.1250000    0.0099293   0.2400707
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     2_6-24 months    Other                NA                0.0574713    0.0083586   0.1065839
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     3+_6-24 months   Control              NA                0.1818182    0.0197365   0.3438999
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     3+_6-24 months   Other                NA                0.1044776    0.0308206   0.1781346
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6-24 months    Control              NA                0.1338028    0.0777604   0.1898453
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6-24 months    Other                NA                0.1543210    0.0986437   0.2099983
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6-24 months    Zinc                 NA                0.1678571    0.1240434   0.2116709
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6-24 months    Control              NA                0.1883117    0.1265122   0.2501112
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6-24 months    Other                NA                0.1818182    0.1185497   0.2450867
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6-24 months    Zinc                 NA                0.2133333    0.1669378   0.2597289
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6-24 months   Control              NA                0.2297297    0.1619012   0.2975583
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6-24 months   Other                NA                0.1642857    0.1028560   0.2257154
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6-24 months   Zinc                 NA                0.1824104    0.1391753   0.2256455
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months    Control              NA                0.2018561    0.1750571   0.2286552
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months    VitA                 NA                0.1971615    0.1818870   0.2124359
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       2_6-24 months    Control              NA                0.2094488    0.1777933   0.2411043
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       2_6-24 months    VitA                 NA                0.2255754    0.2070447   0.2441062
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       3+_6-24 months   Control              NA                0.2315113    0.1983562   0.2646663
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       3+_6-24 months   VitA                 NA                0.2427578    0.2225265   0.2629891
6-24 months   ki1135781-COHORTS           GUATEMALA                      1_6-24 months    Control              NA                0.6818182    0.5432919   0.8203445
6-24 months   ki1135781-COHORTS           GUATEMALA                      1_6-24 months    Other                NA                0.6363636    0.4711614   0.8015659
6-24 months   ki1135781-COHORTS           GUATEMALA                      2_6-24 months    Control              NA                0.7179487    0.5756991   0.8601983
6-24 months   ki1135781-COHORTS           GUATEMALA                      2_6-24 months    Other                NA                0.6129032    0.4402012   0.7856053
6-24 months   ki1135781-COHORTS           GUATEMALA                      3+_6-24 months   Control              NA                0.7021277    0.6265268   0.7777285
6-24 months   ki1135781-COHORTS           GUATEMALA                      3+_6-24 months   Other                NA                0.5376344    0.4658727   0.6093962
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_6-24 months    Control              NA                0.1666667    0.0534855   0.2798479
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_6-24 months    Maternal             NA                0.2435897    0.1479307   0.3392488
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         2_6-24 months    Control              NA                0.2033898    0.0997080   0.3070716
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         2_6-24 months    Maternal             NA                0.3168317    0.2254513   0.4082120
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6-24 months   Control              NA                0.3181818    0.2445415   0.3918221
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6-24 months   Maternal             NA                0.3188854    0.2680075   0.3697634
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_6-24 months    Control              NA                0.1612075    0.1373858   0.1850291
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_6-24 months    Maternal             NA                0.1664089    0.1468937   0.1859241
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_6-24 months    Control              NA                0.1618404    0.1382248   0.1854560
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_6-24 months    Maternal             NA                0.1623750    0.1412314   0.1835187
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     3+_6-24 months   Control              NA                0.1960784    0.1658433   0.2263136
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     3+_6-24 months   Maternal             NA                0.2015209    0.1790796   0.2239622


### Parameter: E(Y)


agecat        studyid                     country                        intXparity       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------------  -----------------------------  ---------------  -------------------  ---------------  ----------  ----------  ----------
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_0-6 months     NA                   NA                0.1410256   0.0632861   0.2187652
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_0-6 months     NA                   NA                0.0857143   0.0196615   0.1517671
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months     NA                   NA                0.2857143   0.2414443   0.3299843
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          2_0-6 months     NA                   NA                0.2590674   0.2388727   0.2792620
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_0-6 months    NA                   NA                0.2907609   0.2479343   0.3335874
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_0-6 months     NA                   NA                0.4025974   0.2923393   0.5128555
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_0-6 months     NA                   NA                0.3626374   0.2633129   0.4619619
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_0-6 months    NA                   NA                0.3903509   0.3268905   0.4538113
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months     NA                   NA                0.1742739   0.1262810   0.2222667
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     2_0-6 months     NA                   NA                0.1277533   0.0842322   0.1712744
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     3+_0-6 months    NA                   NA                0.1046512   0.0587717   0.1505306
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months     NA                   NA                0.0681818   0.0501064   0.0862572
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_0-6 months     NA                   NA                0.0796703   0.0599869   0.0993538
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_0-6 months    NA                   NA                0.0637119   0.0458842   0.0815396
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months     NA                   NA                0.1768210   0.1645146   0.1891274
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_0-6 months     NA                   NA                0.1657122   0.1519228   0.1795017
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_0-6 months    NA                   NA                0.1832441   0.1684107   0.1980774
0-6 months    ki1135781-COHORTS           GUATEMALA                      1_0-6 months     NA                   NA                0.2666667   0.1057192   0.4276141
0-6 months    ki1135781-COHORTS           GUATEMALA                      2_0-6 months     NA                   NA                0.2307692   0.1151366   0.3464018
0-6 months    ki1135781-COHORTS           GUATEMALA                      3+_0-6 months    NA                   NA                0.3379630   0.2747357   0.4011903
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_0-6 months     NA                   NA                0.4000000   0.1433805   0.6566195
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_0-6 months    NA                   NA                0.1428571   0.0357462   0.2499681
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months     NA                   NA                0.3005464   0.2882407   0.3128522
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_0-6 months     NA                   NA                0.2191569   0.2080052   0.2303085
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_0-6 months    NA                   NA                0.2398637   0.2258572   0.2538702
6-24 months   iLiNS_DYADM_LNS             MALAWI                         1_6-24 months    NA                   NA                0.2117647   0.1243945   0.2991349
6-24 months   iLiNS_DYADM_LNS             MALAWI                         2_6-24 months    NA                   NA                0.2500000   0.1639827   0.3360173
6-24 months   iLiNS_DYADM_LNS             MALAWI                         3+_6-24 months   NA                   NA                0.3159609   0.2638721   0.3680497
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_6-24 months    NA                   NA                0.3557568   0.3318850   0.3796286
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_6-24 months    NA                   NA                0.3391244   0.3146559   0.3635929
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6-24 months   NA                   NA                0.4583068   0.4336604   0.4829532
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          1_6-24 months    NA                   NA                0.3117647   0.2569374   0.3665920
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          2_6-24 months    NA                   NA                0.4085366   0.3120489   0.5050242
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          3+_6-24 months   NA                   NA                0.5255973   0.4671777   0.5840168
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          1_6-24 months    NA                   NA                0.4347826   0.2899436   0.5796217
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          2_6-24 months    NA                   NA                0.5964912   0.4679973   0.7249852
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          3+_6-24 months   NA                   NA                0.6911765   0.6132418   0.7691112
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     1_6-24 months    NA                   NA                0.1268657   0.0703024   0.1834290
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     2_6-24 months    NA                   NA                0.0756303   0.0279237   0.1233368
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     3+_6-24 months   NA                   NA                0.1235955   0.0548316   0.1923594
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6-24 months    NA                   NA                0.1558219   0.1263814   0.1852624
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6-24 months    NA                   NA                0.1993300   0.1672571   0.2314029
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6-24 months   NA                   NA                0.1899160   0.1583731   0.2214588
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months    NA                   NA                0.1983280   0.1850572   0.2115989
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       2_6-24 months    NA                   NA                0.2216216   0.2056230   0.2376203
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       3+_6-24 months   NA                   NA                0.2397785   0.2225056   0.2570515
6-24 months   ki1135781-COHORTS           GUATEMALA                      1_6-24 months    NA                   NA                0.6623377   0.5560159   0.7686595
6-24 months   ki1135781-COHORTS           GUATEMALA                      2_6-24 months    NA                   NA                0.6714286   0.5606034   0.7822537
6-24 months   ki1135781-COHORTS           GUATEMALA                      3+_6-24 months   NA                   NA                0.6085627   0.5555813   0.6615440
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_6-24 months    NA                   NA                0.2166667   0.1426475   0.2906858
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         2_6-24 months    NA                   NA                0.2750000   0.2052414   0.3447586
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6-24 months   NA                   NA                0.3186583   0.2767992   0.3605174
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_6-24 months    NA                   NA                0.1638569   0.1485150   0.1791989
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_6-24 months    NA                   NA                0.1621158   0.1463132   0.1779184
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     3+_6-24 months   NA                   NA                0.1989258   0.1803335   0.2175181


### Parameter: RR


agecat        studyid                     country                        intXparity       intervention_level   baseline_level     estimate    ci_lower     ci_upper
------------  --------------------------  -----------------------------  ---------------  -------------------  ---------------  ----------  ----------  -----------
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_0-6 months     Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_0-6 months     LNS                  Control           0.5652174   0.0888654    3.5949958
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_0-6 months     Other                Control           1.0833333   0.2534974    4.6296778
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_0-6 months     Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_0-6 months     LNS                  Control           0.3478261   0.0661790    1.8281182
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_0-6 months     Other                Control           0.1142857   0.0128963    1.0127855
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months     Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months     Other                Control           1.2337662   0.9410441    1.6175429
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          2_0-6 months     Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          2_0-6 months     Other                Control           0.9569758   0.8178215    1.1198075
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_0-6 months    Other                Control           0.9194932   0.6881794    1.2285571
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_0-6 months     Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_0-6 months     Other                Control           0.9418103   0.5068983    1.7498712
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_0-6 months     Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_0-6 months     Other                Control           1.1142857   0.5639272    2.2017606
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_0-6 months    Other                Control           0.9350898   0.6536028    1.3378048
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months     Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months     Other                Control           0.9626437   0.5238290    1.7690559
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     2_0-6 months     Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     2_0-6 months     Other                Control           1.0786137   0.4854912    2.3963515
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     3+_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     3+_0-6 months    Other                Control           0.8137405   0.3076234    2.1525460
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months     Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months     Other                Control           0.6009852   0.2767857    1.3049203
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months     Zinc                 Control           0.8762431   0.4758576    1.6135120
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_0-6 months     Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_0-6 months     Other                Control           0.8583815   0.4003088    1.8406259
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_0-6 months     Zinc                 Control           1.2172131   0.6677581    2.2187791
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_0-6 months    Other                Control           1.2096257   0.5571880    2.6260332
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_0-6 months    Zinc                 Control           0.9206349   0.4564316    1.8569455
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months     Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months     VitA                 Control           1.0193108   0.8668764    1.1985498
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_0-6 months     Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_0-6 months     VitA                 Control           1.1428717   0.9336923    1.3989146
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_0-6 months    VitA                 Control           0.9968303   0.8294459    1.1979933
0-6 months    ki1135781-COHORTS           GUATEMALA                      1_0-6 months     Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS           GUATEMALA                      1_0-6 months     Other                Control           1.4583333   0.4137272    5.1404312
0-6 months    ki1135781-COHORTS           GUATEMALA                      2_0-6 months     Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS           GUATEMALA                      2_0-6 months     Other                Control           0.5333333   0.1618125    1.7578645
0-6 months    ki1135781-COHORTS           GUATEMALA                      3+_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS           GUATEMALA                      3+_0-6 months    Other                Control           0.8069330   0.5558104    1.1715162
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_0-6 months     Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_0-6 months     Maternal             Control           2.5000000   0.3648184   17.1318132
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_0-6 months    Maternal             Control           0.5000000   0.1133814    2.2049463
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months     Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months     Maternal             Control           0.8648793   0.7970246    0.9385108
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_0-6 months     Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_0-6 months     Maternal             Control           0.9010229   0.8140161    0.9973294
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_0-6 months    Maternal             Control           0.7762078   0.6919381    0.8707405
6-24 months   iLiNS_DYADM_LNS             MALAWI                         1_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS_DYADM_LNS             MALAWI                         1_6-24 months    LNS                  Control           1.5348837   0.6547837    3.5979330
6-24 months   iLiNS_DYADM_LNS             MALAWI                         2_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS_DYADM_LNS             MALAWI                         2_6-24 months    LNS                  Control           1.5589431   0.7862832    3.0908757
6-24 months   iLiNS_DYADM_LNS             MALAWI                         3+_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS_DYADM_LNS             MALAWI                         3+_6-24 months   LNS                  Control           0.9859944   0.7090379    1.3711325
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_6-24 months    LNS                  Control           0.8744804   0.7139585    1.0710930
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_6-24 months    Other                Control           1.1516312   0.9752947    1.3598498
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_6-24 months    LNS                  Control           0.6907044   0.5530563    0.8626113
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_6-24 months    Other                Control           0.9137810   0.7758332    1.0762568
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6-24 months   LNS                  Control           0.8587571   0.7347656    1.0036721
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6-24 months   Other                Control           0.9430709   0.8291318    1.0726675
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          1_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          1_6-24 months    Other                Control           0.8928571   0.6361279    1.2531975
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          2_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          2_6-24 months    Other                Control           0.9050835   0.5461123    1.5000143
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          3+_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          3+_6-24 months   Other                Control           0.9784211   0.7835760    1.2217166
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          1_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          1_6-24 months    Other                Control           0.9428571   0.4408341    2.0165853
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          2_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          2_6-24 months    Other                Control           0.8666667   0.5385191    1.3947716
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          3+_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          3+_6-24 months   Other                Control           0.8485714   0.6775611    1.0627432
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     1_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     1_6-24 months    Other                Control           0.9154639   0.3450463    2.4288746
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     2_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     2_6-24 months    Other                Control           0.4597701   0.1309291    1.6145274
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     3+_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     3+_6-24 months   Other                Control           0.5746269   0.1844145    1.7905097
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6-24 months    Other                Control           1.1533463   0.6635560    2.0046654
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6-24 months    Zinc                 Control           1.2545113   0.7658475    2.0549763
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6-24 months    Other                Control           0.9655172   0.5984519    1.5577250
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6-24 months    Zinc                 Control           1.1328736   0.7641896    1.6794294
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6-24 months   Other                Control           0.7151261   0.4440883    1.1515847
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6-24 months   Zinc                 Control           0.7940218   0.5437503    1.1594858
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months    VitA                 Control           0.9767425   0.8375740    1.1390349
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       2_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       2_6-24 months    VitA                 Control           1.0769956   0.9067897    1.2791493
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       3+_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       3+_6-24 months   VitA                 Control           1.0485789   0.8884652    1.2375473
6-24 months   ki1135781-COHORTS           GUATEMALA                      1_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS           GUATEMALA                      1_6-24 months    Other                Control           0.9333333   0.6712266    1.2977900
6-24 months   ki1135781-COHORTS           GUATEMALA                      2_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS           GUATEMALA                      2_6-24 months    Other                Control           0.8536866   0.6049227    1.2047504
6-24 months   ki1135781-COHORTS           GUATEMALA                      3+_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS           GUATEMALA                      3+_6-24 months   Other                Control           0.7657217   0.6450489    0.9089695
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_6-24 months    Maternal             Control           1.4615385   0.6669967    3.2025567
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         2_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         2_6-24 months    Maternal             Control           1.5577558   0.8672236    2.7981284
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6-24 months   Maternal             Control           1.0022114   0.7566174    1.3275240
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_6-24 months    Maternal             Control           1.0322656   0.8548907    1.2464427
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_6-24 months    Maternal             Control           1.0033034   0.8250801    1.2200242
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     3+_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     3+_6-24 months   Maternal             Control           1.0277567   0.8498070    1.2429690


### Parameter: PAR


agecat        studyid                     country                        intXparity       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------------  -----------------------------  ---------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_0-6 months     Control              NA                -0.0128205   -0.1917651    0.1661241
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_0-6 months     Control              NA                -0.1642857   -0.3749470    0.0463755
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months     Control              NA                 0.0311688   -0.0116378    0.0739754
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          2_0-6 months     Control              NA                -0.0067554   -0.0309778    0.0174669
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_0-6 months    Control              NA                -0.0126099   -0.0592825    0.0340626
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_0-6 months     Control              NA                -0.0184552   -0.2119701    0.1750597
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_0-6 months     Control              NA                 0.0293040   -0.1495736    0.2081817
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_0-6 months    Control              NA                -0.0194852   -0.1250306    0.0860602
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months     Control              NA                -0.0048306   -0.0826868    0.0730256
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     2_0-6 months     Control              NA                 0.0070636   -0.0660546    0.0801819
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     3+_0-6 months    Control              NA                -0.0173001   -0.1032377    0.0686376
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months     Control              NA                -0.0137854   -0.0474675    0.0198968
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_0-6 months     Control              NA                 0.0055963   -0.0269395    0.0381320
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_0-6 months    Control              NA                 0.0004935   -0.0310666    0.0320536
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months     Control              NA                 0.0025291   -0.0187865    0.0238446
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_0-6 months     Control              NA                 0.0161521   -0.0074478    0.0397520
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_0-6 months    Control              NA                -0.0004294   -0.0253114    0.0244526
0-6 months    ki1135781-COHORTS           GUATEMALA                      1_0-6 months     Control              NA                 0.0523810   -0.1181775    0.2229394
0-6 months    ki1135781-COHORTS           GUATEMALA                      2_0-6 months     Control              NA                -0.0504808   -0.1380080    0.0370464
0-6 months    ki1135781-COHORTS           GUATEMALA                      3+_0-6 months    Control              NA                -0.0409844   -0.1127377    0.0307688
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_0-6 months     Control              NA                 0.2000000   -0.1312944    0.5312944
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_0-6 months    Control              NA                -0.0714286   -0.2364976    0.0936404
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months     Control              NA                -0.0217699   -0.0342075   -0.0093323
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_0-6 months     Control              NA                -0.0114923   -0.0227689   -0.0002158
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_0-6 months    Control              NA                -0.0309315   -0.0452881   -0.0165750
6-24 months   iLiNS_DYADM_LNS             MALAWI                         1_6-24 months    Control              NA                 0.0450980   -0.0431333    0.1333294
6-24 months   iLiNS_DYADM_LNS             MALAWI                         2_6-24 months    Control              NA                 0.0466102   -0.0271583    0.1203787
6-24 months   iLiNS_DYADM_LNS             MALAWI                         3+_6-24 months   Control              NA                -0.0022209   -0.0541397    0.0496979
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_6-24 months    Control              NA                 0.0135108   -0.0284907    0.0555123
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_6-24 months    Control              NA                -0.0446291   -0.0880073   -0.0012509
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6-24 months   Control              NA                -0.0319979   -0.0772250    0.0132292
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          1_6-24 months    Control              NA                -0.0176471   -0.0714744    0.0361803
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          2_6-24 months    Control              NA                -0.0242992   -0.1520244    0.1034259
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          3+_6-24 months   Control              NA                -0.0058713   -0.0662682    0.0545257
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          1_6-24 months    Control              NA                -0.0197628   -0.2789089    0.2393832
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          2_6-24 months    Control              NA                -0.0701754   -0.3119013    0.1715504
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          3+_6-24 months   Control              NA                -0.0866013   -0.2083275    0.0351249
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     1_6-24 months    Control              NA                -0.0082695   -0.1014010    0.0848621
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     2_6-24 months    Control              NA                -0.0493697   -0.1409985    0.0422590
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     3+_6-24 months   Control              NA                -0.0582227   -0.1924289    0.0759835
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6-24 months    Control              NA                 0.0220191   -0.0277820    0.0718202
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6-24 months    Control              NA                 0.0110183   -0.0426239    0.0646605
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6-24 months   Control              NA                -0.0398138   -0.0973195    0.0176919
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months    Control              NA                -0.0035281   -0.0267096    0.0196534
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       2_6-24 months    Control              NA                 0.0121728   -0.0155159    0.0398615
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       3+_6-24 months   Control              NA                 0.0082673   -0.0202847    0.0368192
6-24 months   ki1135781-COHORTS           GUATEMALA                      1_6-24 months    Control              NA                -0.0194805   -0.1120168    0.0730558
6-24 months   ki1135781-COHORTS           GUATEMALA                      2_6-24 months    Control              NA                -0.0465201   -0.1463683    0.0533280
6-24 months   ki1135781-COHORTS           GUATEMALA                      3+_6-24 months   Control              NA                -0.0935650   -0.1535113   -0.0336187
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_6-24 months    Control              NA                 0.0500000   -0.0465496    0.1465496
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         2_6-24 months    Control              NA                 0.0716102   -0.0160717    0.1592921
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6-24 months   Control              NA                 0.0004765   -0.0601329    0.0610859
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_6-24 months    Control              NA                 0.0026495   -0.0130347    0.0183337
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_6-24 months    Control              NA                 0.0002754   -0.0160518    0.0166025
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     3+_6-24 months   Control              NA                 0.0028474   -0.0168416    0.0225363


### Parameter: PAF


agecat        studyid                     country                        intXparity       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------------  -----------------------------  ---------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_0-6 months     Control              NA                -0.0909091   -2.4888392    0.6588887
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     2_0-6 months     Control              NA                -1.9166667   -5.3031985   -0.3496234
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months     Control              NA                 0.1090909   -0.0560046    0.2483755
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          2_0-6 months     Control              NA                -0.0260759   -0.1237685    0.0631239
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          3+_0-6 months    Control              NA                -0.0433687   -0.2108008    0.1009105
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_0-6 months     Control              NA                -0.0458404   -0.6561289    0.3395549
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          2_0-6 months     Control              NA                 0.0808081   -0.5720767    0.4625493
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+_0-6 months    Control              NA                -0.0499171   -0.3583653    0.1884908
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months     Control              NA                -0.0277186   -0.5872493    0.3345686
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     2_0-6 months     Control              NA                 0.0552913   -0.7310372    0.4844279
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     3+_0-6 months    Control              NA                -0.1653116   -1.3529688    0.4228775
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months     Control              NA                -0.2021858   -0.8095269    0.2013102
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_0-6 months     Control              NA                 0.0702427   -0.4420530    0.4005430
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_0-6 months    Control              NA                 0.0077461   -0.6346728    0.3976973
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months     Control              NA                 0.0143030   -0.1139245    0.1277699
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       2_0-6 months     Control              NA                 0.0974709   -0.0566218    0.2290915
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+_0-6 months    Control              NA                -0.0023433   -0.1477564    0.1246469
0-6 months    ki1135781-COHORTS           GUATEMALA                      1_0-6 months     Control              NA                 0.1964286   -0.7710051    0.6353895
0-6 months    ki1135781-COHORTS           GUATEMALA                      2_0-6 months     Control              NA                -0.2187500   -0.6578493    0.1040491
0-6 months    ki1135781-COHORTS           GUATEMALA                      3+_0-6 months    Control              NA                -0.1212689   -0.3552234    0.0722976
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_0-6 months     Control              NA                 0.5000000   -1.5127604    0.9005078
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+_0-6 months    Control              NA                -0.5000000   -2.1747902    0.2912917
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months     Control              NA                -0.0724343   -0.1145789   -0.0318832
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     2_0-6 months     Control              NA                -0.0524389   -0.1050615   -0.0023221
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     3+_0-6 months    Control              NA                -0.1289546   -0.1898891   -0.0711405
6-24 months   iLiNS_DYADM_LNS             MALAWI                         1_6-24 months    Control              NA                 0.2129630   -0.3271989    0.5332822
6-24 months   iLiNS_DYADM_LNS             MALAWI                         2_6-24 months    Control              NA                 0.1864407   -0.1649595    0.4318440
6-24 months   iLiNS_DYADM_LNS             MALAWI                         3+_6-24 months   Control              NA                -0.0070291   -0.1855153    0.1445850
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_6-24 months    Control              NA                 0.0379776   -0.0876370    0.1490846
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2_6-24 months    Control              NA                -0.1316010   -0.2670868   -0.0106023
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+_6-24 months   Control              NA                -0.0698176   -0.1732588    0.0245036
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          1_6-24 months    Control              NA                -0.0566038   -0.2419523    0.1010834
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          2_6-24 months    Control              NA                -0.0594787   -0.4131997    0.2057066
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          3+_6-24 months   Control              NA                -0.0111706   -0.1333662    0.0978502
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          1_6-24 months    Control              NA                -0.0454545   -0.8490740    0.4089067
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          2_6-24 months    Control              NA                -0.1176471   -0.6087292    0.2235269
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          3+_6-24 months   Control              NA                -0.1252955   -0.3186002    0.0396710
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     1_6-24 months    Control              NA                -0.0651828   -1.1211254    0.4650885
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     2_6-24 months    Control              NA                -0.6527778   -2.3331608    0.1804553
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     3+_6-24 months   Control              NA                -0.4710744   -2.0387250    0.2878395
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6-24 months    Control              NA                 0.1413094   -0.2447848    0.4076490
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2_6-24 months    Control              NA                 0.0552767   -0.2559761    0.2893955
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+_6-24 months   Control              NA                -0.2096388   -0.5525884    0.0575569
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months    Control              NA                -0.0177892   -0.1416467    0.0926309
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       2_6-24 months    Control              NA                 0.0549261   -0.0786121    0.1719314
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       3+_6-24 months   Control              NA                 0.0344788   -0.0922402    0.1464962
6-24 months   ki1135781-COHORTS           GUATEMALA                      1_6-24 months    Control              NA                -0.0294118   -0.1793255    0.1014452
6-24 months   ki1135781-COHORTS           GUATEMALA                      2_6-24 months    Control              NA                -0.0692853   -0.2305285    0.0708293
6-24 months   ki1135781-COHORTS           GUATEMALA                      3+_6-24 months   Control              NA                -0.1537475   -0.2591150   -0.0571975
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_6-24 months    Control              NA                 0.2307692   -0.3657472    0.5667456
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         2_6-24 months    Control              NA                 0.2604006   -0.1337326    0.5175165
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+_6-24 months   Control              NA                 0.0014952   -0.2080293    0.1746791
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_6-24 months    Control              NA                 0.0161695   -0.0846716    0.1076355
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     2_6-24 months    Control              NA                 0.0016986   -0.1042844    0.0975099
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     3+_6-24 months   Control              NA                 0.0143137   -0.0901774    0.1087896
