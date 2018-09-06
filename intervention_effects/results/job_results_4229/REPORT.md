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
* intXenwast

## Data Summary

agecat      studyid                     country                        intXenwast     sstunted   n_cell       n
----------  --------------------------  -----------------------------  ------------  ---------  -------  ------
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       0_Birth               0        7       7
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       0_Birth               1        0       7
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       1_Birth               0        4       4
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       1_Birth               1        0       4
Birth       ki1000304b-SAS-CompFeed     INDIA                          0_Birth               0      116     116
Birth       ki1000304b-SAS-CompFeed     INDIA                          0_Birth               1        0     116
Birth       ki1000304b-SAS-CompFeed     INDIA                          1_Birth               0        9       9
Birth       ki1000304b-SAS-CompFeed     INDIA                          1_Birth               1        0       9
Birth       ki1119695-PROBIT            BELARUS                        0_Birth               0    10936   10936
Birth       ki1119695-PROBIT            BELARUS                        0_Birth               1        0   10936
Birth       ki1119695-PROBIT            BELARUS                        1_Birth               0     2941    2941
Birth       ki1119695-PROBIT            BELARUS                        1_Birth               1        0    2941
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       0_Birth               0    10856   10856
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       0_Birth               1        0   10856
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth               0     2236    2236
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth               1        0    2236
Birth       ki1135781-COHORTS           GUATEMALA                      0_Birth               0      564     564
Birth       ki1135781-COHORTS           GUATEMALA                      0_Birth               1        0     564
Birth       ki1135781-COHORTS           GUATEMALA                      1_Birth               0      198     198
Birth       ki1135781-COHORTS           GUATEMALA                      1_Birth               1        0     198
Birth       kiGH5241-JiVitA-3           BANGLADESH                     0_Birth               0    28406   28406
Birth       kiGH5241-JiVitA-3           BANGLADESH                     0_Birth               1        0   28406
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth               0     3084    3084
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth               1        0    3084
Birth       kiGH5241-JiVitA-4           BANGLADESH                     0_Birth               0     1294    1294
Birth       kiGH5241-JiVitA-4           BANGLADESH                     0_Birth               1        0    1294
Birth       kiGH5241-JiVitA-4           BANGLADESH                     1_Birth               0       72      72
Birth       kiGH5241-JiVitA-4           BANGLADESH                     1_Birth               1        0      72
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months            0      612     640
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months            1       28     640
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months            0       22      23
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months            1        1      23
6 months    ki1000107-Serrinha-VitA     BRAZIL                         0_6 months            0       30      34
6 months    ki1000107-Serrinha-VitA     BRAZIL                         0_6 months            1        4      34
6 months    ki1000107-Serrinha-VitA     BRAZIL                         1_6 months            0        0       1
6 months    ki1000107-Serrinha-VitA     BRAZIL                         1_6 months            1        1       1
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_6 months            0      624     651
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_6 months            1       27     651
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months            0       30      31
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months            1        1      31
6 months    ki1000111-WASH-Kenya        KENYA                          0_6 months            0       69      72
6 months    ki1000111-WASH-Kenya        KENYA                          0_6 months            1        3      72
6 months    ki1000111-WASH-Kenya        KENYA                          1_6 months            0        2       2
6 months    ki1000111-WASH-Kenya        KENYA                          1_6 months            1        0       2
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months            0      471     518
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months            1       47     518
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months            0      129     159
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months            1       30     159
6 months    ki1000304-EU                INDIA                          0_6 months            0      292     321
6 months    ki1000304-EU                INDIA                          0_6 months            1       29     321
6 months    ki1000304-EU                INDIA                          1_6 months            0       31      42
6 months    ki1000304-EU                INDIA                          1_6 months            1       11      42
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months            0     1968    2168
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months            1      200    2168
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months            0      293     340
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months            1       47     340
6 months    ki1000304-Vitamin-B12       INDIA                          0_6 months            0       69      76
6 months    ki1000304-Vitamin-B12       INDIA                          0_6 months            1        7      76
6 months    ki1000304-Vitamin-B12       INDIA                          1_6 months            0        5       5
6 months    ki1000304-Vitamin-B12       INDIA                          1_6 months            1        0       5
6 months    ki1000304-ZnMort            INDIA                          0_6 months            0      114     123
6 months    ki1000304-ZnMort            INDIA                          0_6 months            1        9     123
6 months    ki1000304-ZnMort            INDIA                          1_6 months            0       18      22
6 months    ki1000304-ZnMort            INDIA                          1_6 months            1        4      22
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months            0      466     495
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months            1       29     495
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months            0       54      59
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months            1        5      59
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months            0      251     290
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months            1       39     290
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months            0       52      65
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months            1       13      65
6 months    ki1017093b-PROVIDE          BANGLADESH                     0_6 months            0       31      31
6 months    ki1017093b-PROVIDE          BANGLADESH                     0_6 months            1        0      31
6 months    ki1017093b-PROVIDE          BANGLADESH                     1_6 months            0       13      14
6 months    ki1017093b-PROVIDE          BANGLADESH                     1_6 months            1        1      14
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months            0     1571    1595
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months            1       24    1595
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months            0      104     104
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months            1        0     104
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6 months            0      546     555
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6 months            1        9     555
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months            0       68      75
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months            1        7      75
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months            0      196     214
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months            1       18     214
6 months    ki1112895-Guatemala BSC     GUATEMALA                      1_6 months            0        2       4
6 months    ki1112895-Guatemala BSC     GUATEMALA                      1_6 months            1        2       4
6 months    ki1119695-PROBIT            BELARUS                        0_6 months            0    11505   11690
6 months    ki1119695-PROBIT            BELARUS                        0_6 months            1      185   11690
6 months    ki1119695-PROBIT            BELARUS                        1_6 months            0     2760    2803
6 months    ki1119695-PROBIT            BELARUS                        1_6 months            1       43    2803
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months            0     6022    6205
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months            1      183    6205
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months            0     1059    1139
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months            1       80    1139
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months            0      607     703
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months            1       96     703
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months            0      158     170
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months            1       12     170
6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_6 months            0     1780    1900
6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_6 months            1      120    1900
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months            0       23      30
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months            1        7      30
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months            0      926     968
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months            1       42     968
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months            0       32      34
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months            1        2      34
6 months    ki1148112-LCNI-5            MALAWI                         0_6 months            0      759     825
6 months    ki1148112-LCNI-5            MALAWI                         0_6 months            1       66     825
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months            0        9      14
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months            1        5      14
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months            0    24611   25306
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months            1      695   25306
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months            0     2915    3039
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months            1      124    3039
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months            0     7486    7770
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months            1      284    7770
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months            0      726     774
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months            1       48     774
24 months   iLiNS_DYADM_LNS             MALAWI                         0_24 months           0       30      33
24 months   iLiNS_DYADM_LNS             MALAWI                         0_24 months           1        3      33
24 months   iLiNS_DYADM_LNS             MALAWI                         1_24 months           0        1       2
24 months   iLiNS_DYADM_LNS             MALAWI                         1_24 months           1        1       2
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months           0      102     128
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months           1       26     128
24 months   ki1000107-Serrinha-VitA     BRAZIL                         1_24 months           0        1       3
24 months   ki1000107-Serrinha-VitA     BRAZIL                         1_24 months           1        2       3
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months           0      967    1068
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months           1      101    1068
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months           0       81     119
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months           1       38     119
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months           0     2055    2213
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months           1      158    2213
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months           0       26      51
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months           1       25      51
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       0_24 months           0        2       3
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       0_24 months           1        1       3
24 months   ki1000304-EU                INDIA                          0_24 months           0      168     206
24 months   ki1000304-EU                INDIA                          0_24 months           1       38     206
24 months   ki1000304-EU                INDIA                          1_24 months           0       29      47
24 months   ki1000304-EU                INDIA                          1_24 months           1       18      47
24 months   ki1000304-Vitamin-B12       INDIA                          0_24 months           0       99     119
24 months   ki1000304-Vitamin-B12       INDIA                          0_24 months           1       20     119
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months           0        9      14
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months           1        5      14
24 months   ki1000304-ZnMort            INDIA                          0_24 months           0       97     118
24 months   ki1000304-ZnMort            INDIA                          0_24 months           1       21     118
24 months   ki1000304-ZnMort            INDIA                          1_24 months           0        9      22
24 months   ki1000304-ZnMort            INDIA                          1_24 months           1       13      22
24 months   ki1017093b-PROVIDE          BANGLADESH                     0_24 months           0        1       1
24 months   ki1017093b-PROVIDE          BANGLADESH                     0_24 months           1        0       1
24 months   ki1017093b-PROVIDE          BANGLADESH                     1_24 months           0        1       1
24 months   ki1017093b-PROVIDE          BANGLADESH                     1_24 months           1        0       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_24 months           0        2       3
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_24 months           1        1       3
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_24 months           0        1       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_24 months           1        0       1
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months           0      933    1020
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months           1       87    1020
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months           0      101     149
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months           1       48     149
24 months   ki1119695-PROBIT            BELARUS                        0_24 months           0      608     622
24 months   ki1119695-PROBIT            BELARUS                        0_24 months           1       14     622
24 months   ki1119695-PROBIT            BELARUS                        1_24 months           0      215     219
24 months   ki1119695-PROBIT            BELARUS                        1_24 months           1        4     219
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months           0       18      28
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months           1       10      28
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months           0        3       4
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months           1        1       4
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months           0      184     321
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months           1      137     321
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months           0        6      13
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months           1        7      13
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months           0      626     764
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months           1      138     764
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months           0       10      12
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months           1        2      12
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months           0       54      61
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months           1        7      61
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_24 months           0        1       4
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_24 months           1        3       4
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months           0      341     377
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months           1       36     377
24 months   ki1148112-LCNI-5            MALAWI                         1_24 months           0        5       8
24 months   ki1148112-LCNI-5            MALAWI                         1_24 months           1        3       8
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months           0       99     125
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months           1       26     125
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months           0        8      12
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months           1        4      12
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months           0     1617    1783
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months           1      166    1783
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months           0      110     129
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months           1       19     129


