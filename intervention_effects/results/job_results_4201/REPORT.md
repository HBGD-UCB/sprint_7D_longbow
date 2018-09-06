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
* intXenwast

## Data Summary

agecat        studyid                     country                        intXenwast       ever_stunted   n_cell       n
------------  --------------------------  -----------------------------  --------------  -------------  -------  ------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         0_0-6 months                0       32      40
0-6 months    iLiNS_DYADM_LNS             MALAWI                         0_0-6 months                1        8      40
0-6 months    iLiNS_DYADM_LNS             MALAWI                         1_0-6 months                0        1       1
0-6 months    iLiNS_DYADM_LNS             MALAWI                         1_0-6 months                1        0       1
0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         0_0-6 months                0        9      10
0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         0_0-6 months                1        1      10
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_0-6 months                0      199     221
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_0-6 months                1       22     221
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_0-6 months                0       10      11
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_0-6 months                1        1      11
0-6 months    ki1000111-WASH-Kenya        KENYA                          0_0-6 months                0       84      91
0-6 months    ki1000111-WASH-Kenya        KENYA                          0_0-6 months                1        7      91
0-6 months    ki1000111-WASH-Kenya        KENYA                          1_0-6 months                0        1       1
0-6 months    ki1000111-WASH-Kenya        KENYA                          1_0-6 months                1        0       1
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_0-6 months                0      163     210
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_0-6 months                1       47     210
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_0-6 months                0       49      72
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_0-6 months                1       23      72
0-6 months    ki1000304-EU                INDIA                          0_0-6 months                0        6      11
0-6 months    ki1000304-EU                INDIA                          0_0-6 months                1        5      11
0-6 months    ki1000304-EU                INDIA                          1_0-6 months                0        1       3
0-6 months    ki1000304-EU                INDIA                          1_0-6 months                1        2       3
0-6 months    ki1000304-VITAMIN-A         INDIA                          0_0-6 months                0      193     284
0-6 months    ki1000304-VITAMIN-A         INDIA                          0_0-6 months                1       91     284
0-6 months    ki1000304-VITAMIN-A         INDIA                          1_0-6 months                0       34      50
0-6 months    ki1000304-VITAMIN-A         INDIA                          1_0-6 months                1       16      50
0-6 months    ki1000304-Vitamin-B12       INDIA                          0_0-6 months                0        1       1
0-6 months    ki1000304-Vitamin-B12       INDIA                          0_0-6 months                1        0       1
0-6 months    ki1000304-ZnMort            INDIA                          0_0-6 months                0      100     165
0-6 months    ki1000304-ZnMort            INDIA                          0_0-6 months                1       65     165
0-6 months    ki1000304-ZnMort            INDIA                          1_0-6 months                0        9      16
0-6 months    ki1000304-ZnMort            INDIA                          1_0-6 months                1        7      16
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          0_0-6 months                0      499     636
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          0_0-6 months                1      137     636
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months                0       52      78
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months                1       26      78
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_0-6 months                0      211     338
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_0-6 months                1      127     338
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_0-6 months                0       46      78
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_0-6 months                1       32      78
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     0_0-6 months                0      436     498
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     0_0-6 months                1       62     498
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months                0      112     134
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months                1       22     134
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_0-6 months                0     1950    2098
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_0-6 months                1      148    2098
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months                0      118     127
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months                1        9     127
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   0_0-6 months                0       39      41
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   0_0-6 months                1        2      41
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_0-6 months                0        2       5
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_0-6 months                1        3       5
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_0-6 months                0      186     238
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_0-6 months                1       52     238
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      1_0-6 months                0        0       3
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      1_0-6 months                1        3       3
0-6 months    ki1119695-PROBIT            BELARUS                        0_0-6 months                0    12179   13088
0-6 months    ki1119695-PROBIT            BELARUS                        0_0-6 months                1      909   13088
0-6 months    ki1119695-PROBIT            BELARUS                        1_0-6 months                0     2950    3090
0-6 months    ki1119695-PROBIT            BELARUS                        1_0-6 months                1      140    3090
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_0-6 months                0     6254    7232
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_0-6 months                1      978    7232
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months                0      990    1378
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months                1      388    1378
0-6 months    ki1135781-COHORTS           GUATEMALA                      0_0-6 months                0      143     207
0-6 months    ki1135781-COHORTS           GUATEMALA                      0_0-6 months                1       64     207
0-6 months    ki1135781-COHORTS           GUATEMALA                      1_0-6 months                0       51      71
0-6 months    ki1135781-COHORTS           GUATEMALA                      1_0-6 months                1       20      71
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_0-6 months                0      842    1181
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_0-6 months                1      339    1181
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_0-6 months                0        7      16
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_0-6 months                1        9      16
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_0-6 months                0       52      65
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_0-6 months                1       13      65
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_0-6 months                0        2       2
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_0-6 months                1        0       2
0-6 months    ki1148112-LCNI-5            MALAWI                         0_0-6 months                0      171     268
0-6 months    ki1148112-LCNI-5            MALAWI                         0_0-6 months                1       97     268
0-6 months    ki1148112-LCNI-5            MALAWI                         1_0-6 months                0        4       4
0-6 months    ki1148112-LCNI-5            MALAWI                         1_0-6 months                1        0       4
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_0-6 months                0    24200   28882
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_0-6 months                1     4682   28882
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months                0     2948    3730
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months                1      782    3730
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_0-6 months                0     5988    7504
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_0-6 months                1     1516    7504
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_0-6 months                0      584     766
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_0-6 months                1      182     766
6-24 months   iLiNS_DYADM_LNS             MALAWI                         0_6-24 months               0      339     473
6-24 months   iLiNS_DYADM_LNS             MALAWI                         0_6-24 months               1      134     473
6-24 months   iLiNS_DYADM_LNS             MALAWI                         1_6-24 months               0       15      20
6-24 months   iLiNS_DYADM_LNS             MALAWI                         1_6-24 months               1        5      20
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   0_6-24 months               0     1482    2061
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   0_6-24 months               1      579    2061
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   1_6-24 months               0      180     407
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   1_6-24 months               1      227     407
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_6-24 months               0      346     486
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_6-24 months               1      140     486
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         1_6-24 months               0        2       7
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         1_6-24 months               1        5       7
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_6-24 months               0     2809    4391
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_6-24 months               1     1582    4391
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_6-24 months               0      151     391
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_6-24 months               1      240     391
6-24 months   ki1000111-WASH-Kenya        KENYA                          0_6-24 months               0     4891    6512
6-24 months   ki1000111-WASH-Kenya        KENYA                          0_6-24 months               1     1621    6512
6-24 months   ki1000111-WASH-Kenya        KENYA                          1_6-24 months               0       44     112
6-24 months   ki1000111-WASH-Kenya        KENYA                          1_6-24 months               1       68     112
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       0_6-24 months               0      519    1099
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       0_6-24 months               1      580    1099
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       1_6-24 months               0       84     266
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       1_6-24 months               1      182     266
6-24 months   ki1000304-EU                INDIA                          0_6-24 months               0      939    1641
6-24 months   ki1000304-EU                INDIA                          0_6-24 months               1      702    1641
6-24 months   ki1000304-EU                INDIA                          1_6-24 months               0      133     367
6-24 months   ki1000304-EU                INDIA                          1_6-24 months               1      234     367
6-24 months   ki1000304-VITAMIN-A         INDIA                          0_6-24 months               0     1572    2384
6-24 months   ki1000304-VITAMIN-A         INDIA                          0_6-24 months               1      812    2384
6-24 months   ki1000304-VITAMIN-A         INDIA                          1_6-24 months               0      241     405
6-24 months   ki1000304-VITAMIN-A         INDIA                          1_6-24 months               1      164     405
6-24 months   ki1000304-Vitamin-B12       INDIA                          0_6-24 months               0      397     719
6-24 months   ki1000304-Vitamin-B12       INDIA                          0_6-24 months               1      322     719
6-24 months   ki1000304-Vitamin-B12       INDIA                          1_6-24 months               0       27      85
6-24 months   ki1000304-Vitamin-B12       INDIA                          1_6-24 months               1       58      85
6-24 months   ki1000304-ZnMort            INDIA                          0_6-24 months               0      783    1500
6-24 months   ki1000304-ZnMort            INDIA                          0_6-24 months               1      717    1500
6-24 months   ki1000304-ZnMort            INDIA                          1_6-24 months               0      103     355
6-24 months   ki1000304-ZnMort            INDIA                          1_6-24 months               1      252     355
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          0_6-24 months               0      321     566
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          0_6-24 months               1      245     566
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          1_6-24 months               0       32      61
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          1_6-24 months               1       29      61
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          0_6-24 months               0       78     201
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          0_6-24 months               1      123     201
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          1_6-24 months               0       15      42
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          1_6-24 months               1       27      42
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     0_6-24 months               0      243     272
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     0_6-24 months               1       29     272
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     1_6-24 months               0       62      70
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     1_6-24 months               1        8      70
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6-24 months               0     1378    1687
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6-24 months               1      309    1687
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6-24 months               0       94     113
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6-24 months               1       19     113
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6-24 months               0     4294    6129
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6-24 months               1     1835    6129
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6-24 months               0      431    1028
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6-24 months               1      597    1028
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      0_6-24 months               0      127     181
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      0_6-24 months               1       54     181
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      1_6-24 months               0        1       1
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      1_6-24 months               1        0       1
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   0_6-24 months               0     1925    2716
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   0_6-24 months               1      791    2716
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   1_6-24 months               0      235     549
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   1_6-24 months               1      314     549
6-24 months   ki1119695-PROBIT            BELARUS                        0_6-24 months               0    10811   11479
6-24 months   ki1119695-PROBIT            BELARUS                        0_6-24 months               1      668   11479
6-24 months   ki1119695-PROBIT            BELARUS                        1_6-24 months               0     2551    2728
6-24 months   ki1119695-PROBIT            BELARUS                        1_6-24 months               1      177    2728
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_6-24 months               0     5683    7185
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_6-24 months               1     1502    7185
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months               0      871    1186
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months               1      315    1186
6-24 months   ki1135781-COHORTS           GUATEMALA                      0_6-24 months               0      144     412
6-24 months   ki1135781-COHORTS           GUATEMALA                      0_6-24 months               1      268     412
6-24 months   ki1135781-COHORTS           GUATEMALA                      1_6-24 months               0       28      53
6-24 months   ki1135781-COHORTS           GUATEMALA                      1_6-24 months               1       25      53
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_6-24 months               0      860    1452
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_6-24 months               1      592    1452
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_6-24 months               0        7      20
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_6-24 months               1       13      20
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_6-24 months               0      516     724
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_6-24 months               1      208     724
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_6-24 months               0       22      34
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_6-24 months               1       12      34
6-24 months   ki1148112-LCNI-5            MALAWI                         0_6-24 months               0      341     716
6-24 months   ki1148112-LCNI-5            MALAWI                         0_6-24 months               1      375     716
6-24 months   ki1148112-LCNI-5            MALAWI                         1_6-24 months               0        5      14
6-24 months   ki1148112-LCNI-5            MALAWI                         1_6-24 months               1        9      14
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_6-24 months               0    13169   15996
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_6-24 months               1     2827   15996
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_6-24 months               0     1537    1778
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_6-24 months               1      241    1778
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_6-24 months               0     4313    5930
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_6-24 months               1     1617    5930
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_6-24 months               0      391     535
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_6-24 months               1      144     535


