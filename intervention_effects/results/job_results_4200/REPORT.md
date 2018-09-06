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
* intXenstunt

## Data Summary

agecat        studyid                     country                        intXenstunt      ever_stunted   n_cell       n
------------  --------------------------  -----------------------------  --------------  -------------  -------  ------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         0_0-6 months                0       31      33
0-6 months    iLiNS_DYADM_LNS             MALAWI                         0_0-6 months                1        2      33
0-6 months    iLiNS_DYADM_LNS             MALAWI                         1_0-6 months                0        2      10
0-6 months    iLiNS_DYADM_LNS             MALAWI                         1_0-6 months                1        8      10
0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         0_0-6 months                0        9       9
0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         0_0-6 months                1        0       9
0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         1_0-6 months                0        0       1
0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         1_0-6 months                1        1       1
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_0-6 months                0      209     209
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_0-6 months                1        0     209
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_0-6 months                0        0      23
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_0-6 months                1       23      23
0-6 months    ki1000111-WASH-Kenya        KENYA                          0_0-6 months                0       85      85
0-6 months    ki1000111-WASH-Kenya        KENYA                          0_0-6 months                1        0      85
0-6 months    ki1000111-WASH-Kenya        KENYA                          1_0-6 months                0        0       7
0-6 months    ki1000111-WASH-Kenya        KENYA                          1_0-6 months                1        7       7
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_0-6 months                0      167     205
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_0-6 months                1       38     205
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_0-6 months                0       48      87
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_0-6 months                1       39      87
0-6 months    ki1000304-EU                INDIA                          0_0-6 months                0        7       7
0-6 months    ki1000304-EU                INDIA                          0_0-6 months                1        0       7
0-6 months    ki1000304-EU                INDIA                          1_0-6 months                0        0       7
0-6 months    ki1000304-EU                INDIA                          1_0-6 months                1        7       7
0-6 months    ki1000304-VITAMIN-A         INDIA                          0_0-6 months                0      209     239
0-6 months    ki1000304-VITAMIN-A         INDIA                          0_0-6 months                1       30     239
0-6 months    ki1000304-VITAMIN-A         INDIA                          1_0-6 months                0       18      95
0-6 months    ki1000304-VITAMIN-A         INDIA                          1_0-6 months                1       77      95
0-6 months    ki1000304-Vitamin-B12       INDIA                          0_0-6 months                0        1       1
0-6 months    ki1000304-Vitamin-B12       INDIA                          0_0-6 months                1        0       1
0-6 months    ki1000304-ZnMort            INDIA                          0_0-6 months                0      109     109
0-6 months    ki1000304-ZnMort            INDIA                          0_0-6 months                1        0     109
0-6 months    ki1000304-ZnMort            INDIA                          1_0-6 months                0        0      72
0-6 months    ki1000304-ZnMort            INDIA                          1_0-6 months                1       72      72
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          0_0-6 months                0      494     581
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          0_0-6 months                1       87     581
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months                0       75     211
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months                1      136     211
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_0-6 months                0      257     257
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_0-6 months                1        0     257
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_0-6 months                0        0     159
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_0-6 months                1      159     159
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     0_0-6 months                0      522     578
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     0_0-6 months                1       56     578
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months                0       29      62
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months                1       33      62
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_0-6 months                0     1986    2085
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_0-6 months                1       99    2085
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months                0       89     149
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months                1       60     149
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   0_0-6 months                0       41      41
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   0_0-6 months                1        0      41
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_0-6 months                0        0       5
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_0-6 months                1        5       5
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_0-6 months                0      186     186
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_0-6 months                1        0     186
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      1_0-6 months                0        0      55
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      1_0-6 months                1       55      55
0-6 months    ki1119695-PROBIT            BELARUS                        0_0-6 months                0    15066   16049
0-6 months    ki1119695-PROBIT            BELARUS                        0_0-6 months                1      983   16049
0-6 months    ki1119695-PROBIT            BELARUS                        1_0-6 months                0       67     136
0-6 months    ki1119695-PROBIT            BELARUS                        1_0-6 months                1       69     136
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_0-6 months                0     6971    8153
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_0-6 months                1     1182    8153
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months                0      536     949
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months                1      413     949
0-6 months    ki1135781-COHORTS           GUATEMALA                      0_0-6 months                0      203     277
0-6 months    ki1135781-COHORTS           GUATEMALA                      0_0-6 months                1       74     277
0-6 months    ki1135781-COHORTS           GUATEMALA                      1_0-6 months                0        2      21
0-6 months    ki1135781-COHORTS           GUATEMALA                      1_0-6 months                1       19      21
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_0-6 months                0      849     849
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_0-6 months                1        0     849
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_0-6 months                0        0     348
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_0-6 months                1      348     348
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_0-6 months                0       51      54
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_0-6 months                1        3      54
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_0-6 months                0        3      16
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_0-6 months                1       13      16
0-6 months    ki1148112-LCNI-5            MALAWI                         0_0-6 months                0      175     175
0-6 months    ki1148112-LCNI-5            MALAWI                         0_0-6 months                1        0     175
0-6 months    ki1148112-LCNI-5            MALAWI                         1_0-6 months                0        0      97
0-6 months    ki1148112-LCNI-5            MALAWI                         1_0-6 months                1       97      97
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_0-6 months                0    24228   26792
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_0-6 months                1     2564   26792
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months                0     4580   11926
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months                1     7346   11926
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_0-6 months                0     5912    6512
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_0-6 months                1      600    6512
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_0-6 months                0      922    2624
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_0-6 months                1     1702    2624
6-24 months   iLiNS_DYADM_LNS             MALAWI                         0_6-24 months               0      354     489
6-24 months   iLiNS_DYADM_LNS             MALAWI                         0_6-24 months               1      135     489
6-24 months   iLiNS_DYADM_LNS             MALAWI                         1_6-24 months               0        0       5
6-24 months   iLiNS_DYADM_LNS             MALAWI                         1_6-24 months               1        5       5
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   0_6-24 months               0     1662    1905
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   0_6-24 months               1      243    1905
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   1_6-24 months               0        0     563
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   1_6-24 months               1      563     563
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_6-24 months               0      348     375
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_6-24 months               1       27     375
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         1_6-24 months               0        0     118
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         1_6-24 months               1      118     118
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_6-24 months               0     2959    3720
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_6-24 months               1      761    3720
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_6-24 months               0        2    1063
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_6-24 months               1     1061    1063
6-24 months   ki1000111-WASH-Kenya        KENYA                          0_6-24 months               0     4934    5291
6-24 months   ki1000111-WASH-Kenya        KENYA                          0_6-24 months               1      357    5291
6-24 months   ki1000111-WASH-Kenya        KENYA                          1_6-24 months               0        1    1333
6-24 months   ki1000111-WASH-Kenya        KENYA                          1_6-24 months               1     1332    1333
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       0_6-24 months               0      603     913
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       0_6-24 months               1      310     913
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       1_6-24 months               0        2     454
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       1_6-24 months               1      452     454
6-24 months   ki1000304-EU                INDIA                          0_6-24 months               0     1072    1128
6-24 months   ki1000304-EU                INDIA                          0_6-24 months               1       56    1128
6-24 months   ki1000304-EU                INDIA                          1_6-24 months               0        0     880
6-24 months   ki1000304-EU                INDIA                          1_6-24 months               1      880     880
6-24 months   ki1000304-VITAMIN-A         INDIA                          0_6-24 months               0     1813    2445
6-24 months   ki1000304-VITAMIN-A         INDIA                          0_6-24 months               1      632    2445
6-24 months   ki1000304-VITAMIN-A         INDIA                          1_6-24 months               0        0     344
6-24 months   ki1000304-VITAMIN-A         INDIA                          1_6-24 months               1      344     344
6-24 months   ki1000304-Vitamin-B12       INDIA                          0_6-24 months               0      424     474
6-24 months   ki1000304-Vitamin-B12       INDIA                          0_6-24 months               1       50     474
6-24 months   ki1000304-Vitamin-B12       INDIA                          1_6-24 months               0        0     330
6-24 months   ki1000304-Vitamin-B12       INDIA                          1_6-24 months               1      330     330
6-24 months   ki1000304-ZnMort            INDIA                          0_6-24 months               0      886     886
6-24 months   ki1000304-ZnMort            INDIA                          0_6-24 months               1        0     886
6-24 months   ki1000304-ZnMort            INDIA                          1_6-24 months               0        0     969
6-24 months   ki1000304-ZnMort            INDIA                          1_6-24 months               1      969     969
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          0_6-24 months               0      353     627
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          0_6-24 months               1      274     627
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          0_6-24 months               0       93     241
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          0_6-24 months               1      148     241
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          1_6-24 months               0        0       2
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          1_6-24 months               1        2       2
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     0_6-24 months               0      305     342
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     0_6-24 months               1       37     342
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6-24 months               0     1474    1804
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6-24 months               1      330    1804
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6-24 months               0        2       2
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6-24 months               1        0       2
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6-24 months               0     4725    5243
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6-24 months               1      518    5243
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6-24 months               0        0    1914
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6-24 months               1     1914    1914
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      0_6-24 months               0      128     178
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      0_6-24 months               1       50     178
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      1_6-24 months               0        0       4
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      1_6-24 months               1        4       4
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   0_6-24 months               0     2160    2533
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   0_6-24 months               1      373    2533
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   1_6-24 months               0        0     732
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   1_6-24 months               1      732     732
6-24 months   ki1119695-PROBIT            BELARUS                        0_6-24 months               0    13362   14205
6-24 months   ki1119695-PROBIT            BELARUS                        0_6-24 months               1      843   14205
6-24 months   ki1119695-PROBIT            BELARUS                        1_6-24 months               0        0       2
6-24 months   ki1119695-PROBIT            BELARUS                        1_6-24 months               1        2       2
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_6-24 months               0     6554    8366
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_6-24 months               1     1812    8366
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months               0       28      42
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months               1       14      42
6-24 months   ki1135781-COHORTS           GUATEMALA                      0_6-24 months               0      179     298
6-24 months   ki1135781-COHORTS           GUATEMALA                      0_6-24 months               1      119     298
6-24 months   ki1135781-COHORTS           GUATEMALA                      1_6-24 months               0        0     183
6-24 months   ki1135781-COHORTS           GUATEMALA                      1_6-24 months               1      183     183
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_6-24 months               0      867    1236
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_6-24 months               1      369    1236
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_6-24 months               0        0     236
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_6-24 months               1      236     236
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_6-24 months               0      538     747
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_6-24 months               1      209     747
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_6-24 months               0        0      14
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_6-24 months               1       14      14
6-24 months   ki1148112-LCNI-5            MALAWI                         0_6-24 months               0      346     518
6-24 months   ki1148112-LCNI-5            MALAWI                         0_6-24 months               1      172     518
6-24 months   ki1148112-LCNI-5            MALAWI                         1_6-24 months               0        0     212
6-24 months   ki1148112-LCNI-5            MALAWI                         1_6-24 months               1      212     212
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_6-24 months               0    14706   17758
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_6-24 months               1     3052   17758
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_6-24 months               0        4      33
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_6-24 months               1       29      33
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_6-24 months               0     4708    6385
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_6-24 months               1     1677    6385
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_6-24 months               0        0      90
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_6-24 months               1       90      90