The following strata were considered:

* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenwast: 0_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenwast: 0_24 months
* agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXenwast: 0_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenwast: 0_24 months
* agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenwast: 0_24 months
* agecat: 24 months, studyid: ki1000304-EU, country: INDIA, intXenwast: 0_24 months
* agecat: 24 months, studyid: ki1000304-EU, country: INDIA, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXenwast: 0_24 months
* agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA, intXenwast: 0_24 months
* agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXenwast: 0_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXenwast: 0_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXenwast: 0_24 months
* agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXenwast: 0_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenwast: 0_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenwast: 0_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXenwast: 0_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXenwast: 0_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXenwast: 0_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXenwast: 1_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenwast: 0_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenwast: 1_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXenwast: 0_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXenwast: 1_24 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenwast: 0_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenwast: 0_6 months
* agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXenwast: 0_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenwast: 0_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenwast: 0_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1000304-EU, country: INDIA, intXenwast: 0_6 months
* agecat: 6 months, studyid: ki1000304-EU, country: INDIA, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXenwast: 0_6 months
* agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXenwast: 0_6 months
* agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA, intXenwast: 0_6 months
* agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXenwast: 0_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXenwast: 0_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXenwast: 0_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXenwast: 0_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXenwast: 0_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXenwast: 0_6 months
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXenwast: 0_6 months
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenwast: 0_6 months
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenwast: 0_6 months
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXenwast: 0_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXenwast: 0_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXenwast: 0_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXenwast: 1_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenwast: 0_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenwast: 1_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXenwast: 0_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXenwast: 1_6 months
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenwast: 0_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenwast: 1_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXenwast: 0_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXenwast: 1_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXenwast: 0_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXenwast: 1_Birth
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenwast: 0_Birth
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenwast: 1_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenwast: 0_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenwast: 1_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenwast: 0_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenwast: 1_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXenwast: 0_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXenwast: 1_Birth

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenwast: 0_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenwast: 1_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXenwast: 0_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXenwast: 1_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXenwast: 0_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXenwast: 1_Birth
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenwast: 0_Birth
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenwast: 1_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenwast: 0_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenwast: 1_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenwast: 0_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenwast: 1_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXenwast: 0_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXenwast: 1_Birth
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenwast: 0_6 months
* agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenwast: 0_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXenwast: 0_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXenwast: 1_6 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenwast: 0_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenwast: 0_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXenwast: 0_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXenwast: 0_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXenwast: 1_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenwast: 1_24 months

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/47dc08b4-ed7a-42e4-9b22-6f3a02105262/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/47dc08b4-ed7a-42e4-9b22-6f3a02105262/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/47dc08b4-ed7a-42e4-9b22-6f3a02105262/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/47dc08b4-ed7a-42e4-9b22-6f3a02105262/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                     country                        intXenwast    intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    Control              NA                0.0518293    0.0278199   0.0758387
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    LNS                  NA                0.0352564    0.0147762   0.0557367
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_6 months    Control              NA                0.0516129    0.0167561   0.0864697
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_6 months    LNS                  NA                0.0388889    0.0106241   0.0671536
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_6 months    Other                NA                0.0379747    0.0168846   0.0590648
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    Control              NA                0.0965517    0.0625265   0.1305769
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    Maternal             NA                0.0833333    0.0474233   0.1192433
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    Control              NA                0.2368421    0.1409577   0.3327265
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    Maternal             NA                0.1445783    0.0686820   0.2204746
6 months    ki1000304-EU                INDIA                          0_6 months    Control              NA                0.0804598    0.0399811   0.1209384
6 months    ki1000304-EU                INDIA                          0_6 months    Zinc                 NA                0.1020408    0.0530311   0.1510505
6 months    ki1000304-EU                INDIA                          1_6 months    Control              NA                0.2916667    0.1076160   0.4757173
6 months    ki1000304-EU                INDIA                          1_6 months    Zinc                 NA                0.2222222    0.0278357   0.4166087
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    Control              NA                0.0905764    0.0735576   0.1075952
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    VitA                 NA                0.0939535    0.0765083   0.1113987
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    Control              NA                0.1279070    0.0779206   0.1778934
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    VitA                 NA                0.1488095    0.0949129   0.2027062
6 months    ki1000304-Vitamin-B12       INDIA                          0_6 months    Control              NA                0.1333333   -0.0398372   0.3065039
6 months    ki1000304-Vitamin-B12       INDIA                          0_6 months    Other                NA                0.0819672    0.0126712   0.1512633
6 months    ki1000304-ZnMort            INDIA                          0_6 months    Control              NA                0.0555556    0.0024296   0.1086815
6 months    ki1000304-ZnMort            INDIA                          0_6 months    Zinc                 NA                0.0980392    0.0160929   0.1799855
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    Control              NA                0.0573770    0.0238288   0.0909253
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    Other                NA                0.0597610    0.0407473   0.0787746
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    Control              NA                0.1200000   -0.1375007   0.3775007
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    Other                NA                0.0588235   -0.0031289   0.1207759
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months    Control              NA                0.1466667    0.0664633   0.2268700
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months    Other                NA                0.1302326    0.0851675   0.1752977
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    Control              NA                0.2666667    0.0411367   0.4921966
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    Other                NA                0.1800000    0.0726819   0.2873181
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Control              NA                0.0222772    0.0078816   0.0366729
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Other                NA                0.0102564    0.0002539   0.0202590
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Zinc                 NA                0.0137328    0.0056708   0.0217949
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6 months    Control              NA                0.0281690   -0.0103515   0.0666895
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6 months    Zinc                 NA                0.0144628    0.0038170   0.0251086
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months    Control              NA                0.0000000    0.0000000   0.0000000
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months    Zinc                 NA                0.1076923    0.0318248   0.1835598
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months    Control              NA                0.1037736    0.0455814   0.1619658
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months    Other                NA                0.0648148    0.0182734   0.1113562
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    Control              NA                0.0197755    0.0082726   0.0312784
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    Maternal             NA                0.0121771    0.0076679   0.0166863
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    Control              NA                0.0167560    0.0103189   0.0231932
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    Maternal             NA                0.0137300    0.0013319   0.0261281
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    Control              NA                0.0275591    0.0193394   0.0357787
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    VitA                 NA                0.0301218    0.0252250   0.0350186
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    Control              NA                0.0519031    0.0263165   0.0774897
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    VitA                 NA                0.0764706    0.0585974   0.0943438
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    Control              NA                0.1666667    0.1267898   0.2065436
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    Other                NA                0.1089918    0.0770866   0.1408971
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    Control              NA                0.1224490    0.0573566   0.1875413
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    Other                NA                0.0000000    0.0000000   0.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_6 months    Control              NA                0.0702875    0.0419603   0.0986147
6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_6 months    LNS                  NA                0.0617517    0.0499061   0.0735973
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months    Control              NA                0.1428571   -0.1207992   0.4065135
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months    LNS                  NA                0.2608696    0.0783464   0.4433928
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    Control              NA                0.0518293    0.0278262   0.0758323
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    Maternal             NA                0.0390625    0.0240446   0.0540804
6 months    ki1148112-LCNI-5            MALAWI                         0_6 months    Control              NA                0.0634146    0.0300334   0.0967959
6 months    ki1148112-LCNI-5            MALAWI                         0_6 months    LNS                  NA                0.0939759    0.0658850   0.1220668
6 months    ki1148112-LCNI-5            MALAWI                         0_6 months    Other                NA                0.0682927    0.0337416   0.1028437
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    Control              NA                0.2500000   -0.1903633   0.6903633
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    LNS                  NA                0.2857143   -0.0615766   0.6330052
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    Other                NA                0.6666667    0.1130954   1.2202379
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    Control              NA                0.0284077    0.0237568   0.0330587
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    Maternal             NA                0.0265583    0.0223078   0.0308087
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    Control              NA                0.0437299    0.0232705   0.0641893
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    Maternal             NA                0.0377358    0.0212758   0.0541959
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    Control              NA                0.0374384    0.0247480   0.0501289
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    LNS                  NA                0.0338119    0.0236931   0.0439308
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    Other                NA                0.0376990    0.0287024   0.0466955
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    Control              NA                0.0703518    0.0229733   0.1177302
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    LNS                  NA                0.0512821    0.0061096   0.0964545
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    Other                NA                0.0631579    0.0298404   0.0964754
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months   Control              NA                0.2058824    0.1093998   0.3023649
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months   VitA                 NA                0.2000000    0.0983902   0.3016098
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   Control              NA                0.1000000    0.0627949   0.1372051
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   LNS                  NA                0.0989011    0.0634723   0.1343299
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   Other                NA                0.0899083    0.0658815   0.1139350
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   Control              NA                0.4285714    0.2160203   0.6411226
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   LNS                  NA                0.2647059    0.1157857   0.4136260
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   Other                NA                0.3125000    0.1984614   0.4265386
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   Control              NA                0.0906631    0.0699568   0.1113693
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   LNS                  NA                0.0527383    0.0330041   0.0724726
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   Other                NA                0.0662589    0.0506904   0.0818274
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   Control              NA                0.4285714    0.2148091   0.6423337
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   LNS                  NA                0.2857143   -0.0522736   0.6237022
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   Other                NA                0.6086957    0.4072575   0.8101338
24 months   ki1000304-EU                INDIA                          0_24 months   Control              NA                0.1923077    0.1163784   0.2682370
24 months   ki1000304-EU                INDIA                          0_24 months   Zinc                 NA                0.1764706    0.1023088   0.2506324
24 months   ki1000304-EU                INDIA                          1_24 months   Control              NA                0.3809524    0.1710072   0.5908975
24 months   ki1000304-EU                INDIA                          1_24 months   Zinc                 NA                0.3846154    0.1955909   0.5736399
24 months   ki1000304-Vitamin-B12       INDIA                          0_24 months   Control              NA                0.0857143   -0.0074210   0.1788495
24 months   ki1000304-Vitamin-B12       INDIA                          0_24 months   Other                NA                0.2023810    0.1160983   0.2886636
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months   Control              NA                0.3333333   -0.2202379   0.8869046
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months   Other                NA                0.3636364    0.0686307   0.6586421
24 months   ki1000304-ZnMort            INDIA                          0_24 months   Control              NA                0.1896552    0.0883342   0.2909762
24 months   ki1000304-ZnMort            INDIA                          0_24 months   Zinc                 NA                0.1666667    0.0719657   0.2613676
24 months   ki1000304-ZnMort            INDIA                          1_24 months   Control              NA                0.5882353    0.3487795   0.8276911
24 months   ki1000304-ZnMort            INDIA                          1_24 months   Zinc                 NA                0.6000000    0.1604883   1.0395117
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months   Control              NA                0.0918367    0.0346312   0.1490423
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months   Zinc                 NA                0.0845987    0.0666272   0.1025702
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   Control              NA                0.2173913    0.0482538   0.3865288
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   Zinc                 NA                0.3412698    0.2582030   0.4243367
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   Control              NA                0.0183824   -0.0079075   0.0446722
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   Maternal             NA                0.0257143    0.0028940   0.0485346
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   Control              NA                0.1666667   -0.1370044   0.4703377
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   VitA                 NA                0.4090909    0.1998705   0.6183114
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   Control              NA                0.4562500    0.3789523   0.5335477
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   Other                NA                0.3975155    0.3218039   0.4732272
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months   Control              NA                0.7000000    0.4043766   0.9956234
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months   Other                NA                0.0000000    0.0000000   0.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   Control              NA                0.1968504    0.1276518   0.2660489
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   LNS                  NA                0.1773940    0.1477096   0.2070784
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   Control              NA                0.0909091   -0.0803873   0.2622055
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   Maternal             NA                0.1200000    0.0291794   0.2108206
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   Control              NA                0.1363636    0.0721476   0.2005796
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   LNS                  NA                0.0919540    0.0489618   0.1349462
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   Other                NA                0.0537634    0.0078620   0.0996649
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months   Control              NA                0.2592593    0.1077326   0.4107859
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months   Maternal             NA                0.1690141    0.0516729   0.2863553
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   Control              NA                0.1125541    0.0723953   0.1527129
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   LNS                  NA                0.0877551    0.0544797   0.1210305
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   Other                NA                0.0854392    0.0549721   0.1159064
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   Control              NA                0.0645161   -0.0522227   0.1812549
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   LNS                  NA                0.1219512   -0.0052226   0.2491250
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   Other                NA                0.2105263    0.0561959   0.3648567