The following strata were considered:

* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenwast: 0_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenwast: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXenwast: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenwast: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenwast: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA, intXenwast: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXenwast: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXenwast: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA, intXenwast: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXenwast: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXenwast: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXenwast: 0_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXenwast: 0_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXenwast: 0_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXenwast: 0_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXenwast: 0_0-6 months
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenwast: 0_0-6 months
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenwast: 0_0-6 months
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXenwast: 0_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXenwast: 0_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXenwast: 0_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenwast: 0_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXenwast: 0_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXenwast: 1_0-6 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenwast: 0_6-24 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenwast: 1_6-24 months
* agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO, intXenwast: 0_6-24 months
* agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO, intXenwast: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenwast: 0_6-24 months
* agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenwast: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXenwast: 0_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXenwast: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenwast: 0_6-24 months
* agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenwast: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenwast: 0_6-24 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenwast: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA, intXenwast: 0_6-24 months
* agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA, intXenwast: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXenwast: 0_6-24 months
* agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXenwast: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXenwast: 0_6-24 months
* agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXenwast: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA, intXenwast: 0_6-24 months
* agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA, intXenwast: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXenwast: 0_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXenwast: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXenwast: 0_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXenwast: 1_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXenwast: 0_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXenwast: 1_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXenwast: 0_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXenwast: 1_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXenwast: 0_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXenwast: 1_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXenwast: 0_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXenwast: 1_6-24 months
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO, intXenwast: 0_6-24 months
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO, intXenwast: 1_6-24 months
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXenwast: 0_6-24 months
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXenwast: 1_6-24 months
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenwast: 0_6-24 months
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenwast: 1_6-24 months
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenwast: 0_6-24 months
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenwast: 1_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXenwast: 0_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXenwast: 1_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXenwast: 0_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXenwast: 1_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXenwast: 0_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXenwast: 1_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenwast: 0_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenwast: 1_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXenwast: 0_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXenwast: 1_6-24 months

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenwast: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXenwast: 0_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXenwast: 0_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXenwast: 1_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXenwast: 1_0-6 months
* agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenwast: 1_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXenwast: 1_6-24 months

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




# Results Detail