The following strata were considered:

* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXenstunt: 1_0-6 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenstunt: 0_6-24 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO, intXenstunt: 0_6-24 months
* agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenstunt: 0_6-24 months
* agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXenstunt: 0_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenstunt: 0_6-24 months
* agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenstunt: 0_6-24 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA, intXenstunt: 0_6-24 months
* agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXenstunt: 0_6-24 months
* agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXenstunt: 0_6-24 months
* agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA, intXenstunt: 0_6-24 months
* agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXenstunt: 0_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXenstunt: 0_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXenstunt: 0_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXenstunt: 0_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXenstunt: 0_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXenstunt: 0_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO, intXenstunt: 0_6-24 months
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXenstunt: 0_6-24 months
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenstunt: 0_6-24 months
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenstunt: 0_6-24 months
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXenstunt: 0_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXenstunt: 0_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXenstunt: 0_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenstunt: 0_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXenstunt: 0_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXenstunt: 1_6-24 months

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXenstunt: 1_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXenstunt: 0_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXenstunt: 1_0-6 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA, intXenstunt: 0_6-24 months
* agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenstunt: 1_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXenstunt: 1_6-24 months

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
![](/tmp/a500f999-2dde-4dd5-9a02-c81b7d4f8494/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a500f999-2dde-4dd5-9a02-c81b7d4f8494/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a500f999-2dde-4dd5-9a02-c81b7d4f8494/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a500f999-2dde-4dd5-9a02-c81b7d4f8494/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                     country                        intXenstunt     intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------------  -----------------------------  --------------  -------------------  ---------------  ----------  -----------  ----------
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_0-6 months    Control              NA                0.1844660    0.1093780   0.2595540
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_0-6 months    Maternal             NA                0.1862745    0.1105345   0.2620145
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_0-6 months    Control              NA                0.5833333    0.4213538   0.7453128
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_0-6 months    Maternal             NA                0.3529412    0.2210255   0.4848569
0-6 months    ki1000304-VITAMIN-A         INDIA                          0_0-6 months    Control              NA                0.1395349    0.0796149   0.1994549
0-6 months    ki1000304-VITAMIN-A         INDIA                          0_0-6 months    VitA                 NA                0.1090909    0.0507097   0.1674721
0-6 months    ki1000304-VITAMIN-A         INDIA                          1_0-6 months    Control              NA                0.8333333    0.7200268   0.9466399
0-6 months    ki1000304-VITAMIN-A         INDIA                          1_0-6 months    VitA                 NA                0.7924528    0.6826905   0.9022151
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          0_0-6 months    Control              NA                0.1678832    0.1195413   0.2162251
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          0_0-6 months    Other                NA                0.1335505    0.1087871   0.1583139
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months    Control              NA                0.6129032    0.5265160   0.6992905
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months    Other                NA                0.6694915    0.6046052   0.7343779
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     0_0-6 months    Control              NA                0.1006711    0.0523160   0.1490263
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     0_0-6 months    Other                NA                0.0955711    0.0677262   0.1234160
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months    Control              NA                0.5294118    0.2902059   0.7686177
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months    Other                NA                0.5333333    0.3863813   0.6802853
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_0-6 months    Control              NA                0.0456274    0.0277900   0.0634648
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_0-6 months    Other                NA                0.0444015    0.0266587   0.0621444
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_0-6 months    Zinc                 NA                0.0499520    0.0367154   0.0631886
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months    Control              NA                0.5161290    0.3396174   0.6926407
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months    Other                NA                0.3513514    0.1970090   0.5056937
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months    Zinc                 NA                0.3827160    0.2765101   0.4889220
0-6 months    ki1119695-PROBIT            BELARUS                        0_0-6 months    Control              NA                0.0643079    0.0454391   0.0831766
0-6 months    ki1119695-PROBIT            BELARUS                        0_0-6 months    Maternal             NA                0.0583986    0.0441719   0.0726252
0-6 months    ki1119695-PROBIT            BELARUS                        1_0-6 months    Control              NA                0.5555556    0.3547608   0.7563503
0-6 months    ki1119695-PROBIT            BELARUS                        1_0-6 months    Maternal             NA                0.4657534    0.2721626   0.6593442
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_0-6 months    Control              NA                0.1399217    0.1248818   0.1549617
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_0-6 months    VitA                 NA                0.1466688    0.1377969   0.1555408
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months    Control              NA                0.4214876    0.3592407   0.4837346
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months    VitA                 NA                0.4398868    0.4032789   0.4764948
0-6 months    ki1135781-COHORTS           GUATEMALA                      0_0-6 months    Control              NA                0.3106061    0.2315227   0.3896894
0-6 months    ki1135781-COHORTS           GUATEMALA                      0_0-6 months    Other                NA                0.2275862    0.1592191   0.2959533
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_0-6 months    Control              NA                0.1049145    0.0962204   0.1136086
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_0-6 months    Maternal             NA                0.0870384    0.0801186   0.0939582
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months    Control              NA                0.6365391    0.6173907   0.6556875
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months    Maternal             NA                0.5935529    0.5712165   0.6158893
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_0-6 months    Control              NA                0.0745921    0.0554971   0.0936871
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_0-6 months    LNS                  NA                0.0919410    0.0686281   0.1152539
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_0-6 months    Other                NA                0.1021753    0.0832168   0.1211339
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_0-6 months    Control              NA                0.6532508    0.5864711   0.7200305
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_0-6 months    LNS                  NA                0.6348774    0.5780090   0.6917457
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_0-6 months    Other                NA                0.6543408    0.6108744   0.6978073
6-24 months   iLiNS_DYADM_LNS             MALAWI                         0_6-24 months   Control              NA                0.2627451    0.2085589   0.3169313
6-24 months   iLiNS_DYADM_LNS             MALAWI                         0_6-24 months   LNS                  NA                0.2905983    0.2322959   0.3489006
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   0_6-24 months   Control              NA                0.1286920    0.0770153   0.1803687
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   0_6-24 months   Zinc                 NA                0.1271838    0.0963175   0.1580500
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_6-24 months   Control              NA                0.0673575    0.0319496   0.1027654
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_6-24 months   VitA                 NA                0.0769231    0.0381581   0.1156881
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_6-24 months   Control              NA                0.2142064    0.1874139   0.2409990
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_6-24 months   LNS                  NA                0.1626694    0.1393081   0.1860308
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_6-24 months   Other                NA                0.2215054    0.2026311   0.2403796
6-24 months   ki1000111-WASH-Kenya        KENYA                          0_6-24 months   Control              NA                0.0633958    0.0521813   0.0746103
6-24 months   ki1000111-WASH-Kenya        KENYA                          0_6-24 months   LNS                  NA                0.0556478    0.0426979   0.0685978
6-24 months   ki1000111-WASH-Kenya        KENYA                          0_6-24 months   Other                NA                0.0769908    0.0660307   0.0879508
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       0_6-24 months   Control              NA                0.3860045    0.3406456   0.4313635
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       0_6-24 months   Maternal             NA                0.2957447    0.2544627   0.3370267
6-24 months   ki1000304-EU                INDIA                          0_6-24 months   Control              NA                0.0471014    0.0294203   0.0647826
6-24 months   ki1000304-EU                INDIA                          0_6-24 months   Zinc                 NA                0.0520833    0.0339297   0.0702370
6-24 months   ki1000304-VITAMIN-A         INDIA                          0_6-24 months   Control              NA                0.2669943    0.2421753   0.2918132
6-24 months   ki1000304-VITAMIN-A         INDIA                          0_6-24 months   VitA                 NA                0.2500000    0.2257369   0.2742631
6-24 months   ki1000304-Vitamin-B12       INDIA                          0_6-24 months   Control              NA                0.0917431    0.0374950   0.1459912
6-24 months   ki1000304-Vitamin-B12       INDIA                          0_6-24 months   Other                NA                0.1095890    0.0775087   0.1416694
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          0_6-24 months   Control              NA                0.4508475    0.3735530   0.5281419
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          0_6-24 months   Other                NA                0.4246988    0.3372473   0.5121503
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          0_6-24 months   Control              NA                0.7000000    0.5838056   0.8161944
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          0_6-24 months   Other                NA                0.5856354    0.5137208   0.6575499
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     0_6-24 months   Control              NA                0.1428571    0.0708558   0.2148585
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     0_6-24 months   Other                NA                0.0956175    0.0591848   0.1320503
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6-24 months   Control              NA                0.1828194    0.1472554   0.2183834
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6-24 months   Other                NA                0.1677852    0.1331348   0.2024357
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6-24 months   Zinc                 NA                0.1904762    0.1648573   0.2160950
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6-24 months   Control              NA                0.0914827    0.0731580   0.1098073
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6-24 months   Zinc                 NA                0.1004194    0.0914267   0.1094121
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      0_6-24 months   Control              NA                0.2282609    0.1422549   0.3142668
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      0_6-24 months   Other                NA                0.3372093    0.2370110   0.4374076
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   0_6-24 months   Control              NA                0.2070064    0.1602710   0.2537418
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   0_6-24 months   LNS                  NA                0.1275591    0.1017714   0.1533467
6-24 months   ki1119695-PROBIT            BELARUS                        0_6-24 months   Control              NA                0.0671221    0.0478690   0.0863751
6-24 months   ki1119695-PROBIT            BELARUS                        0_6-24 months   Maternal             NA                0.0523357    0.0402949   0.0643765
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_6-24 months   Control              NA                0.2127255    0.1952465   0.2302046
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_6-24 months   VitA                 NA                0.2178914    0.2076646   0.2281182
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months   Control              NA                0.2307692   -0.0010377   0.4625762
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months   VitA                 NA                0.3793103    0.2005725   0.5580481
6-24 months   ki1135781-COHORTS           GUATEMALA                      0_6-24 months   Control              NA                0.4724409    0.3854677   0.5594141
6-24 months   ki1135781-COHORTS           GUATEMALA                      0_6-24 months   Other                NA                0.3450292    0.2736587   0.4163998
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_6-24 months   Control              NA                0.2686567    0.2073532   0.3299602
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_6-24 months   LNS                  NA                0.3043478    0.2763042   0.3323915
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_6-24 months   Control              NA                0.2627451    0.2086164   0.3168737
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_6-24 months   Maternal             NA                0.2886179    0.2485153   0.3287205
6-24 months   ki1148112-LCNI-5            MALAWI                         0_6-24 months   Control              NA                0.3106061    0.2315893   0.3896229
6-24 months   ki1148112-LCNI-5            MALAWI                         0_6-24 months   LNS                  NA                0.3384030    0.2811625   0.3956436
6-24 months   ki1148112-LCNI-5            MALAWI                         0_6-24 months   Other                NA                0.3414634    0.2575798   0.4253470
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_6-24 months   Control              NA                0.1700174    0.1556842   0.1843507
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_6-24 months   Maternal             NA                0.1736043    0.1608729   0.1863357
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_6-24 months   Control              NA                0.2789076    0.2419896   0.3158256
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_6-24 months   LNS                  NA                0.2428820    0.2110889   0.2746752
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_6-24 months   Other                NA                0.2646959    0.2372374   0.2921544


### Parameter: E(Y)


agecat        studyid                     country                        intXenstunt     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------------  -----------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_0-6 months    NA                   NA                0.1853659   0.1320411   0.2386906
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_0-6 months    NA                   NA                0.4482759   0.3431686   0.5533831
0-6 months    ki1000304-VITAMIN-A         INDIA                          0_0-6 months    NA                   NA                0.1255230   0.0834314   0.1676146
0-6 months    ki1000304-VITAMIN-A         INDIA                          1_0-6 months    NA                   NA                0.8105263   0.7313050   0.8897477
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          0_0-6 months    NA                   NA                0.1497418   0.1204064   0.1790773
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months    NA                   NA                0.6445498   0.5879030   0.7011965
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     0_0-6 months    NA                   NA                0.0968858   0.0727500   0.1210216
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months    NA                   NA                0.5322581   0.4070456   0.6574705
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_0-6 months    NA                   NA                0.0474820   0.0383514   0.0566126
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months    NA                   NA                0.4026846   0.3236710   0.4816981
0-6 months    ki1119695-PROBIT            BELARUS                        0_0-6 months    NA                   NA                0.0612499   0.0493461   0.0731537
0-6 months    ki1119695-PROBIT            BELARUS                        1_0-6 months    NA                   NA                0.5073529   0.3671357   0.6475702
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_0-6 months    NA                   NA                0.1449773   0.1373345   0.1526202
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months    NA                   NA                0.4351949   0.4036351   0.4667548
0-6 months    ki1135781-COHORTS           GUATEMALA                      0_0-6 months    NA                   NA                0.2671480   0.2149472   0.3193489
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_0-6 months    NA                   NA                0.0957002   0.0901349   0.1012655
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months    NA                   NA                0.6159651   0.6012441   0.6306861
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_0-6 months    NA                   NA                0.0921376   0.0801323   0.1041429
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_0-6 months    NA                   NA                0.6486280   0.6177594   0.6794967
6-24 months   iLiNS_DYADM_LNS             MALAWI                         0_6-24 months   NA                   NA                0.2760736   0.2363437   0.3158036
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   0_6-24 months   NA                   NA                0.1275591   0.1008297   0.1542884
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_6-24 months   NA                   NA                0.0720000   0.0458029   0.0981971
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_6-24 months   NA                   NA                0.2045699   0.1916054   0.2175344
6-24 months   ki1000111-WASH-Kenya        KENYA                          0_6-24 months   NA                   NA                0.0674731   0.0607135   0.0742326
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       0_6-24 months   NA                   NA                0.3395400   0.3088060   0.3702740
6-24 months   ki1000304-EU                INDIA                          0_6-24 months   NA                   NA                0.0496454   0.0369640   0.0623268
6-24 months   ki1000304-VITAMIN-A         INDIA                          0_6-24 months   NA                   NA                0.2584867   0.2411297   0.2758438
6-24 months   ki1000304-Vitamin-B12       INDIA                          0_6-24 months   NA                   NA                0.1054852   0.0778026   0.1331678
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          0_6-24 months   NA                   NA                0.4370016   0.3770013   0.4970019
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          0_6-24 months   NA                   NA                0.6141079   0.5525196   0.6756961
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     0_6-24 months   NA                   NA                0.1081871   0.0752189   0.1411554
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6-24 months   NA                   NA                0.1829268   0.1650817   0.2007719
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6-24 months   NA                   NA                0.0987984   0.0907207   0.1068761
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      0_6-24 months   NA                   NA                0.2808989   0.2146877   0.3471101
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   0_6-24 months   NA                   NA                0.1472562   0.1218922   0.1726202
6-24 months   ki1119695-PROBIT            BELARUS                        0_6-24 months   NA                   NA                0.0593453   0.0475288   0.0711618
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_6-24 months   NA                   NA                0.2165910   0.2077636   0.2254183
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months   NA                   NA                0.3333333   0.1890388   0.4776279
6-24 months   ki1135781-COHORTS           GUATEMALA                      0_6-24 months   NA                   NA                0.3993289   0.3436291   0.4550287
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_6-24 months   NA                   NA                0.2985437   0.2730214   0.3240659
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_6-24 months   NA                   NA                0.2797858   0.2475387   0.3120330
6-24 months   ki1148112-LCNI-5            MALAWI                         0_6-24 months   NA                   NA                0.3320463   0.2914511   0.3726416
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_6-24 months   NA                   NA                0.1718662   0.1623121   0.1814203
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_6-24 months   NA                   NA                0.2626468   0.2444010   0.2808926


### Parameter: RR


agecat        studyid                     country                        intXenstunt     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------------  -----------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_0-6 months    Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_0-6 months    Maternal             Control           1.0098039   0.5680256   1.7951724
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_0-6 months    Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_0-6 months    Maternal             Control           0.6050420   0.3798121   0.9638340
0-6 months    ki1000304-VITAMIN-A         INDIA                          0_0-6 months    Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304-VITAMIN-A         INDIA                          0_0-6 months    VitA                 Control           0.7818182   0.3936531   1.5527368
0-6 months    ki1000304-VITAMIN-A         INDIA                          1_0-6 months    Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304-VITAMIN-A         INDIA                          1_0-6 months    VitA                 Control           0.9509434   0.7831791   1.1546444
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          0_0-6 months    Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          0_0-6 months    Other                Control           0.7954964   0.5644536   1.1211099
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months    Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months    Other                Control           1.0923283   0.9203708   1.2964134
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     0_0-6 months    Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     0_0-6 months    Other                Control           0.9493395   0.5413048   1.6649504
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months    Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months    Other                Control           1.0074074   0.5934282   1.7101811
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_0-6 months    Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_0-6 months    Other                Control           0.9731339   0.5564038   1.7019823
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_0-6 months    Zinc                 Control           1.0947806   0.6826819   1.7556414
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months    Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months    Other                Control           0.6807432   0.3901278   1.1878449
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months    Zinc                 Control           0.7415123   0.4773616   1.1518323
0-6 months    ki1119695-PROBIT            BELARUS                        0_0-6 months    Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT            BELARUS                        0_0-6 months    Maternal             Control           0.9081093   0.6207356   1.3285245
0-6 months    ki1119695-PROBIT            BELARUS                        1_0-6 months    Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT            BELARUS                        1_0-6 months    Maternal             Control           0.8383562   0.4832867   1.4542942
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_0-6 months    Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_0-6 months    VitA                 Control           1.0482207   0.9265887   1.1858192
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months    Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months    VitA                 Control           1.0436531   0.8809179   1.2364509
0-6 months    ki1135781-COHORTS           GUATEMALA                      0_0-6 months    Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS           GUATEMALA                      0_0-6 months    Other                Control           0.7327166   0.4942164   1.0863127
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_0-6 months    Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_0-6 months    Maternal             Control           0.8296125   0.7396051   0.9305735
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months    Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months    Maternal             Control           0.9324689   0.8886056   0.9784974
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_0-6 months    Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_0-6 months    LNS                  Control           1.2325837   0.8596745   1.7672533
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_0-6 months    Other                Control           1.3697882   0.9984943   1.8791492
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_0-6 months    Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_0-6 months    LNS                  Control           0.9718739   0.8483765   1.1133488
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_0-6 months    Other                Control           1.0016687   0.8866944   1.1315512
6-24 months   iLiNS_DYADM_LNS             MALAWI                         0_6-24 months   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   iLiNS_DYADM_LNS             MALAWI                         0_6-24 months   LNS                  Control           1.1060084   0.8294744   1.4747346
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   0_6-24 months   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   0_6-24 months   Zinc                 Control           0.9882806   0.6204542   1.5741669
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_6-24 months   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_6-24 months   VitA                 Control           1.1420118   0.5513317   2.3655289
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_6-24 months   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_6-24 months   LNS                  Control           0.7594050   0.6277177   0.9187187
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_6-24 months   Other                Control           1.0340743   0.8888401   1.2030394
6-24 months   ki1000111-WASH-Kenya        KENYA                          0_6-24 months   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1000111-WASH-Kenya        KENYA                          0_6-24 months   LNS                  Control           0.8777842   0.6552963   1.1758118
6-24 months   ki1000111-WASH-Kenya        KENYA                          0_6-24 months   Other                Control           1.2144456   0.9677568   1.5240173
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       0_6-24 months   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       0_6-24 months   Maternal             Control           0.7661690   0.6383838   0.9195328
6-24 months   ki1000304-EU                INDIA                          0_6-24 months   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304-EU                INDIA                          0_6-24 months   Zinc                 Control           1.1057692   0.6625164   1.8455778
6-24 months   ki1000304-VITAMIN-A         INDIA                          0_6-24 months   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304-VITAMIN-A         INDIA                          0_6-24 months   VitA                 Control           0.9363497   0.8186043   1.0710312
6-24 months   ki1000304-Vitamin-B12       INDIA                          0_6-24 months   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304-Vitamin-B12       INDIA                          0_6-24 months   Other                Control           1.1945205   0.6175142   2.3106823
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          0_6-24 months   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          0_6-24 months   Other                Control           0.9420011   0.7206101   1.2314093
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          0_6-24 months   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          0_6-24 months   Other                Control           0.8366219   0.6805463   1.0284918
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     0_6-24 months   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     0_6-24 months   Other                Control           0.6693227   0.3558248   1.2590267
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6-24 months   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6-24 months   Other                Control           0.9177650   0.6910631   1.2188360
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6-24 months   Zinc                 Control           1.0418818   0.8224468   1.3198637
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6-24 months   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6-24 months   Zinc                 Control           1.0976877   0.8814317   1.3670013
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      0_6-24 months   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      0_6-24 months   Other                Control           1.4772979   0.9142596   2.3870781
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   0_6-24 months   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   0_6-24 months   LNS                  Control           0.6162084   0.4540832   0.8362184
6-24 months   ki1119695-PROBIT            BELARUS                        0_6-24 months   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT            BELARUS                        0_6-24 months   Maternal             Control           0.7797093   0.5403546   1.1250882
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_6-24 months   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_6-24 months   VitA                 Control           1.0242840   0.9318032   1.1259435
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months   VitA                 Control           1.6436782   0.5419428   4.9851718
6-24 months   ki1135781-COHORTS           GUATEMALA                      0_6-24 months   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS           GUATEMALA                      0_6-24 months   Other                Control           0.7303119   0.5536665   0.9633154
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_6-24 months   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_6-24 months   LNS                  Control           1.1328502   0.8857235   1.4489281
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_6-24 months   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_6-24 months   Maternal             Control           1.0984711   0.8567830   1.4083364
6-24 months   ki1148112-LCNI-5            MALAWI                         0_6-24 months   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5            MALAWI                         0_6-24 months   LNS                  Control           1.0894927   0.8026914   1.4787680
6-24 months   ki1148112-LCNI-5            MALAWI                         0_6-24 months   Other                Control           1.0993456   0.7718763   1.5657441
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_6-24 months   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_6-24 months   Maternal             Control           1.0210970   0.9131898   1.1417550
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_6-24 months   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_6-24 months   LNS                  Control           0.8708333   0.7229288   1.0489977
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_6-24 months   Other                Control           0.9490451   0.8021375   1.1228580


### Parameter: PAR


agecat        studyid                     country                        intXenstunt     intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------------  -----------------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_0-6 months    Control              NA                 0.0008998   -0.0521664    0.0539661
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_0-6 months    Control              NA                -0.1350575   -0.2598421   -0.0102728
0-6 months    ki1000304-VITAMIN-A         INDIA                          0_0-6 months    Control              NA                -0.0140119   -0.0525641    0.0245403
0-6 months    ki1000304-VITAMIN-A         INDIA                          1_0-6 months    Control              NA                -0.0228070   -0.1109125    0.0652984
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          0_0-6 months    Control              NA                -0.0181414   -0.0505040    0.0142213
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months    Control              NA                 0.0316465   -0.0308536    0.0941467
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     0_0-6 months    Control              NA                -0.0037853   -0.0452008    0.0376301
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months    Control              NA                 0.0028463   -0.2009163    0.2066089
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_0-6 months    Control              NA                 0.0018546   -0.0136697    0.0173790
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months    Control              NA                -0.1134445   -0.2697618    0.0428729
0-6 months    ki1119695-PROBIT            BELARUS                        0_0-6 months    Control              NA                -0.0030579   -0.0152347    0.0091188
0-6 months    ki1119695-PROBIT            BELARUS                        1_0-6 months    Control              NA                -0.0482026   -0.1995478    0.1031426
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_0-6 months    Control              NA                 0.0050556   -0.0080285    0.0181397
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months    Control              NA                 0.0137073   -0.0400940    0.0675086
0-6 months    ki1135781-COHORTS           GUATEMALA                      0_0-6 months    Control              NA                -0.0434580   -0.0983984    0.0114824
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_0-6 months    Control              NA                -0.0092143   -0.0149954   -0.0034332
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months    Control              NA                -0.0205740   -0.0347972   -0.0063508
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_0-6 months    Control              NA                 0.0175455   -0.0002441    0.0353351
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_0-6 months    Control              NA                -0.0046227   -0.0613352    0.0520897
6-24 months   iLiNS_DYADM_LNS             MALAWI                         0_6-24 months   Control              NA                 0.0133285   -0.0247815    0.0514386
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   0_6-24 months   Control              NA                -0.0011329   -0.0459807    0.0437149
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_6-24 months   Control              NA                 0.0046425   -0.0208430    0.0301280
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_6-24 months   Control              NA                -0.0096365   -0.0328355    0.0135624
6-24 months   ki1000111-WASH-Kenya        KENYA                          0_6-24 months   Control              NA                 0.0040773   -0.0051542    0.0133087
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       0_6-24 months   Control              NA                -0.0464645   -0.0781730   -0.0147561
6-24 months   ki1000304-EU                INDIA                          0_6-24 months   Control              NA                 0.0025439   -0.0103971    0.0154850
6-24 months   ki1000304-VITAMIN-A         INDIA                          0_6-24 months   Control              NA                -0.0085076   -0.0258864    0.0088713
6-24 months   ki1000304-Vitamin-B12       INDIA                          0_6-24 months   Control              NA                 0.0137421   -0.0347936    0.0622778
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          0_6-24 months   Control              NA                -0.0138459   -0.0766176    0.0489259
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          0_6-24 months   Control              NA                -0.0858921   -0.1887108    0.0169266
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     0_6-24 months   Control              NA                -0.0346700   -0.0939343    0.0245943
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6-24 months   Control              NA                 0.0001074   -0.0306601    0.0308750
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6-24 months   Control              NA                 0.0073157   -0.0093943    0.0240258
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      0_6-24 months   Control              NA                 0.0526380   -0.0116627    0.1169387
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   0_6-24 months   Control              NA                -0.0597502   -0.1042019   -0.0152984
6-24 months   ki1119695-PROBIT            BELARUS                        0_6-24 months   Control              NA                -0.0077768   -0.0196929    0.0041394
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_6-24 months   Control              NA                 0.0038654   -0.0112878    0.0190187
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months   Control              NA                 0.1025641   -0.1006382    0.3057664
6-24 months   ki1135781-COHORTS           GUATEMALA                      0_6-24 months   Control              NA                -0.0731121   -0.1380686   -0.0081556
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_6-24 months   Control              NA                 0.0298870   -0.0265684    0.0863423
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_6-24 months   Control              NA                 0.0170407   -0.0273378    0.0614192
6-24 months   ki1148112-LCNI-5            MALAWI                         0_6-24 months   Control              NA                 0.0214403   -0.0471858    0.0900663
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_6-24 months   Control              NA                 0.0018488   -0.0080316    0.0117292
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_6-24 months   Control              NA                -0.0162608   -0.0472753    0.0147537


### Parameter: PAF


agecat        studyid                     country                        intXenstunt     intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------------  -----------------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_0-6 months    Control              NA                 0.0048544   -0.3268491    0.2536342
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_0-6 months    Control              NA                -0.3012821   -0.6238679   -0.0427788
0-6 months    ki1000304-VITAMIN-A         INDIA                          0_0-6 months    Control              NA                -0.1116279   -0.4633316    0.1555457
0-6 months    ki1000304-VITAMIN-A         INDIA                          1_0-6 months    Control              NA                -0.0281385   -0.1430955    0.0752577
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          0_0-6 months    Control              NA                -0.1211511   -0.3545498    0.0720313
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          1_0-6 months    Control              NA                 0.0490987   -0.0533253    0.1415631
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     0_0-6 months    Control              NA                -0.0390700   -0.5677423    0.3113240
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     1_0-6 months    Control              NA                 0.0053476   -0.4615911    0.3231120
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_0-6 months    Control              NA                 0.0390598   -0.3502870    0.3161409
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_0-6 months    Control              NA                -0.2817204   -0.7389752    0.0553015
0-6 months    ki1119695-PROBIT            BELARUS                        0_0-6 months    Control              NA                -0.0499254   -0.2664025    0.1295473
0-6 months    ki1119695-PROBIT            BELARUS                        1_0-6 months    Control              NA                -0.0950081   -0.4412324    0.1680435
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_0-6 months    Control              NA                 0.0348716   -0.0597182    0.1210183
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_0-6 months    Control              NA                 0.0314970   -0.1003774    0.1475670
0-6 months    ki1135781-COHORTS           GUATEMALA                      0_0-6 months    Control              NA                -0.1626740   -0.3871922    0.0255057
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_0-6 months    Control              NA                -0.0962828   -0.1576271   -0.0381893
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_0-6 months    Control              NA                -0.0334012   -0.0568679   -0.0104555
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_0-6 months    Control              NA                 0.1904274   -0.0225240    0.3590294
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_0-6 months    Control              NA                -0.0071269   -0.0984390    0.0765945
6-24 months   iLiNS_DYADM_LNS             MALAWI                         0_6-24 months   Control              NA                 0.0482789   -0.1002286    0.1767410
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   0_6-24 months   Control              NA                -0.0088816   -0.4295778    0.2880121
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_6-24 months   Control              NA                 0.0644790   -0.3647875    0.3587283
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_6-24 months   Control              NA                -0.0471064   -0.1668586    0.0603559
6-24 months   ki1000111-WASH-Kenya        KENYA                          0_6-24 months   Control              NA                 0.0604279   -0.0867181    0.1876498
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       0_6-24 months   Control              NA                -0.1368456   -0.2343253   -0.0470641
6-24 months   ki1000304-EU                INDIA                          0_6-24 months   Control              NA                 0.0512422   -0.2483643    0.2789434
6-24 months   ki1000304-VITAMIN-A         INDIA                          0_6-24 months   Control              NA                -0.0329129   -0.1023714    0.0321690
6-24 months   ki1000304-Vitamin-B12       INDIA                          0_6-24 months   Control              NA                 0.1302752   -0.4744706    0.4869879
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          0_6-24 months   Control              NA                -0.0316838   -0.1869179    0.1032477
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          0_6-24 months   Control              NA                -0.1398649   -0.3219951    0.0171734
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     0_6-24 months   Control              NA                -0.3204633   -0.9903855    0.1239771
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6-24 months   Control              NA                 0.0005874   -0.1825902    0.1553916
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6-24 months   Control              NA                 0.0740472   -0.1114137    0.2285603
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      0_6-24 months   Control              NA                 0.1873913   -0.0749470    0.3857066
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   0_6-24 months   Control              NA                -0.4057564   -0.7685279   -0.1173989
6-24 months   ki1119695-PROBIT            BELARUS                        0_6-24 months   Control              NA                -0.1310427   -0.3428242    0.0473381
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_6-24 months   Control              NA                 0.0178466   -0.0546662    0.0853739
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_6-24 months   Control              NA                 0.3076923   -0.6591867    0.7111296
6-24 months   ki1135781-COHORTS           GUATEMALA                      0_6-24 months   Control              NA                -0.1830874   -0.3587788   -0.0301131
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_6-24 months   Control              NA                 0.1001092   -0.1102742    0.2706275
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_6-24 months   Control              NA                 0.0609063   -0.1118454    0.2068169
6-24 months   ki1148112-LCNI-5            MALAWI                         0_6-24 months   Control              NA                 0.0645701   -0.1667033    0.2499986
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_6-24 months   Control              NA                 0.0107570   -0.0484939    0.0666596
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_6-24 months   Control              NA                -0.0619112   -0.1866094    0.0496827