### Parameter: E(Y)


agecat      studyid                     country                        intXenwast    intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    NA                   NA                0.0437500    0.0278911   0.0596089
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_6 months    NA                   NA                0.0414747    0.0261467   0.0568026
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    NA                   NA                0.0907336    0.0659746   0.1154926
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    NA                   NA                0.1886792    0.1276725   0.2496860
6 months    ki1000304-EU                INDIA                          0_6 months    NA                   NA                0.0903427    0.0589334   0.1217520
6 months    ki1000304-EU                INDIA                          1_6 months    NA                   NA                0.2619048    0.1273237   0.3964859
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    NA                   NA                0.0922509    0.0800670   0.1044348
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    NA                   NA                0.1382353    0.1014942   0.1749764
6 months    ki1000304-Vitamin-B12       INDIA                          0_6 months    NA                   NA                0.0921053    0.0266601   0.1575504
6 months    ki1000304-ZnMort            INDIA                          0_6 months    NA                   NA                0.0731707    0.0269606   0.1193808
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    NA                   NA                0.0585859    0.0395002   0.0776716
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    NA                   NA                0.0847458   -0.0388078   0.2082993
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months    NA                   NA                0.1344828    0.0951486   0.1738170
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    NA                   NA                0.2000000    0.1020018   0.2979982
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    NA                   NA                0.0150470    0.0090707   0.0210234
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6 months    NA                   NA                0.0162162    0.0056986   0.0267338
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months    NA                   NA                0.0933333    0.0270546   0.1596121
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months    NA                   NA                0.0841121    0.0468379   0.1213864
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    NA                   NA                0.0158255    0.0094316   0.0222194
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    NA                   NA                0.0153407    0.0084618   0.0222196
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    NA                   NA                0.0294923    0.0252825   0.0337022
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    NA                   NA                0.0702371    0.0553898   0.0850843
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    NA                   NA                0.1365576    0.1111564   0.1619588
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    NA                   NA                0.0705882    0.0319716   0.1092049
6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_6 months    NA                   NA                0.0631579    0.0522175   0.0740983
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months    NA                   NA                0.2333333    0.0793971   0.3872695
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    NA                   NA                0.0433884    0.0305477   0.0562292
6 months    ki1148112-LCNI-5            MALAWI                         0_6 months    NA                   NA                0.0800000    0.0614765   0.0985235
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    NA                   NA                0.3571429    0.0966747   0.6176110
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    NA                   NA                0.0274638    0.0243176   0.0306101
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    NA                   NA                0.0408029    0.0275954   0.0540104
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    NA                   NA                0.0365508    0.0305443   0.0425574
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    NA                   NA                0.0620155    0.0386564   0.0853746
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months   NA                   NA                0.2031250    0.1331532   0.2730968
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   NA                   NA                0.0945693    0.0770116   0.1121270
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   NA                   NA                0.3193277    0.2352087   0.4034468
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   NA                   NA                0.0713963    0.0606661   0.0821265
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   NA                   NA                0.4901961    0.3516323   0.6287598
24 months   ki1000304-EU                INDIA                          0_24 months   NA                   NA                0.1844660    0.1313714   0.2375606
24 months   ki1000304-EU                INDIA                          1_24 months   NA                   NA                0.3829787    0.2425013   0.5234562
24 months   ki1000304-Vitamin-B12       INDIA                          0_24 months   NA                   NA                0.1680672    0.1006000   0.2355344
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months   NA                   NA                0.3571429    0.0966747   0.6176110
24 months   ki1000304-ZnMort            INDIA                          0_24 months   NA                   NA                0.1779661    0.1086604   0.2472718
24 months   ki1000304-ZnMort            INDIA                          1_24 months   NA                   NA                0.5909091    0.3806239   0.8011943
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months   NA                   NA                0.0852941    0.0681442   0.1024440
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   NA                   NA                0.3221477    0.2468620   0.3974333
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   NA                   NA                0.0225080    0.0053216   0.0396945
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   NA                   NA                0.3571429    0.1764070   0.5378788
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   NA                   NA                0.4267913    0.3725990   0.4809835
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months   NA                   NA                0.5384615    0.2564033   0.8205198
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   NA                   NA                0.1806283    0.1533310   0.2079255
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   NA                   NA                0.1147541    0.0341070   0.1954012
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   NA                   NA                0.0954907    0.0657849   0.1251965
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months   NA                   NA                0.2080000    0.1145388   0.3014612
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   NA                   NA                0.0931015    0.0732717   0.1129314
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   NA                   NA                0.1472868    0.0619909   0.2325828