## Results Plots
![](/tmp/4e412025-25b0-4e41-b4b9-8b0c5148ab6e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4e412025-25b0-4e41-b4b9-8b0c5148ab6e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4e412025-25b0-4e41-b4b9-8b0c5148ab6e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4e412025-25b0-4e41-b4b9-8b0c5148ab6e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                     country                        intXenwast      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------------  -----------------------------  --------------  -------------------  ---------------  ----------  -----------  ----------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         0_0-6 months    Control              NA                0.2173913    0.0466749   0.3881077
0-6 months    iLiNS_DYADM_LNS             MALAWI                         0_0-6 months    LNS                  NA                0.1764706   -0.0070552   0.3599964
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_0-6 months    Control              NA                0.1428571    0.0367888   0.2489255
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_0-6 months    LNS                  NA                0.0909091    0.0213957   0.1604224
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_0-6 months    Other                NA                0.0884956    0.0360107   0.1409804
0-6 months    ki1000111-WASH-Kenya        KENYA                          0_0-6 months    Control              NA                0.0769231   -0.0260700   0.1799162
0-6 months    ki1000111-WASH-Kenya        KENYA                          0_0-6 months    LNS                  NA                0.0000000    0.0000000   0.0000000
0-6 months    ki1000111-WASH-Kenya        KENYA                          0_0-6 months    Other                NA                0.1190476    0.0205650   0.2175302
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_0-6 months    Control              NA                0.2314815    0.1517448   0.3112181
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_0-6 months    Maternal             NA                0.2156863    0.1356769   0.2956956
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_0-6 months    Control              NA                0.4074074    0.2207712   0.5940436
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_0-6 months    Maternal             NA                0.2666667    0.1365557   0.3967777
0-6 months    ki1000304-EU                INDIA                          0_0-6 months    Control              NA                0.5000000   -0.0139069   1.0139069
0-6 months    ki1000304-EU                INDIA                          0_0-6 months    Zinc                 NA                0.4285714    0.0440788   0.8130640
0-6 months    ki1000304-VITAMIN-A         INDIA                          0_0-6 months    Control              NA                0.3194444    0.2431554   0.3957335
0-6 months    ki1000304-VITAMIN-A         INDIA                          0_0-6 months    VitA                 NA                0.3214286    0.2439307   0.3989265
0-6 months    ki1000304-VITAMIN-A         INDIA                          1_0-6 months    Control              NA                0.2592593    0.0922835   0.4262350
0-6 months    ki1000304-VITAMIN-A         INDIA                          1_0-6 months    VitA                 NA                0.3913043    0.1898259   0.5927828
0-6 months    ki1000304-ZnMort            INDIA                          0_0-6 months    Control              NA                0.3827160    0.2765449   0.4888872
0-6 months    ki1000304-ZnMort            INDIA                          0_0-6 months    Zinc                 NA                0.4047619    0.2994752   0.5100486
0-6 months    ki1000304-ZnMort            INDIA                          1_0-6 months    Control              NA                0.5000000    0.1421612   0.8578388
0-6 months    ki1000304-ZnMort            INDIA                          1_0-6 months    Zinc                 NA                0.3750000    0.0285240   0.7214760
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          0_0-6 months    Control              NA                0.2236842    0.1882370   0.2591314
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          0_0-6 months    Other                NA                0.2078313    0.1722482   0.2434144
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months    Control              NA                0.3666667   -0.0388576   0.7721909
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months    Other                NA                0.3125000    0.2440564   0.3809436
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_0-6 months    Control              NA                0.4022989    0.2991063   0.5054914
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_0-6 months    Other                NA                0.3665339    0.3068340   0.4262337
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_0-6 months    Control              NA                0.3888889    0.1622228   0.6155550
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_0-6 months    Other                NA                0.4166667    0.2911136   0.5422197
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     0_0-6 months    Control              NA                0.1353383    0.0771425   0.1935342
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     0_0-6 months    Other                NA                0.1205479    0.0871112   0.1539847
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months    Control              NA                0.1875000    0.0517587   0.3232413
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months    Other                NA                0.1568627    0.0860219   0.2277036
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_0-6 months    Control              NA                0.0734463    0.0512529   0.0956398
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_0-6 months    Other                NA                0.0682261    0.0464027   0.0900496
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_0-6 months    Zinc                 NA                0.0702087    0.0547804   0.0856371
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months    Control              NA                0.0000000    0.0000000   0.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months    Other                NA                0.0263158   -0.0247806   0.0774122
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months    Zinc                 NA                0.1250000    0.0436545   0.2063455
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_0-6 months    Control              NA                0.2372881    0.1603681   0.3142082
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_0-6 months    Other                NA                0.2000000    0.1282814   0.2717186
0-6 months    ki1119695-PROBIT            BELARUS                        0_0-6 months    Control              NA                0.0730401    0.0468463   0.0992339
0-6 months    ki1119695-PROBIT            BELARUS                        0_0-6 months    Maternal             NA                0.0662625    0.0516575   0.0808674
0-6 months    ki1119695-PROBIT            BELARUS                        1_0-6 months    Control              NA                0.0488103    0.0249159   0.0727046
0-6 months    ki1119695-PROBIT            BELARUS                        1_0-6 months    Maternal             NA                0.0413508    0.0255725   0.0571291
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_0-6 months    Control              NA                0.1337793    0.1180258   0.1495327
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_0-6 months    VitA                 NA                0.1357117    0.1266084   0.1448149
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months    Control              NA                0.2506887    0.2060871   0.2952904
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months    VitA                 NA                0.2926108    0.2646115   0.3206101
0-6 months    ki1135781-COHORTS           GUATEMALA                      0_0-6 months    Control              NA                0.3131313    0.2215552   0.4047074
0-6 months    ki1135781-COHORTS           GUATEMALA                      0_0-6 months    Other                NA                0.3055556    0.2184689   0.3926422
0-6 months    ki1135781-COHORTS           GUATEMALA                      1_0-6 months    Control              NA                0.3714286    0.2102122   0.5326450
0-6 months    ki1135781-COHORTS           GUATEMALA                      1_0-6 months    Other                NA                0.1944444    0.0642410   0.3246479
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_0-6 months    Control              NA                0.3172043    0.2502944   0.3841142
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_0-6 months    LNS                  NA                0.2814070    0.2534540   0.3093601
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_0-6 months    Control              NA                0.5000000   -0.2156777   1.2156777
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_0-6 months    LNS                  NA                0.5714286    0.3037023   0.8391549
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_0-6 months    Control              NA                0.2173913    0.0475105   0.3872721
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_0-6 months    Maternal             NA                0.1904762    0.0707952   0.3101572
0-6 months    ki1148112-LCNI-5            MALAWI                         0_0-6 months    Control              NA                0.3787879    0.2615398   0.4960360
0-6 months    ki1148112-LCNI-5            MALAWI                         0_0-6 months    LNS                  NA                0.3260870    0.2477279   0.4044460
0-6 months    ki1148112-LCNI-5            MALAWI                         0_0-6 months    Other                NA                0.4218750    0.3006555   0.5430945
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_0-6 months    Control              NA                0.1756699    0.1656730   0.1856669
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_0-6 months    Maternal             NA                0.1491608    0.1407361   0.1575855
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months    Control              NA                0.2237540    0.1904894   0.2570186
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months    Maternal             NA                0.1952278    0.1652367   0.2252188
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_0-6 months    Control              NA                0.1795666    0.1528627   0.2062704
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_0-6 months    LNS                  NA                0.2023121    0.1776910   0.2269333
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_0-6 months    Other                NA                0.2143266    0.1911364   0.2375169
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_0-6 months    Control              NA                0.2222222    0.1338070   0.3106374
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_0-6 months    LNS                  NA                0.2604167    0.1626714   0.3581619
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_0-6 months    Other                NA                0.2340426    0.1702213   0.2978638
6-24 months   iLiNS_DYADM_LNS             MALAWI                         0_6-24 months   Control              NA                0.2612245    0.2060412   0.3164078
6-24 months   iLiNS_DYADM_LNS             MALAWI                         0_6-24 months   LNS                  NA                0.3070175    0.2470136   0.3670215
6-24 months   iLiNS_DYADM_LNS             MALAWI                         1_6-24 months   Control              NA                0.3000000    0.0085957   0.5914043
6-24 months   iLiNS_DYADM_LNS             MALAWI                         1_6-24 months   LNS                  NA                0.2000000   -0.0543585   0.4543585
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   0_6-24 months   Control              NA                0.2730845    0.2065450   0.3396239
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   0_6-24 months   Zinc                 NA                0.2835052    0.1936317   0.3733786
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   1_6-24 months   Control              NA                0.5825243    0.3892817   0.7757668
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   1_6-24 months   Zinc                 NA                0.5493421    0.4323913   0.6662929
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_6-24 months   Control              NA                0.2489451    0.1938379   0.3040524
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_6-24 months   VitA                 NA                0.3253012    0.2670515   0.3835509
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_6-24 months   Control              NA                0.3711911    0.3424144   0.3999679
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_6-24 months   LNS                  NA                0.3090909    0.2817788   0.3364030
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_6-24 months   Other                NA                0.3804348    0.3601821   0.4006874
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_6-24 months   Control              NA                0.6705882    0.5705440   0.7706325
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_6-24 months   LNS                  NA                0.5656566    0.4678924   0.6634207
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_6-24 months   Other                NA                0.6135266    0.5471071   0.6799461
6-24 months   ki1000111-WASH-Kenya        KENYA                          0_6-24 months   Control              NA                0.2472011    0.2293073   0.2650948
6-24 months   ki1000111-WASH-Kenya        KENYA                          0_6-24 months   LNS                  NA                0.2166667    0.1953868   0.2379466
6-24 months   ki1000111-WASH-Kenya        KENYA                          0_6-24 months   Other                NA                0.2666432    0.2503757   0.2829107
6-24 months   ki1000111-WASH-Kenya        KENYA                          1_6-24 months   Control              NA                0.5714286    0.4210924   0.7217648
6-24 months   ki1000111-WASH-Kenya        KENYA                          1_6-24 months   LNS                  NA                0.4375000    0.1933336   0.6816664
6-24 months   ki1000111-WASH-Kenya        KENYA                          1_6-24 months   Other                NA                0.6851852    0.5607537   0.8096167
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       0_6-24 months   Control              NA                0.5633270    0.5210430   0.6056111
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       0_6-24 months   Maternal             NA                0.4947368    0.4536735   0.5358002
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       1_6-24 months   Control              NA                0.6875000    0.6070507   0.7679493
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       1_6-24 months   Maternal             NA                0.6811594    0.6032594   0.7590594
6-24 months   ki1000304-EU                INDIA                          0_6-24 months   Control              NA                0.4463007    0.4126333   0.4799681
6-24 months   ki1000304-EU                INDIA                          0_6-24 months   Zinc                 NA                0.4084682    0.3744595   0.4424770
6-24 months   ki1000304-EU                INDIA                          1_6-24 months   Control              NA                0.6666667    0.5988279   0.7345054
6-24 months   ki1000304-EU                INDIA                          1_6-24 months   Zinc                 NA                0.6077348    0.5365072   0.6789624
6-24 months   ki1000304-VITAMIN-A         INDIA                          0_6-24 months   Control              NA                0.3570234    0.3298641   0.3841828
6-24 months   ki1000304-VITAMIN-A         INDIA                          0_6-24 months   VitA                 NA                0.3240741    0.2974544   0.3506937
6-24 months   ki1000304-VITAMIN-A         INDIA                          1_6-24 months   Control              NA                0.3636364    0.2965493   0.4307234
6-24 months   ki1000304-VITAMIN-A         INDIA                          1_6-24 months   VitA                 NA                0.4444444    0.3766690   0.5122199
6-24 months   ki1000304-Vitamin-B12       INDIA                          0_6-24 months   Control              NA                0.4887640    0.4152787   0.5622494
6-24 months   ki1000304-Vitamin-B12       INDIA                          0_6-24 months   Other                NA                0.4343808    0.3925834   0.4761782
6-24 months   ki1000304-Vitamin-B12       INDIA                          1_6-24 months   Control              NA                0.6000000    0.3840225   0.8159775
6-24 months   ki1000304-Vitamin-B12       INDIA                          1_6-24 months   Other                NA                0.7076923    0.5964670   0.8189176
6-24 months   ki1000304-ZnMort            INDIA                          0_6-24 months   Control              NA                0.4892761    0.4533927   0.5251595
6-24 months   ki1000304-ZnMort            INDIA                          0_6-24 months   Zinc                 NA                0.4668435    0.4312213   0.5024657
6-24 months   ki1000304-ZnMort            INDIA                          1_6-24 months   Control              NA                0.6910112    0.6230338   0.7589886
6-24 months   ki1000304-ZnMort            INDIA                          1_6-24 months   Zinc                 NA                0.7288136    0.6632268   0.7944003
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          0_6-24 months   Control              NA                0.4354244    0.3659385   0.5049103
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          0_6-24 months   Other                NA                0.4305085    0.3199784   0.5410385
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          1_6-24 months   Control              NA                0.6250000    0.3335454   0.9164546
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          1_6-24 months   Other                NA                0.3783784    0.2784758   0.4782809
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          0_6-24 months   Control              NA                0.7000000    0.5726627   0.8273373
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          0_6-24 months   Other                NA                0.5827815    0.5039359   0.6616270
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          1_6-24 months   Control              NA                0.7272727    0.4608953   0.9936501
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          1_6-24 months   Other                NA                0.6129032    0.4393608   0.7864457
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     0_6-24 months   Control              NA                0.1486486    0.0674466   0.2298507
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     0_6-24 months   Other                NA                0.0909091    0.0507926   0.1310256
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     1_6-24 months   Control              NA                0.1176471   -0.0366152   0.2719094
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     1_6-24 months   Other                NA                0.1132075    0.0272897   0.1991254
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6-24 months   Control              NA                0.1875000    0.1506831   0.2243169
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6-24 months   Other                NA                0.1621622    0.1263414   0.1979829
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6-24 months   Zinc                 NA                0.1910377    0.1645709   0.2175046
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6-24 months   Control              NA                0.0909091   -0.0297539   0.2115721
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6-24 months   Other                NA                0.2368421    0.1010661   0.3726182
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6-24 months   Zinc                 NA                0.1509434    0.0541344   0.2477524
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6-24 months   Control              NA                0.2492754    0.2229185   0.2756322
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6-24 months   Zinc                 NA                0.3095799    0.2968830   0.3222768
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6-24 months   Control              NA                0.5084746    0.4347894   0.5821598
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6-24 months   Zinc                 NA                0.5957697    0.5627823   0.6287571
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      0_6-24 months   Control              NA                0.2446809    0.1575339   0.3318279
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      0_6-24 months   Other                NA                0.3563218    0.2554088   0.4572348
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   0_6-24 months   Control              NA                0.3236641    0.2752903   0.3720379
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   0_6-24 months   LNS                  NA                0.2809316    0.2133199   0.3485433
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   1_6-24 months   Control              NA                0.6126761    0.5325131   0.6928391
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   1_6-24 months   LNS                  NA                0.5577396    0.4594807   0.6559984
6-24 months   ki1119695-PROBIT            BELARUS                        0_6-24 months   Control              NA                0.0653313    0.0427423   0.0879204
6-24 months   ki1119695-PROBIT            BELARUS                        0_6-24 months   Maternal             NA                0.0519798    0.0390407   0.0649189
6-24 months   ki1119695-PROBIT            BELARUS                        1_6-24 months   Control              NA                0.0746590    0.0489751   0.1003429
6-24 months   ki1119695-PROBIT            BELARUS                        1_6-24 months   Maternal             NA                0.0546816    0.0390250   0.0703383
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_6-24 months   Control              NA                0.2092893    0.1904269   0.2281518
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_6-24 months   VitA                 NA                0.2089663    0.1981196   0.2198130
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months   Control              NA                0.2367601    0.1902376   0.2832827
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months   VitA                 NA                0.2763006    0.2464884   0.3061127
6-24 months   ki1135781-COHORTS           GUATEMALA                      0_6-24 months   Control              NA                0.7135417    0.6495143   0.7775690
6-24 months   ki1135781-COHORTS           GUATEMALA                      0_6-24 months   Other                NA                0.5954545    0.5305205   0.6603886
6-24 months   ki1135781-COHORTS           GUATEMALA                      1_6-24 months   Control              NA                0.6551724    0.4805242   0.8298206
6-24 months   ki1135781-COHORTS           GUATEMALA                      1_6-24 months   Other                NA                0.2500000    0.0751042   0.4248958
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_6-24 months   Control              NA                0.3958333    0.3339425   0.4577242
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_6-24 months   LNS                  NA                0.4100660    0.3823663   0.4377657
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_6-24 months   Control              NA                0.6666667    0.2796725   1.0536608
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_6-24 months   LNS                  NA                0.6428571    0.3853434   0.9003709
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_6-24 months   Control              NA                0.2612245    0.2061020   0.3163470
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_6-24 months   Maternal             NA                0.3006263    0.2594967   0.3417559
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_6-24 months   Control              NA                0.3000000    0.0117029   0.5882971
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_6-24 months   Maternal             NA                0.3750000    0.1784013   0.5715987
6-24 months   ki1148112-LCNI-5            MALAWI                         0_6-24 months   Control              NA                0.4800000    0.4059279   0.5540721
6-24 months   ki1148112-LCNI-5            MALAWI                         0_6-24 months   LNS                  NA                0.5342466    0.4830367   0.5854565
6-24 months   ki1148112-LCNI-5            MALAWI                         0_6-24 months   Other                NA                0.5454545    0.4718401   0.6190690
6-24 months   ki1148112-LCNI-5            MALAWI                         1_6-24 months   Control              NA                1.0000000    1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5            MALAWI                         1_6-24 months   LNS                  NA                0.4285714    0.0481333   0.8090095
6-24 months   ki1148112-LCNI-5            MALAWI                         1_6-24 months   Other                NA                0.6666667    0.1130954   1.2202379
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_6-24 months   Control              NA                0.1767063    0.1613434   0.1920693
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_6-24 months   Maternal             NA                0.1767554    0.1637600   0.1897509
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_6-24 months   Control              NA                0.1175799    0.0825808   0.1525790
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_6-24 months   Maternal             NA                0.1529933    0.1173256   0.1886611
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_6-24 months   Control              NA                0.2889994    0.2511371   0.3268617
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_6-24 months   LNS                  NA                0.2489083    0.2134996   0.2843170
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_6-24 months   Other                NA                0.2770419    0.2464372   0.3076466
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_6-24 months   Control              NA                0.2867647    0.1717130   0.4018164
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_6-24 months   LNS                  NA                0.2877698    0.1680348   0.4075048
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_6-24 months   Other                NA                0.2500000    0.1707698   0.3292302


### Parameter: E(Y)


agecat        studyid                     country                        intXenwast      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------------  -----------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         0_0-6 months    NA                   NA                0.2000000   0.0744618   0.3255382
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_0-6 months    NA                   NA                0.0995475   0.0599851   0.1391099
0-6 months    ki1000111-WASH-Kenya        KENYA                          0_0-6 months    NA                   NA                0.0769231   0.0218710   0.1319752
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_0-6 months    NA                   NA                0.2238095   0.1673030   0.2803160
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_0-6 months    NA                   NA                0.3194444   0.2109897   0.4278991
0-6 months    ki1000304-EU                INDIA                          0_0-6 months    NA                   NA                0.4545455   0.1459312   0.7631597
0-6 months    ki1000304-VITAMIN-A         INDIA                          0_0-6 months    NA                   NA                0.3204225   0.2660555   0.3747896
0-6 months    ki1000304-VITAMIN-A         INDIA                          1_0-6 months    NA                   NA                0.3200000   0.1893891   0.4506109
0-6 months    ki1000304-ZnMort            INDIA                          0_0-6 months    NA                   NA                0.3939394   0.3191571   0.4687217
0-6 months    ki1000304-ZnMort            INDIA                          1_0-6 months    NA                   NA                0.4375000   0.1864543   0.6885457
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          0_0-6 months    NA                   NA                0.2154088   0.1893844   0.2414332
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months    NA                   NA                0.3333333   0.1719543   0.4947124
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_0-6 months    NA                   NA                0.3757396   0.3240314   0.4274479
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_0-6 months    NA                   NA                0.4102564   0.3003907   0.5201221
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     0_0-6 months    NA                   NA                0.1244980   0.0954725   0.1535235
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months    NA                   NA                0.1641791   0.1012230   0.2271352
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_0-6 months    NA                   NA                0.0705434   0.0595839   0.0815029
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months    NA                   NA                0.0708661   0.0260617   0.1156706
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_0-6 months    NA                   NA                0.2184874   0.1658790   0.2710958
0-6 months    ki1119695-PROBIT            BELARUS                        0_0-6 months    NA                   NA                0.0694529   0.0546491   0.0842568
0-6 months    ki1119695-PROBIT            BELARUS                        1_0-6 months    NA                   NA                0.0453074   0.0304788   0.0601360
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_0-6 months    NA                   NA                0.1352323   0.1273503   0.1431143
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months    NA                   NA                0.2815675   0.2578119   0.3053231
0-6 months    ki1135781-COHORTS           GUATEMALA                      0_0-6 months    NA                   NA                0.3091787   0.2460682   0.3722893
0-6 months    ki1135781-COHORTS           GUATEMALA                      1_0-6 months    NA                   NA                0.2816901   0.1763144   0.3870659
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_0-6 months    NA                   NA                0.2870449   0.2612334   0.3128564
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_0-6 months    NA                   NA                0.5625000   0.3114543   0.8135457
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_0-6 months    NA                   NA                0.2000000   0.1020018   0.2979982
0-6 months    ki1148112-LCNI-5            MALAWI                         0_0-6 months    NA                   NA                0.3619403   0.3042980   0.4195826
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_0-6 months    NA                   NA                0.1621079   0.1555101   0.1687057
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months    NA                   NA                0.2096515   0.1871803   0.2321227
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_0-6 months    NA                   NA                0.2020256   0.1874550   0.2165962
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_0-6 months    NA                   NA                0.2375979   0.1916999   0.2834959
6-24 months   iLiNS_DYADM_LNS             MALAWI                         0_6-24 months   NA                   NA                0.2832981   0.2425782   0.3240180
6-24 months   iLiNS_DYADM_LNS             MALAWI                         1_6-24 months   NA                   NA                0.2500000   0.0552973   0.4447027
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   0_6-24 months   NA                   NA                0.2809316   0.2109425   0.3509207
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   1_6-24 months   NA                   NA                0.5577396   0.4569870   0.6584921
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_6-24 months   NA                   NA                0.2880658   0.2477623   0.3283694
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_6-24 months   NA                   NA                0.3602824   0.3460810   0.3744838
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_6-24 months   NA                   NA                0.6138107   0.5654901   0.6621314
6-24 months   ki1000111-WASH-Kenya        KENYA                          0_6-24 months   NA                   NA                0.2489251   0.2384224   0.2594277
6-24 months   ki1000111-WASH-Kenya        KENYA                          1_6-24 months   NA                   NA                0.6071429   0.5162877   0.6979980
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       0_6-24 months   NA                   NA                0.5277525   0.4982236   0.5572814
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       1_6-24 months   NA                   NA                0.6842105   0.6282452   0.7401758
6-24 months   ki1000304-EU                INDIA                          0_6-24 months   NA                   NA                0.4277879   0.4038427   0.4517332
6-24 months   ki1000304-EU                INDIA                          1_6-24 months   NA                   NA                0.6376022   0.5883557   0.6868487
6-24 months   ki1000304-VITAMIN-A         INDIA                          0_6-24 months   NA                   NA                0.3406040   0.3215764   0.3596316
6-24 months   ki1000304-VITAMIN-A         INDIA                          1_6-24 months   NA                   NA                0.4049383   0.3570716   0.4528049
6-24 months   ki1000304-Vitamin-B12       INDIA                          0_6-24 months   NA                   NA                0.4478442   0.4114711   0.4842173
6-24 months   ki1000304-Vitamin-B12       INDIA                          1_6-24 months   NA                   NA                0.6823529   0.5827928   0.7819131
6-24 months   ki1000304-ZnMort            INDIA                          0_6-24 months   NA                   NA                0.4780000   0.4527130   0.5032870
6-24 months   ki1000304-ZnMort            INDIA                          1_6-24 months   NA                   NA                0.7098592   0.6625836   0.7571347
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          0_6-24 months   NA                   NA                0.4328622   0.3661078   0.4996166
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          1_6-24 months   NA                   NA                0.4754098   0.3096395   0.6411801
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          0_6-24 months   NA                   NA                0.6119403   0.5444041   0.6794765
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          1_6-24 months   NA                   NA                0.6428571   0.4961895   0.7895248
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     0_6-24 months   NA                   NA                0.1066176   0.0698728   0.1433625
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     1_6-24 months   NA                   NA                0.1142857   0.0392157   0.1893557
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6-24 months   NA                   NA                0.1831654   0.1647021   0.2016286
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6-24 months   NA                   NA                0.1681416   0.0988786   0.2374046
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6-24 months   NA                   NA                0.2993963   0.2879294   0.3108633
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6-24 months   NA                   NA                0.5807393   0.5505609   0.6109177
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      0_6-24 months   NA                   NA                0.2983425   0.2315032   0.3651819
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   0_6-24 months   NA                   NA                0.2912371   0.2387193   0.3437549
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   1_6-24 months   NA                   NA                0.5719490   0.4958006   0.6480974
6-24 months   ki1119695-PROBIT            BELARUS                        0_6-24 months   NA                   NA                0.0581932   0.0448636   0.0715228
6-24 months   ki1119695-PROBIT            BELARUS                        1_6-24 months   NA                   NA                0.0648827   0.0493561   0.0804092
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_6-24 months   NA                   NA                0.2090466   0.1996437   0.2184495
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months   NA                   NA                0.2655987   0.2404527   0.2907446
6-24 months   ki1135781-COHORTS           GUATEMALA                      0_6-24 months   NA                   NA                0.6504854   0.6043878   0.6965831
6-24 months   ki1135781-COHORTS           GUATEMALA                      1_6-24 months   NA                   NA                0.4716981   0.3360169   0.6073793
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_6-24 months   NA                   NA                0.4077135   0.3824288   0.4329982
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_6-24 months   NA                   NA                0.6500000   0.4355323   0.8644677
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_6-24 months   NA                   NA                0.2872928   0.2542729   0.3203128
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_6-24 months   NA                   NA                0.3529412   0.1898937   0.5159887
6-24 months   ki1148112-LCNI-5            MALAWI                         0_6-24 months   NA                   NA                0.5237430   0.4871351   0.5603509
6-24 months   ki1148112-LCNI-5            MALAWI                         1_6-24 months   NA                   NA                0.6428571   0.3823890   0.9033253
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_6-24 months   NA                   NA                0.1767317   0.1667174   0.1867459
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_6-24 months   NA                   NA                0.1355456   0.1105504   0.1605407
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_6-24 months   NA                   NA                0.2726813   0.2528380   0.2925246
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_6-24 months   NA                   NA                0.2691589   0.2115974   0.3267204


### Parameter: RR


agecat        studyid                     country                        intXenwast      intervention_level   baseline_level            estimate           ci_lower           ci_upper
------------  --------------------------  -----------------------------  --------------  -------------------  ---------------  -----------------  -----------------  -----------------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         0_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    iLiNS_DYADM_LNS             MALAWI                         0_0-6 months    LNS                  Control                  0.8117647          0.2205320          2.9880558
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_0-6 months    LNS                  Control                  0.6363636          0.2191938          1.8474914
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_0-6 months    Other                Control                  0.6194690          0.2395090          1.6022025
0-6 months    ki1000111-WASH-Kenya        KENYA                          0_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1000111-WASH-Kenya        KENYA                          0_0-6 months    LNS                  Control                  0.0000000          0.0000000          0.0000002
0-6 months    ki1000111-WASH-Kenya        KENYA                          0_0-6 months    Other                Control                  1.5476190          0.3207348          7.4676162
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_0-6 months    Maternal             Control                  0.9317647          0.5616389          1.5458073
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_0-6 months    Maternal             Control                  0.6545455          0.3351806          1.2782056
0-6 months    ki1000304-EU                INDIA                          0_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1000304-EU                INDIA                          0_0-6 months    Zinc                 Control                  0.8571429          0.2190539          3.3539409
0-6 months    ki1000304-VITAMIN-A         INDIA                          0_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1000304-VITAMIN-A         INDIA                          0_0-6 months    VitA                 Control                  1.0062112          0.7166495          1.4127700
0-6 months    ki1000304-VITAMIN-A         INDIA                          1_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1000304-VITAMIN-A         INDIA                          1_0-6 months    VitA                 Control                  1.5093168          0.6617219          3.4425897
0-6 months    ki1000304-ZnMort            INDIA                          0_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1000304-ZnMort            INDIA                          0_0-6 months    Zinc                 Control                  1.0576037          0.7230436          1.5469683
0-6 months    ki1000304-ZnMort            INDIA                          1_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1000304-ZnMort            INDIA                          1_0-6 months    Zinc                 Control                  0.7500000          0.2330788          2.4133472
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          0_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          0_0-6 months    Other                Control                  0.9291283          0.7355651          1.1736274
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months    Other                Control                  0.8522727          0.2749403          2.6419149
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_0-6 months    Other                Control                  0.9110985          0.6723648          1.2345983
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_0-6 months    Other                Control                  1.0714286          0.5559113          2.0650043
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     0_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     0_0-6 months    Other                Control                  0.8907154          0.5339614          1.4858263
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months    Other                Control                  0.8366013          0.3564104          1.9637522
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_0-6 months    Other                Control                  0.9289249          0.5982447          1.4423887
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_0-6 months    Zinc                 Control                  0.9559188          0.6578946          1.3889471
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months    Other                Control            8272789.8998470    1149741.8034888   59525584.3697550
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months    Zinc                 Control           39295752.0242731   18744950.0205836   82377180.2782905
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_0-6 months    Other                Control                  0.8428571          0.5197784          1.3667520
0-6 months    ki1119695-PROBIT            BELARUS                        0_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1119695-PROBIT            BELARUS                        0_0-6 months    Maternal             Control                  0.9072066          0.5957403          1.3815143
0-6 months    ki1119695-PROBIT            BELARUS                        1_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1119695-PROBIT            BELARUS                        1_0-6 months    Maternal             Control                  0.8471744          0.4556778          1.5750262
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_0-6 months    VitA                 Control                  1.0144446          0.8858741          1.1616752
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months    VitA                 Control                  1.1672278          0.9537208          1.4285322
0-6 months    ki1135781-COHORTS           GUATEMALA                      0_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1135781-COHORTS           GUATEMALA                      0_0-6 months    Other                Control                  0.9758065          0.6486556          1.4679565
0-6 months    ki1135781-COHORTS           GUATEMALA                      1_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1135781-COHORTS           GUATEMALA                      1_0-6 months    Other                Control                  0.5235043          0.2356998          1.1627365
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_0-6 months    LNS                  Control                  0.8871476          0.7026483          1.1200922
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_0-6 months    LNS                  Control                  1.1428571          0.2534591          5.1531888
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_0-6 months    Maternal             Control                  0.8761905          0.3214550          2.3882342
0-6 months    ki1148112-LCNI-5            MALAWI                         0_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    ki1148112-LCNI-5            MALAWI                         0_0-6 months    LNS                  Control                  0.8608696          0.5817729          1.2738586
0-6 months    ki1148112-LCNI-5            MALAWI                         0_0-6 months    Other                Control                  1.1137500          0.7300735          1.6990606
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_0-6 months    Maternal             Control                  0.8490970          0.7836591          0.9199991
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months    Maternal             Control                  0.8725108          0.7045581          1.0805002
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_0-6 months    LNS                  Control                  1.1266693          0.9296121          1.3654984
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_0-6 months    Other                Control                  1.1935777          0.9930761          1.4345605
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_0-6 months    Control              Control                  1.0000000          1.0000000          1.0000000
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_0-6 months    LNS                  Control                  1.1718750          0.6781599          2.0250254
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_0-6 months    Other                Control                  1.0531915          0.6502575          1.7058047
6-24 months   iLiNS_DYADM_LNS             MALAWI                         0_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   iLiNS_DYADM_LNS             MALAWI                         0_6-24 months   LNS                  Control                  1.1753015          0.8813806          1.5672386
6-24 months   iLiNS_DYADM_LNS             MALAWI                         1_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   iLiNS_DYADM_LNS             MALAWI                         1_6-24 months   LNS                  Control                  0.6666667          0.1345568          3.3030252
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   0_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   0_6-24 months   Zinc                 Control                  1.0381592          0.6978851          1.5443436
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   1_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   1_6-24 months   Zinc                 Control                  0.9430373          0.6369015          1.3963216
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_6-24 months   VitA                 Control                  1.3067184          0.9829461          1.7371380
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_6-24 months   LNS                  Control                  0.8327001          0.7403500          0.9365699
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_6-24 months   Other                Control                  1.0249027          0.9329105          1.1259659
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_6-24 months   LNS                  Control                  0.8435229          0.6713364          1.0598725
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_6-24 months   Other                Control                  0.9149080          0.7608943          1.1000959
6-24 months   ki1000111-WASH-Kenya        KENYA                          0_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1000111-WASH-Kenya        KENYA                          0_6-24 months   LNS                  Control                  0.8764795          0.7758086          0.9902137
6-24 months   ki1000111-WASH-Kenya        KENYA                          0_6-24 months   Other                Control                  1.0786490          0.9812216          1.1857501
6-24 months   ki1000111-WASH-Kenya        KENYA                          1_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1000111-WASH-Kenya        KENYA                          1_6-24 months   LNS                  Control                  0.7656250          0.4131025          1.4189740
6-24 months   ki1000111-WASH-Kenya        KENYA                          1_6-24 months   Other                Control                  1.1990741          0.8709855          1.6507491
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       0_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       0_6-24 months   Maternal             Control                  0.8782409          0.7852590          0.9822327
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       1_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       1_6-24 months   Maternal             Control                  0.9907773          0.8412324          1.1669067
6-24 months   ki1000304-EU                INDIA                          0_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1000304-EU                INDIA                          0_6-24 months   Zinc                 Control                  0.9152310          0.8179698          1.0240571
6-24 months   ki1000304-EU                INDIA                          1_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1000304-EU                INDIA                          1_6-24 months   Zinc                 Control                  0.9116022          0.7805440          1.0646660
6-24 months   ki1000304-VITAMIN-A         INDIA                          0_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1000304-VITAMIN-A         INDIA                          0_6-24 months   VitA                 Control                  0.9077110          0.8115701          1.0152410
6-24 months   ki1000304-VITAMIN-A         INDIA                          1_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1000304-VITAMIN-A         INDIA                          1_6-24 months   VitA                 Control                  1.2222222          0.9620541          1.5527476
6-24 months   ki1000304-Vitamin-B12       INDIA                          0_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1000304-Vitamin-B12       INDIA                          0_6-24 months   Other                Control                  0.8887331          0.7434435          1.0624163
6-24 months   ki1000304-Vitamin-B12       INDIA                          1_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1000304-Vitamin-B12       INDIA                          1_6-24 months   Other                Control                  1.1794872          0.7963649          1.7469254
6-24 months   ki1000304-ZnMort            INDIA                          0_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1000304-ZnMort            INDIA                          0_6-24 months   Zinc                 Control                  0.9541514          0.8583288          1.0606714
6-24 months   ki1000304-ZnMort            INDIA                          1_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1000304-ZnMort            INDIA                          1_6-24 months   Zinc                 Control                  1.0547058          0.9230572          1.2051304
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          0_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          0_6-24 months   Other                Control                  0.9887101          0.7309913          1.3372905
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          1_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          1_6-24 months   Other                Control                  0.6054054          0.3544438          1.0340589
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          0_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          0_6-24 months   Other                Control                  0.8325449          0.6636679          1.0443945
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          1_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          1_6-24 months   Other                Control                  0.8427419          0.5304403          1.3389141
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     0_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     0_6-24 months   Other                Control                  0.6115702          0.3030179          1.2343104
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     1_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     1_6-24 months   Other                Control                  0.9622642          0.2115073          4.3778738
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6-24 months   Other                Control                  0.8648649          0.6435645          1.1622630
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6-24 months   Zinc                 Control                  1.0188679          0.8012195          1.2956397
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6-24 months   Other                Control                  2.6052629          0.6136859         11.0600462
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6-24 months   Zinc                 Control                  1.6603772          0.3801908          7.2512337
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6-24 months   Zinc                 Control                  1.2419194          1.1087669          1.3910622
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6-24 months   Zinc                 Control                  1.1716804          1.0033125          1.3683024
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      0_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      0_6-24 months   Other                Control                  1.4562719          0.9238925          2.2954269
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   0_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   0_6-24 months   LNS                  Control                  0.8679726          0.6543275          1.1513752
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   1_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   1_6-24 months   LNS                  Control                  0.9103335          0.7309650          1.1337166
6-24 months   ki1119695-PROBIT            BELARUS                        0_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1119695-PROBIT            BELARUS                        0_6-24 months   Maternal             Control                  0.7956334          0.5203193          1.2166232
6-24 months   ki1119695-PROBIT            BELARUS                        1_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1119695-PROBIT            BELARUS                        1_6-24 months   Maternal             Control                  0.7324186          0.4679469          1.1463630
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_6-24 months   VitA                 Control                  0.9984565          0.8998299          1.1078933
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months   VitA                 Control                  1.1670064          0.9326461          1.4602580
6-24 months   ki1135781-COHORTS           GUATEMALA                      0_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1135781-COHORTS           GUATEMALA                      0_6-24 months   Other                Control                  0.8345056          0.7245985          0.9610835
6-24 months   ki1135781-COHORTS           GUATEMALA                      1_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1135781-COHORTS           GUATEMALA                      1_6-24 months   Other                Control                  0.3815789          0.1804888          0.8067120
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_6-24 months   LNS                  Control                  1.0359562          0.8737172          1.2283212
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_6-24 months   LNS                  Control                  0.9642857          0.4763244          1.9521298
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_6-24 months   Maternal             Control                  1.1508351          0.8949399          1.4798998
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_6-24 months   Maternal             Control                  1.2500000          0.4183027          3.7353337
6-24 months   ki1148112-LCNI-5            MALAWI                         0_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1148112-LCNI-5            MALAWI                         0_6-24 months   LNS                  Control                  1.1130137          0.9281215          1.3347384
6-24 months   ki1148112-LCNI-5            MALAWI                         0_6-24 months   Other                Control                  1.1363636          0.9257291          1.3949247
6-24 months   ki1148112-LCNI-5            MALAWI                         1_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   ki1148112-LCNI-5            MALAWI                         1_6-24 months   LNS                  Control                  0.4285714          0.1764025          1.0412178
6-24 months   ki1148112-LCNI-5            MALAWI                         1_6-24 months   Other                Control                  0.6666667          0.2905958          1.5294250
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_6-24 months   Maternal             Control                  1.0002781          0.8926569          1.1208743
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_6-24 months   Maternal             Control                  1.3011861          0.8916286          1.8988684
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_6-24 months   LNS                  Control                  0.8612762          0.7098626          1.0449865
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_6-24 months   Other                Control                  0.9586247          0.8076599          1.1378072
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_6-24 months   Control              Control                  1.0000000          1.0000000          1.0000000
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_6-24 months   LNS                  Control                  1.0035049          0.5628369          1.7891897
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_6-24 months   Other                Control                  0.8717949          0.5227668          1.4538534


### Parameter: PAR


agecat        studyid                     country                        intXenwast      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------------  -----------------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         0_0-6 months    Control              NA                -0.0173913   -0.1241069    0.0893243
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_0-6 months    Control              NA                -0.0433096   -0.1357189    0.0490996
0-6 months    ki1000111-WASH-Kenya        KENYA                          0_0-6 months    Control              NA                 0.0000000   -0.0870451    0.0870451
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_0-6 months    Control              NA                -0.0076720   -0.0625475    0.0472036
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_0-6 months    Control              NA                -0.0879630   -0.2310388    0.0551129
0-6 months    ki1000304-EU                INDIA                          0_0-6 months    Control              NA                -0.0454545   -0.4544413    0.3635322
0-6 months    ki1000304-VITAMIN-A         INDIA                          0_0-6 months    Control              NA                 0.0009781   -0.0526298    0.0545860
0-6 months    ki1000304-VITAMIN-A         INDIA                          1_0-6 months    Control              NA                 0.0607407   -0.0610326    0.1825141
0-6 months    ki1000304-ZnMort            INDIA                          0_0-6 months    Control              NA                 0.0112233   -0.0649170    0.0873636
0-6 months    ki1000304-ZnMort            INDIA                          1_0-6 months    Control              NA                -0.0625000   -0.3135457    0.1885457
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          0_0-6 months    Control              NA                -0.0082754   -0.0356485    0.0190977
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months    Control              NA                -0.0333333   -0.2903898    0.2237231
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_0-6 months    Control              NA                -0.0265592   -0.1151062    0.0619878
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_0-6 months    Control              NA                 0.0213675   -0.1779696    0.2207047
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     0_0-6 months    Control              NA                -0.0108404   -0.0600364    0.0383557
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months    Control              NA                -0.0233209   -0.1398921    0.0932503
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_0-6 months    Control              NA                -0.0029030   -0.0219643    0.0161584
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months    Control              NA                 0.0708661    0.0260617    0.1156706
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_0-6 months    Control              NA                -0.0188007   -0.0718796    0.0342781
0-6 months    ki1119695-PROBIT            BELARUS                        0_0-6 months    Control              NA                -0.0035872   -0.0193109    0.0121365
0-6 months    ki1119695-PROBIT            BELARUS                        1_0-6 months    Control              NA                -0.0035028   -0.0170150    0.0100094
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_0-6 months    Control              NA                 0.0014530   -0.0122281    0.0151342
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months    Control              NA                 0.0308788   -0.0079228    0.0696804
0-6 months    ki1135781-COHORTS           GUATEMALA                      0_0-6 months    Control              NA                -0.0039526   -0.0698886    0.0619835
0-6 months    ki1135781-COHORTS           GUATEMALA                      1_0-6 months    Control              NA                -0.0897384   -0.1968371    0.0173602
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_0-6 months    Control              NA                -0.0301594   -0.0912576    0.0309388
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_0-6 months    Control              NA                 0.0625000   -0.6062076    0.7312076
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_0-6 months    Control              NA                -0.0173913   -0.1517025    0.1169199
0-6 months    ki1148112-LCNI-5            MALAWI                         0_0-6 months    Control              NA                -0.0168476   -0.1183305    0.0846354
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_0-6 months    Control              NA                -0.0135620   -0.0203700   -0.0067541
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months    Control              NA                -0.0141025   -0.0363129    0.0081079
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_0-6 months    Control              NA                 0.0224590   -0.0010925    0.0460105
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_0-6 months    Control              NA                 0.0153757   -0.0613458    0.0920972
6-24 months   iLiNS_DYADM_LNS             MALAWI                         0_6-24 months   Control              NA                 0.0220736   -0.0172794    0.0614266
6-24 months   iLiNS_DYADM_LNS             MALAWI                         1_6-24 months   Control              NA                -0.0500000   -0.2447027    0.1447027
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   0_6-24 months   Control              NA                 0.0078471   -0.0758945    0.0915887
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   1_6-24 months   Control              NA                -0.0247847   -0.1912844    0.1417150
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_6-24 months   Control              NA                 0.0391207   -0.0021026    0.0803440
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_6-24 months   Control              NA                -0.0109087   -0.0358345    0.0140170
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_6-24 months   Control              NA                -0.0567775   -0.1461759    0.0326209
6-24 months   ki1000111-WASH-Kenya        KENYA                          0_6-24 months   Control              NA                 0.0017240   -0.0127986    0.0162466
6-24 months   ki1000111-WASH-Kenya        KENYA                          1_6-24 months   Control              NA                 0.0357143   -0.0822047    0.1536333
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       0_6-24 months   Control              NA                -0.0355745   -0.0662120   -0.0049370
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       1_6-24 months   Control              NA                -0.0032895   -0.0613879    0.0548089
6-24 months   ki1000304-EU                INDIA                          0_6-24 months   Control              NA                -0.0185128   -0.0419478    0.0049222
6-24 months   ki1000304-EU                INDIA                          1_6-24 months   Control              NA                -0.0290645   -0.0776702    0.0195412
6-24 months   ki1000304-VITAMIN-A         INDIA                          0_6-24 months   Control              NA                -0.0164194   -0.0353818    0.0025431
6-24 months   ki1000304-VITAMIN-A         INDIA                          1_6-24 months   Control              NA                 0.0413019   -0.0075983    0.0902021
6-24 months   ki1000304-Vitamin-B12       INDIA                          0_6-24 months   Control              NA                -0.0409198   -0.1045542    0.0227146
6-24 months   ki1000304-Vitamin-B12       INDIA                          1_6-24 months   Control              NA                 0.0823529   -0.1036775    0.2683833
6-24 months   ki1000304-ZnMort            INDIA                          0_6-24 months   Control              NA                -0.0112761   -0.0366985    0.0141462
6-24 months   ki1000304-ZnMort            INDIA                          1_6-24 months   Control              NA                 0.0188479   -0.0282898    0.0659856
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          0_6-24 months   Control              NA                -0.0025622   -0.0706478    0.0655234
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          1_6-24 months   Control              NA                -0.1495902   -0.3612931    0.0621128
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          0_6-24 months   Control              NA                -0.0880597   -0.2007934    0.0246740
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          1_6-24 months   Control              NA                -0.0844156   -0.3195760    0.1507448
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     0_6-24 months   Control              NA                -0.0420310   -0.1080323    0.0239703
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     1_6-24 months   Control              NA                -0.0033613   -0.1370546    0.1303319
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6-24 months   Control              NA                -0.0043346   -0.0359916    0.0273223
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6-24 months   Control              NA                 0.0772325   -0.0397620    0.1942270
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6-24 months   Control              NA                 0.0501210    0.0257991    0.0744428
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6-24 months   Control              NA                 0.0722647    0.0054026    0.1391269
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      0_6-24 months   Control              NA                 0.0536617   -0.0109431    0.1182665
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   0_6-24 months   Control              NA                -0.0324270   -0.0956152    0.0307611
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   1_6-24 months   Control              NA                -0.0407271   -0.1352615    0.0538074
6-24 months   ki1119695-PROBIT            BELARUS                        0_6-24 months   Control              NA                -0.0071381   -0.0207687    0.0064924
6-24 months   ki1119695-PROBIT            BELARUS                        1_6-24 months   Control              NA                -0.0097763   -0.0251446    0.0055919
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_6-24 months   Control              NA                -0.0002427   -0.0165898    0.0161044
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months   Control              NA                 0.0288385   -0.0114737    0.0691507
6-24 months   ki1135781-COHORTS           GUATEMALA                      0_6-24 months   Control              NA                -0.0630562   -0.1120827   -0.0140297
6-24 months   ki1135781-COHORTS           GUATEMALA                      1_6-24 months   Control              NA                -0.1834743   -0.3081011   -0.0588475
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_6-24 months   Control              NA                 0.0118802   -0.0447195    0.0684798
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_6-24 months   Control              NA                -0.0166667   -0.3420929    0.3087595
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_6-24 months   Control              NA                 0.0260683   -0.0194550    0.0715916
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_6-24 months   Control              NA                 0.0529412   -0.1936524    0.2995348
6-24 months   ki1148112-LCNI-5            MALAWI                         0_6-24 months   Control              NA                 0.0437430   -0.0206370    0.1081230
6-24 months   ki1148112-LCNI-5            MALAWI                         1_6-24 months   Control              NA                -0.3571429   -0.6176110   -0.0966747
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_6-24 months   Control              NA                 0.0000254   -0.0103626    0.0104134
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_6-24 months   Control              NA                 0.0179656   -0.0074083    0.0433396
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_6-24 months   Control              NA                -0.0163181   -0.0487241    0.0160879
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_6-24 months   Control              NA                -0.0176058   -0.1166727    0.0814610


### Parameter: PAF


agecat        studyid                     country                        intXenwast      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------------  -----------------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         0_0-6 months    Control              NA                -0.0869565   -0.7737561    0.3339138
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_0-6 months    Control              NA                -0.4350649   -1.7192838    0.2426640
0-6 months    ki1000111-WASH-Kenya        KENYA                          0_0-6 months    Control              NA                 0.0000000   -2.1005692    0.6774786
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_0-6 months    Control              NA                -0.0342790   -0.3108915    0.1839653
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_0-6 months    Control              NA                -0.2753623   -0.8147041    0.1036836
0-6 months    ki1000304-EU                INDIA                          0_0-6 months    Control              NA                -0.1000000   -1.4973294    0.5154824
0-6 months    ki1000304-VITAMIN-A         INDIA                          0_0-6 months    Control              NA                 0.0030525   -0.1791087    0.1570715
0-6 months    ki1000304-VITAMIN-A         INDIA                          1_0-6 months    Control              NA                 0.1898148   -0.2928994    0.4923039
0-6 months    ki1000304-ZnMort            INDIA                          0_0-6 months    Control              NA                 0.0284900   -0.1853807    0.2037734
0-6 months    ki1000304-ZnMort            INDIA                          1_0-6 months    Control              NA                -0.1428571   -0.8957071    0.3110104
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          0_0-6 months    Control              NA                -0.0384172   -0.1743149    0.0817537
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months    Control              NA                -0.1000000   -1.1347616    0.4331920
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_0-6 months    Control              NA                -0.0706851   -0.3343648    0.1408896
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_0-6 months    Control              NA                 0.0520833   -0.5827437    0.4322858
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     0_0-6 months    Control              NA                -0.0870725   -0.5630838    0.2439774
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months    Control              NA                -0.1420455   -1.1244742    0.3860750
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_0-6 months    Control              NA                -0.0411513   -0.3495795    0.1967897
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months    Control              NA                 1.0000000    0.9999999    1.0000000
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_0-6 months    Control              NA                -0.0860495   -0.3578690    0.1313568
0-6 months    ki1119695-PROBIT            BELARUS                        0_0-6 months    Control              NA                -0.0516487   -0.2980921    0.1480072
0-6 months    ki1119695-PROBIT            BELARUS                        1_0-6 months    Control              NA                -0.0773119   -0.4081487    0.1757965
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_0-6 months    Control              NA                 0.0107447   -0.0957753    0.1069100
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months    Control              NA                 0.1096674   -0.0392658    0.2372576
0-6 months    ki1135781-COHORTS           GUATEMALA                      0_0-6 months    Control              NA                -0.0127841   -0.2501600    0.1795197
0-6 months    ki1135781-COHORTS           GUATEMALA                      1_0-6 months    Control              NA                -0.3185714   -0.7601078    0.0122022
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_0-6 months    Control              NA                -0.1050687   -0.3397745    0.0885206
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_0-6 months    Control              NA                 0.1111111   -2.3910081    0.7669945
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_0-6 months    Control              NA                -0.0869565   -1.0150523    0.4136755
0-6 months    ki1148112-LCNI-5            MALAWI                         0_0-6 months    Control              NA                -0.0465480   -0.3681092    0.1994333
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_0-6 months    Control              NA                -0.0836606   -0.1262277   -0.0427024
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months    Control              NA                -0.0672664   -0.1780481    0.0330975
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_0-6 months    Control              NA                 0.1111692   -0.0129942    0.2201138
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_0-6 months    Control              NA                 0.0647131   -0.3208433    0.3377249
6-24 months   iLiNS_DYADM_LNS             MALAWI                         0_6-24 months   Control              NA                 0.0779165   -0.0718713    0.2067724
6-24 months   iLiNS_DYADM_LNS             MALAWI                         1_6-24 months   Control              NA                -0.2000000   -1.2904063    0.3712906
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   0_6-24 months   Control              NA                 0.0279324   -0.3149529    0.2814075
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   1_6-24 months   Control              NA                -0.0444378   -0.3903119    0.2153917
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_6-24 months   Control              NA                 0.1358047   -0.0193812    0.2673658
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_6-24 months   Control              NA                -0.0302783   -0.1018398    0.0366355
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_6-24 months   Control              NA                -0.0925000   -0.2488129    0.0442473
6-24 months   ki1000111-WASH-Kenya        KENYA                          0_6-24 months   Control              NA                 0.0069257   -0.0531630    0.0635861
6-24 months   ki1000111-WASH-Kenya        KENYA                          1_6-24 months   Control              NA                 0.0588235   -0.1573558    0.2346233
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       0_6-24 months   Control              NA                -0.0674076   -0.1272471   -0.0107447
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       1_6-24 months   Control              NA                -0.0048077   -0.0934152    0.0766193
6-24 months   ki1000304-EU                INDIA                          0_6-24 months   Control              NA                -0.0432756   -0.0995528    0.0101212
6-24 months   ki1000304-EU                INDIA                          1_6-24 months   Control              NA                -0.0455840   -0.1248979    0.0281376
6-24 months   ki1000304-VITAMIN-A         INDIA                          0_6-24 months   Control              NA                -0.0482067   -0.1053904    0.0060188
6-24 months   ki1000304-VITAMIN-A         INDIA                          1_6-24 months   Control              NA                 0.1019956   -0.0274131    0.2151045
6-24 months   ki1000304-Vitamin-B12       INDIA                          0_6-24 months   Control              NA                -0.0913706   -0.2432956    0.0419898
6-24 months   ki1000304-Vitamin-B12       INDIA                          1_6-24 months   Control              NA                 0.1206897   -0.2010842    0.3562594
6-24 months   ki1000304-ZnMort            INDIA                          0_6-24 months   Control              NA                -0.0235902   -0.0781946    0.0282487
6-24 months   ki1000304-ZnMort            INDIA                          1_6-24 months   Control              NA                 0.0265516   -0.0422648    0.0908244
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          0_6-24 months   Control              NA                -0.0059191   -0.1766783    0.1400595
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          1_6-24 months   Control              NA                -0.3146552   -0.8358501    0.0585734
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          0_6-24 months   Control              NA                -0.1439024   -0.3458783    0.0277629
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          1_6-24 months   Control              NA                -0.1313131   -0.5683744    0.1839516
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     0_6-24 months   Control              NA                -0.3942218   -1.1579348    0.0992061
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     1_6-24 months   Control              NA                -0.0294118   -2.2067771    0.6695472
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6-24 months   Control              NA                -0.0236650   -0.2119344    0.1353573
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6-24 months   Control              NA                 0.4593301   -0.8856216    0.8449721
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6-24 months   Control              NA                 0.1674067    0.0821556    0.2447395
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6-24 months   Control              NA                 0.1244357    0.0010952    0.2325467
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      0_6-24 months   Control              NA                 0.1798660   -0.0664790    0.3693081
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   0_6-24 months   Control              NA                -0.1113423   -0.3678524    0.0970651
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   1_6-24 months   Control              NA                -0.0712075   -0.2565322    0.0867838
6-24 months   ki1119695-PROBIT            BELARUS                        0_6-24 months   Control              NA                -0.1226623   -0.3710072    0.0806973
6-24 months   ki1119695-PROBIT            BELARUS                        1_6-24 months   Control              NA                -0.1506767   -0.3998565    0.0541481
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_6-24 months   Control              NA                -0.0011609   -0.0824942    0.0740613
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months   Control              NA                 0.1085793   -0.0567397    0.2480354
6-24 months   ki1135781-COHORTS           GUATEMALA                      0_6-24 months   Control              NA                -0.0969372   -0.1759837   -0.0232040
6-24 months   ki1135781-COHORTS           GUATEMALA                      1_6-24 months   Control              NA                -0.3889655   -0.7203744   -0.1213985
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_6-24 months   Control              NA                 0.0291385   -0.1201037    0.1584957
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_6-24 months   Control              NA                -0.0256410   -0.6713854    0.3706182
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_6-24 months   Control              NA                 0.0907378   -0.0822592    0.2360816
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_6-24 months   Control              NA                 0.1500000   -0.9331786    0.6262632
6-24 months   ki1148112-LCNI-5            MALAWI                         0_6-24 months   Control              NA                 0.0835200   -0.0481886    0.1986789
6-24 months   ki1148112-LCNI-5            MALAWI                         1_6-24 months   Control              NA                -0.5555555   -1.3326511   -0.0373403
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_6-24 months   Control              NA                 0.0001436   -0.0603981    0.0572287
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_6-24 months   Control              NA                 0.1325432   -0.0773236    0.3015272
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_6-24 months   Control              NA                -0.0598431   -0.1857328    0.0526809
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_6-24 months   Control              NA                -0.0654105   -0.5052330    0.2458977