### Parameter: RR


agecat      studyid                     country                        intXenwast    intervention_level   baseline_level            estimate          ci_lower           ci_upper
----------  --------------------------  -----------------------------  ------------  -------------------  ---------------  -----------------  ----------------  -----------------
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    LNS                  Control                  0.6802413         0.3235845          1.4300074
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_6 months    LNS                  Control                  0.7534722         0.2793732          2.0321221
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_6 months    Other                Control                  0.7357595         0.3069008          1.7638991
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    Maternal             Control                  0.8630952         0.4946528          1.5059723
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    Maternal             Control                  0.6104418         0.3145856          1.1845397
6 months    ki1000304-EU                INDIA                          0_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1000304-EU                INDIA                          0_6 months    Zinc                 Control                  1.2682216         0.6325913          2.5425355
6 months    ki1000304-EU                INDIA                          1_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1000304-EU                INDIA                          1_6 months    Zinc                 Control                  0.7619048         0.2591031          2.2404169
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    VitA                 Control                  1.0372845         0.7964788          1.3508947
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    VitA                 Control                  1.1634199         0.6828612          1.9821685
6 months    ki1000304-Vitamin-B12       INDIA                          0_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1000304-Vitamin-B12       INDIA                          0_6 months    Other                Control                  0.6147541         0.1305204          2.8955067
6 months    ki1000304-ZnMort            INDIA                          0_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1000304-ZnMort            INDIA                          0_6 months    Zinc                 Control                  1.7647059         0.4955472          6.2843392
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    Other                Control                  1.0415481         0.5345617          2.0293682
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    Other                Control                  0.4901961         0.0466200          5.1542748
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months    Other                Control                  0.8879493         0.4648830          1.6960266
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    Other                Control                  0.6750000         0.2398340          1.8997515
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Other                Control                  0.4603989         0.1429052          1.4832706
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Zinc                 Control                  0.6164517         0.2574755          1.4759178
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6 months    Zinc                 Control                  0.5134298         0.1086479          2.4262799
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months    Zinc                 Control           12454485.5069259   4997792.8934604   31036542.0394261
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months    Other                Control                  0.6245791         0.2511360          1.5533380
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    Maternal             Control                  0.6157644         0.3091661          1.2264144
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    Maternal             Control                  0.8194050         0.3085623          2.1759777
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    VitA                 Control                  1.0929899         0.7782039          1.5351079
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    VitA                 Control                  1.4733333         0.8538136          2.5423711
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    Other                Control                  0.6539510         0.4480756          0.9544189
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    Other                Control                  0.0000000         0.0000000          0.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_6 months    LNS                  Control                  0.8785587         0.5622465          1.3728240
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months    LNS                  Control                  1.8260870         0.2537025         13.1437136
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    Maternal             Control                  0.7536765         0.4128402          1.3759034
6 months    ki1148112-LCNI-5            MALAWI                         0_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         0_6 months    LNS                  Control                  1.4819277         0.8089623          2.7147244
6 months    ki1148112-LCNI-5            MALAWI                         0_6 months    Other                Control                  1.0769231         0.5189237          2.2349398
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    LNS                  Control                  1.1428571         0.1344438          9.7150068
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    Other                Control                  2.6666667         0.3804006         18.6937424
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    Maternal             Control                  0.9348962         0.7435850          1.1754283
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    Maternal             Control                  0.8629301         0.4551902          1.6359059
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    LNS                  Control                  0.9031350         0.5745619          1.4196081
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    Other                Control                  1.0069592         0.6651858          1.5243365
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    LNS                  Control                  0.7289377         0.2405077          2.2092860
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    Other                Control                  0.8977444         0.3815642          2.1122133
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months   VitA                 Control                  0.9714286         0.4866716          1.9390356
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   LNS                  Control                  0.9890110         0.5900632          1.6576915
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   Other                Control                  0.8990826         0.5686667          1.4214819
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   LNS                  Control                  0.6176471         0.2917610          1.3075357
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   Other                Control                  0.7291667         0.3939249          1.3497092
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   LNS                  Control                  0.5816960         0.3752394          0.9017449
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   Other                Control                  0.7308260         0.5266326          1.0141920
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   LNS                  Control                  0.6666667         0.1846533          2.4069133
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   Other                Control                  1.4202899         0.7805795          2.5842636
24 months   ki1000304-EU                INDIA                          0_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1000304-EU                INDIA                          0_24 months   Zinc                 Control                  0.9176471         0.5155231          1.6334401
24 months   ki1000304-EU                INDIA                          1_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1000304-EU                INDIA                          1_24 months   Zinc                 Control                  1.0096154         0.4824664          2.1127340
24 months   ki1000304-Vitamin-B12       INDIA                          0_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1000304-Vitamin-B12       INDIA                          0_24 months   Other                Control                  2.3611111         0.7348467          7.5864060
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months   Other                Control                  1.0909091         0.1718275          6.9260310
24 months   ki1000304-ZnMort            INDIA                          0_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1000304-ZnMort            INDIA                          0_24 months   Zinc                 Control                  0.8787879         0.4028758          1.9168890
24 months   ki1000304-ZnMort            INDIA                          1_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1000304-ZnMort            INDIA                          1_24 months   Zinc                 Control                  1.0200000         0.4412130          2.3580450
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months   Zinc                 Control                  0.9211858         0.4770063          1.7789772
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   Zinc                 Control                  1.5698413         0.6947219          3.5473208
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   Maternal             Control                  1.3988571         0.2608146          7.5026508
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   VitA                 Control                  2.4545455         0.3699081         16.2872700
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   Other                Control                  0.8712669         0.6752202          1.1242347
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months   Other                Control                  0.0000000         0.0000000          0.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   LNS                  Control                  0.9011617         0.6105499          1.3301000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   Maternal             Control                  1.3199999         0.1732629         10.0563934
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   LNS                  Control                  0.6743295         0.3472778          1.3093848
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   Other                Control                  0.3942652         0.1487095          1.0452938
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months   Maternal             Control                  0.6519115         0.2632375          1.6144684
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   LNS                  Control                  0.7796703         0.4630515          1.3127824
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   Other                Control                  0.7590947         0.4583667          1.2571263
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   LNS                  Control                  1.8902439         0.2341584         15.2589980
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   Other                Control                  3.2631579         0.4631892         22.9888775


### Parameter: PAR


agecat      studyid                     country                        intXenwast    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    Control              NA                -0.0080793   -0.0234771    0.0073185
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_6 months    Control              NA                -0.0101382   -0.0396573    0.0193808
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    Control              NA                -0.0058181   -0.0275997    0.0159635
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    Control              NA                -0.0481629   -0.1124013    0.0160756
6 months    ki1000304-EU                INDIA                          0_6 months    Control              NA                 0.0098829   -0.0192500    0.0390158
6 months    ki1000304-EU                INDIA                          1_6 months    Control              NA                -0.0297619   -0.1449697    0.0854459
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    Control              NA                 0.0016745   -0.0104103    0.0137594
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    Control              NA                 0.0103283   -0.0260105    0.0466672
6 months    ki1000304-Vitamin-B12       INDIA                          0_6 months    Control              NA                -0.0412281   -0.1910070    0.1085508
6 months    ki1000304-ZnMort            INDIA                          0_6 months    Control              NA                 0.0176152   -0.0230481    0.0582785
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    Control              NA                 0.0012088   -0.0184938    0.0209114
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    Control              NA                -0.0352542   -0.1851742    0.1146657
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months    Control              NA                -0.0121839   -0.0803936    0.0560258
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    Control              NA                -0.0666667   -0.2589993    0.1256659
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Control              NA                -0.0072302   -0.0189763    0.0045159
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6 months    Control              NA                -0.0119528   -0.0468068    0.0229012
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months    Control              NA                 0.0933333    0.0270546    0.1596121
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months    Control              NA                -0.0196614   -0.0573578    0.0180349
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    Control              NA                -0.0039500   -0.0102692    0.0023692
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    Control              NA                -0.0014153   -0.0079604    0.0051298
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    Control              NA                 0.0019333   -0.0052846    0.0091512
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    Control              NA                 0.0183339   -0.0049661    0.0416340
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    Control              NA                -0.0301091   -0.0568549   -0.0033632
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    Control              NA                -0.0518607   -0.0808992   -0.0228222
6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_6 months    Control              NA                -0.0071296   -0.0327761    0.0185169
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months    Control              NA                 0.0904762   -0.1560413    0.3369936
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    Control              NA                -0.0084408   -0.0271647    0.0102831
6 months    ki1148112-LCNI-5            MALAWI                         0_6 months    Control              NA                 0.0165854   -0.0134754    0.0466462
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    Control              NA                 0.1071429   -0.2813827    0.4956685
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    Control              NA                -0.0009439   -0.0041608    0.0022730
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    Control              NA                -0.0029270   -0.0157468    0.0098928
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    Control              NA                -0.0008876   -0.0115209    0.0097457
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    Control              NA                -0.0083363   -0.0488039    0.0321314
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months   Control              NA                -0.0027574   -0.0684403    0.0629256
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   Control              NA                -0.0054307   -0.0377487    0.0268873
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   Control              NA                -0.1092437   -0.2997925    0.0813051
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   Control              NA                -0.0192668   -0.0353147   -0.0032188
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   Control              NA                 0.0616246   -0.1034923    0.2267416
24 months   ki1000304-EU                INDIA                          0_24 months   Control              NA                -0.0078417   -0.0604065    0.0447232
24 months   ki1000304-EU                INDIA                          1_24 months   Control              NA                 0.0020263   -0.1542521    0.1583048
24 months   ki1000304-Vitamin-B12       INDIA                          0_24 months   Control              NA                 0.0823529   -0.0077778    0.1724836
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months   Control              NA                 0.0238095   -0.4690930    0.5167120
24 months   ki1000304-ZnMort            INDIA                          0_24 months   Control              NA                -0.0116891   -0.0822389    0.0588607
24 months   ki1000304-ZnMort            INDIA                          1_24 months   Control              NA                 0.0026738   -0.1110979    0.1164455
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months   Control              NA                -0.0065426   -0.0607438    0.0476585
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   Control              NA                 0.1047563   -0.0547541    0.2642668
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   Control              NA                 0.0041257   -0.0155407    0.0237920
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   Control              NA                 0.1904762   -0.1016888    0.4826412
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   Control              NA                -0.0294587   -0.0838224    0.0249050
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months   Control              NA                -0.1615385   -0.3418132    0.0187362
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   Control              NA                -0.0162221   -0.0790044    0.0465601
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   Control              NA                 0.0238450   -0.1351012    0.1827912
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   Control              NA                -0.0408729   -0.0918605    0.0101146
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months   Control              NA                -0.0512593   -0.1604185    0.0579000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   Control              NA                -0.0194526   -0.0537617    0.0148565
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   Control              NA                 0.0827707   -0.0371198    0.2026611


### Parameter: PAF


agecat      studyid                     country                        intXenwast    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    Control              NA                -0.1846690   -0.5868013    0.1155537
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_6 months    Control              NA                -0.2444444   -1.1956871    0.2946891
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    Control              NA                -0.0641233   -0.3327893    0.1503846
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    Control              NA                -0.2552632   -0.6408874    0.0397357
6 months    ki1000304-EU                INDIA                          0_6 months    Control              NA                 0.1093936   -0.2765343    0.3786459
6 months    ki1000304-EU                INDIA                          1_6 months    Control              NA                -0.1136364   -0.6518542    0.2492159
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    Control              NA                 0.0181519   -0.1219686    0.1407730
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    Control              NA                 0.0747155   -0.2286047    0.3031514
6 months    ki1000304-Vitamin-B12       INDIA                          0_6 months    Control              NA                -0.4476190   -3.3840944    0.5219991
6 months    ki1000304-ZnMort            INDIA                          0_6 months    Control              NA                 0.2407407   -0.5403496    0.6257508
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    Control              NA                 0.0206331   -0.3854080    0.3076700
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    Control              NA                -0.4160000   -2.6932968    0.4571094
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months    Control              NA                -0.0905983   -0.7356340    0.3147146
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    Control              NA                -0.3333333   -1.7331461    0.3495490
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Control              NA                -0.4805074   -1.4704185    0.1127405
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6 months    Control              NA                -0.7370892   -4.8143526    0.4810293
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months    Control              NA                 0.9999999    0.9999998    1.0000000
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months    Control              NA                -0.2337526   -0.7607378    0.1355070
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    Control              NA                -0.2495991   -0.6455156    0.0510585
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    Control              NA                -0.0922595   -0.6496860    0.2768134
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    Control              NA                 0.0655523   -0.2140059    0.2807345
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    Control              NA                 0.2610294   -0.1512709    0.5256742
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    Control              NA                -0.2204861   -0.4298216   -0.0417987
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    Control              NA                -0.7346939   -0.9739949   -0.5244025
6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_6 months    Control              NA                -0.1128860   -0.6023586    0.2270673
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months    Control              NA                 0.3877551   -2.3299886    0.8874339
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    Control              NA                -0.1945412   -0.7094045    0.1652481
6 months    ki1148112-LCNI-5            MALAWI                         0_6 months    Control              NA                 0.2073171   -0.2691624    0.5049127
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    Control              NA                 0.3000000   -2.2884850    0.8509952
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    Control              NA                -0.0343678   -0.1581626    0.0761946
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    Control              NA                -0.0717353   -0.4306089    0.1971135
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    Control              NA                -0.0242836   -0.3602642    0.2287109
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    Control              NA                -0.1344221   -1.0170229    0.3619738
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months   Control              NA                -0.0135747   -0.3944479    0.2632686
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   Control              NA                -0.0574257   -0.4606691    0.2344952
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   Control              NA                -0.3421053   -1.0962834    0.1407428
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   Control              NA                -0.2698566   -0.5122167   -0.0663392
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   Control              NA                 0.1257143   -0.2870887    0.4061206
24 months   ki1000304-EU                INDIA                          0_24 months   Control              NA                -0.0425101   -0.3700338    0.2067149
24 months   ki1000304-EU                INDIA                          1_24 months   Control              NA                 0.0052910   -0.4991929    0.3400142
24 months   ki1000304-Vitamin-B12       INDIA                          0_24 months   Control              NA                 0.4900000   -0.3777300    0.8112112
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months   Control              NA                 0.0666667   -3.0949261    0.7872706
24 months   ki1000304-ZnMort            INDIA                          0_24 months   Control              NA                -0.0656814   -0.5452520    0.2650539
24 months   ki1000304-ZnMort            INDIA                          1_24 months   Control              NA                 0.0045249   -0.2079073    0.1795971
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months   Control              NA                -0.0767065   -0.9424661    0.4031829
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   Control              NA                 0.3251812   -0.4012035    0.6750076
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   Control              NA                 0.1832983   -1.4187756    0.7242400
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   Control              NA                 0.5333333   -1.5710002    0.9152945
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   Control              NA                -0.0690237   -0.2045018    0.0512163
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months   Control              NA                -0.3000000   -0.7722710    0.0464212
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   Control              NA                -0.0898094   -0.4990182    0.2076917
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   Control              NA                 0.2077921   -3.5165017    0.8610444
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   Control              NA                -0.4280303   -1.0585335    0.0093576
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months   Control              NA                -0.2464387   -0.8977126    0.1813252
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   Control              NA                -0.2089397   -0.6415493    0.1096612
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   Control              NA                 0.5619694   -1.4206014    0.9207343
