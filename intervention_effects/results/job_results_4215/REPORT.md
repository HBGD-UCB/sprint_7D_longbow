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
* intXenwast

## Data Summary

agecat      studyid                     country                        intXenwast     stunted   n_cell       n
----------  --------------------------  -----------------------------  ------------  --------  -------  ------
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       0_Birth              0        7       7
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       0_Birth              1        0       7
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       1_Birth              0        4       4
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       1_Birth              1        0       4
Birth       ki1000304b-SAS-CompFeed     INDIA                          0_Birth              0       98     116
Birth       ki1000304b-SAS-CompFeed     INDIA                          0_Birth              1       18     116
Birth       ki1000304b-SAS-CompFeed     INDIA                          1_Birth              0        8       9
Birth       ki1000304b-SAS-CompFeed     INDIA                          1_Birth              1        1       9
Birth       ki1119695-PROBIT            BELARUS                        0_Birth              0    10910   10936
Birth       ki1119695-PROBIT            BELARUS                        0_Birth              1       26   10936
Birth       ki1119695-PROBIT            BELARUS                        1_Birth              0     2941    2941
Birth       ki1119695-PROBIT            BELARUS                        1_Birth              1        0    2941
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       0_Birth              0    10252   10856
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       0_Birth              1      604   10856
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth              0     2146    2236
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth              1       90    2236
Birth       ki1135781-COHORTS           GUATEMALA                      0_Birth              0      540     564
Birth       ki1135781-COHORTS           GUATEMALA                      0_Birth              1       24     564
Birth       ki1135781-COHORTS           GUATEMALA                      1_Birth              0      198     198
Birth       ki1135781-COHORTS           GUATEMALA                      1_Birth              1        0     198
Birth       kiGH5241-JiVitA-3           BANGLADESH                     0_Birth              0    23912   28406
Birth       kiGH5241-JiVitA-3           BANGLADESH                     0_Birth              1     4494   28406
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth              0     2638    3084
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth              1      446    3084
Birth       kiGH5241-JiVitA-4           BANGLADESH                     0_Birth              0     1094    1294
Birth       kiGH5241-JiVitA-4           BANGLADESH                     0_Birth              1      200    1294
Birth       kiGH5241-JiVitA-4           BANGLADESH                     1_Birth              0       56      72
Birth       kiGH5241-JiVitA-4           BANGLADESH                     1_Birth              1       16      72
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months           0      506     640
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months           1      134     640
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months           0       17      23
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months           1        6      23
6 months    ki1000107-Serrinha-VitA     BRAZIL                         0_6 months           0       26      34
6 months    ki1000107-Serrinha-VitA     BRAZIL                         0_6 months           1        8      34
6 months    ki1000107-Serrinha-VitA     BRAZIL                         1_6 months           0        0       1
6 months    ki1000107-Serrinha-VitA     BRAZIL                         1_6 months           1        1       1
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_6 months           0      556     651
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_6 months           1       95     651
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months           0       26      31
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months           1        5      31
6 months    ki1000111-WASH-Kenya        KENYA                          0_6 months           0       62      72
6 months    ki1000111-WASH-Kenya        KENYA                          0_6 months           1       10      72
6 months    ki1000111-WASH-Kenya        KENYA                          1_6 months           0        1       2
6 months    ki1000111-WASH-Kenya        KENYA                          1_6 months           1        1       2
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months           0      381     518
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months           1      137     518
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months           0      106     159
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months           1       53     159
6 months    ki1000304-EU                INDIA                          0_6 months           0      224     321
6 months    ki1000304-EU                INDIA                          0_6 months           1       97     321
6 months    ki1000304-EU                INDIA                          1_6 months           0       22      42
6 months    ki1000304-EU                INDIA                          1_6 months           1       20      42
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months           0     1428    2168
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months           1      740    2168
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months           0      216     340
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months           1      124     340
6 months    ki1000304-Vitamin-B12       INDIA                          0_6 months           0       54      76
6 months    ki1000304-Vitamin-B12       INDIA                          0_6 months           1       22      76
6 months    ki1000304-Vitamin-B12       INDIA                          1_6 months           0        4       5
6 months    ki1000304-Vitamin-B12       INDIA                          1_6 months           1        1       5
6 months    ki1000304-ZnMort            INDIA                          0_6 months           0       82     123
6 months    ki1000304-ZnMort            INDIA                          0_6 months           1       41     123
6 months    ki1000304-ZnMort            INDIA                          1_6 months           0       11      22
6 months    ki1000304-ZnMort            INDIA                          1_6 months           1       11      22
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months           0      388     495
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months           1      107     495
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months           0       41      59
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months           1       18      59
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months           0      169     290
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months           1      121     290
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months           0       35      65
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months           1       30      65
6 months    ki1017093b-PROVIDE          BANGLADESH                     0_6 months           0       26      31
6 months    ki1017093b-PROVIDE          BANGLADESH                     0_6 months           1        5      31
6 months    ki1017093b-PROVIDE          BANGLADESH                     1_6 months           0       10      14
6 months    ki1017093b-PROVIDE          BANGLADESH                     1_6 months           1        4      14
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months           0     1423    1595
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months           1      172    1595
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months           0       93     104
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months           1       11     104
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6 months           0      503     555
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6 months           1       52     555
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months           0       54      75
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months           1       21      75
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months           0      151     214
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months           1       63     214
6 months    ki1112895-Guatemala BSC     GUATEMALA                      1_6 months           0        1       4
6 months    ki1112895-Guatemala BSC     GUATEMALA                      1_6 months           1        3       4
6 months    ki1119695-PROBIT            BELARUS                        0_6 months           0    10941   11690
6 months    ki1119695-PROBIT            BELARUS                        0_6 months           1      749   11690
6 months    ki1119695-PROBIT            BELARUS                        1_6 months           0     2630    2803
6 months    ki1119695-PROBIT            BELARUS                        1_6 months           1      173    2803
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months           0     5374    6205
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months           1      831    6205
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months           0      876    1139
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months           1      263    1139
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months           0      403     703
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months           1      300     703
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months           0      109     170
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months           1       61     170
6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_6 months           0     1334    1900
6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_6 months           1      566    1900
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months           0       13      30
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months           1       17      30
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months           0      767     968
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months           1      201     968
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months           0       23      34
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months           1       11      34
6 months    ki1148112-LCNI-5            MALAWI                         0_6 months           0      522     825
6 months    ki1148112-LCNI-5            MALAWI                         0_6 months           1      303     825
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months           0        8      14
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months           1        6      14
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months           0    20762   25306
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months           1     4544   25306
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months           0     2453    3039
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months           1      586    3039
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months           0     6130    7770
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months           1     1640    7770
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months           0      571     774
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months           1      203     774
24 months   iLiNS_DYADM_LNS             MALAWI                         0_24 months          0       19      33
24 months   iLiNS_DYADM_LNS             MALAWI                         0_24 months          1       14      33
24 months   iLiNS_DYADM_LNS             MALAWI                         1_24 months          0        1       2
24 months   iLiNS_DYADM_LNS             MALAWI                         1_24 months          1        1       2
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months          0       73     128
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months          1       55     128
24 months   ki1000107-Serrinha-VitA     BRAZIL                         1_24 months          0        1       3
24 months   ki1000107-Serrinha-VitA     BRAZIL                         1_24 months          1        2       3
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months          0      663    1068
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months          1      405    1068
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months          0       41     119
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months          1       78     119
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months          0     1548    2213
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months          1      665    2213
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months          0       17      51
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months          1       34      51
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       0_24 months          0        1       3
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       0_24 months          1        2       3
24 months   ki1000304-EU                INDIA                          0_24 months          0       89     206
24 months   ki1000304-EU                INDIA                          0_24 months          1      117     206
24 months   ki1000304-EU                INDIA                          1_24 months          0       12      47
24 months   ki1000304-EU                INDIA                          1_24 months          1       35      47
24 months   ki1000304-Vitamin-B12       INDIA                          0_24 months          0       70     119
24 months   ki1000304-Vitamin-B12       INDIA                          0_24 months          1       49     119
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months          0        4      14
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months          1       10      14
24 months   ki1000304-ZnMort            INDIA                          0_24 months          0       56     118
24 months   ki1000304-ZnMort            INDIA                          0_24 months          1       62     118
24 months   ki1000304-ZnMort            INDIA                          1_24 months          0        1      22
24 months   ki1000304-ZnMort            INDIA                          1_24 months          1       21      22
24 months   ki1017093b-PROVIDE          BANGLADESH                     0_24 months          0        1       1
24 months   ki1017093b-PROVIDE          BANGLADESH                     0_24 months          1        0       1
24 months   ki1017093b-PROVIDE          BANGLADESH                     1_24 months          0        1       1
24 months   ki1017093b-PROVIDE          BANGLADESH                     1_24 months          1        0       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_24 months          0        2       3
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_24 months          1        1       3
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_24 months          0        1       1
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_24 months          1        0       1
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months          0      705    1020
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months          1      315    1020
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months          0       47     149
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months          1      102     149
24 months   ki1119695-PROBIT            BELARUS                        0_24 months          0      550     622
24 months   ki1119695-PROBIT            BELARUS                        0_24 months          1       72     622
24 months   ki1119695-PROBIT            BELARUS                        1_24 months          0      191     219
24 months   ki1119695-PROBIT            BELARUS                        1_24 months          1       28     219
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months          0       11      28
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months          1       17      28
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months          0        3       4
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months          1        1       4
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months          0       72     321
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months          1      249     321
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months          0        2      13
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months          1       11      13
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months          0      380     764
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months          1      384     764
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months          0        5      12
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months          1        7      12
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months          0       37      61
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months          1       24      61
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_24 months          0        1       4
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_24 months          1        3       4
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months          0      237     377
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months          1      140     377
24 months   ki1148112-LCNI-5            MALAWI                         1_24 months          0        4       8
24 months   ki1148112-LCNI-5            MALAWI                         1_24 months          1        4       8
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months          0       67     125
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months          1       58     125
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months          0        4      12
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months          1        8      12
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months          0     1080    1783
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months          1      703    1783
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months          0       60     129
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months          1       69     129


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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXenwast: 1_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXenwast: 1_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenwast: 1_Birth
* agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXenwast: 1_6 months
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXenwast: 1_6 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenwast: 0_24 months
* agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXenwast: 0_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXenwast: 0_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenwast: 1_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenwast: 1_24 months
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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/0cbc345a-9f49-443e-8291-71bad99dc3fa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0cbc345a-9f49-443e-8291-71bad99dc3fa/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0cbc345a-9f49-443e-8291-71bad99dc3fa/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0cbc345a-9f49-443e-8291-71bad99dc3fa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                     country                        intXenwast    intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          0_Birth       Control              NA                0.1379310    0.1181320   0.1577301
Birth       ki1000304b-SAS-CompFeed     INDIA                          0_Birth       Other                NA                0.1724138    0.0257359   0.3190917
Birth       ki1119695-PROBIT            BELARUS                        0_Birth       Control              NA                0.0026835    0.0002618   0.0051052
Birth       ki1119695-PROBIT            BELARUS                        0_Birth       Maternal             NA                0.0020983    0.0007968   0.0033998
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       0_Birth       Control              NA                0.0569832    0.0482147   0.0657518
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       0_Birth       VitA                 NA                0.0551952    0.0502435   0.0601469
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth       Control              NA                0.0379965    0.0224202   0.0535729
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth       VitA                 NA                0.0410380    0.0314842   0.0505919
Birth       ki1135781-COHORTS           GUATEMALA                      0_Birth       Control              NA                0.0492424    0.0231186   0.0753662
Birth       ki1135781-COHORTS           GUATEMALA                      0_Birth       Other                NA                0.0366667    0.0153805   0.0579528
Birth       kiGH5241-JiVitA-3           BANGLADESH                     0_Birth       Control              NA                0.1688330    0.1587904   0.1788757
Birth       kiGH5241-JiVitA-3           BANGLADESH                     0_Birth       Maternal             NA                0.1480973    0.1395517   0.1566428
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth       Control              NA                0.1517857    0.1227564   0.1808151
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth       Maternal             NA                0.1372032    0.1068496   0.1675567
Birth       kiGH5241-JiVitA-4           BANGLADESH                     0_Birth       Control              NA                0.1590909    0.1033526   0.2148292
Birth       kiGH5241-JiVitA-4           BANGLADESH                     0_Birth       LNS                  NA                0.1944444    0.1276620   0.2612269
Birth       kiGH5241-JiVitA-4           BANGLADESH                     0_Birth       Other                NA                0.1271478    0.0858390   0.1684565
Birth       kiGH5241-JiVitA-4           BANGLADESH                     1_Birth       Control              NA                0.2222222   -0.0612284   0.5056728
Birth       kiGH5241-JiVitA-4           BANGLADESH                     1_Birth       LNS                  NA                0.2000000   -0.0587242   0.4587242
Birth       kiGH5241-JiVitA-4           BANGLADESH                     1_Birth       Other                NA                0.2352941    0.0466858   0.4239024
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    Control              NA                0.2134146    0.1690399   0.2577894
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    LNS                  NA                0.2051282    0.1602876   0.2499688
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months    Control              NA                0.2727273    0.0036251   0.5418295
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months    LNS                  NA                0.2500000   -0.0005017   0.5005017
6 months    ki1000107-Serrinha-VitA     BRAZIL                         0_6 months    Control              NA                0.3333333    0.0911866   0.5754801
6 months    ki1000107-Serrinha-VitA     BRAZIL                         0_6 months    VitA                 NA                0.1578947   -0.0085311   0.3243206
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_6 months    Control              NA                0.1870968    0.1256543   0.2485392
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_6 months    LNS                  NA                0.1444444    0.0930495   0.1958394
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_6 months    Other                NA                0.1265823    0.0898933   0.1632713
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months    Control              NA                0.0000000    0.0000000   0.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months    LNS                  NA                0.3750000    0.0339807   0.7160193
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months    Other                NA                0.1176471   -0.0380411   0.2733352
6 months    ki1000111-WASH-Kenya        KENYA                          0_6 months    Control              NA                0.0833333   -0.0280178   0.1946845
6 months    ki1000111-WASH-Kenya        KENYA                          0_6 months    LNS                  NA                0.2000000   -0.0038447   0.4038447
6 months    ki1000111-WASH-Kenya        KENYA                          0_6 months    Other                NA                0.1515152    0.0283244   0.2747060
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    Control              NA                0.3000000    0.2472068   0.3527932
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    Maternal             NA                0.2192982    0.1655381   0.2730584
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    Control              NA                0.3947368    0.2844973   0.5049763
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    Maternal             NA                0.2771084    0.1805166   0.3737003
6 months    ki1000304-EU                INDIA                          0_6 months    Control              NA                0.3160920    0.2468998   0.3852841
6 months    ki1000304-EU                INDIA                          0_6 months    Zinc                 NA                0.2857143    0.2125719   0.3588566
6 months    ki1000304-EU                INDIA                          1_6 months    Control              NA                0.5833333    0.3837023   0.7829643
6 months    ki1000304-EU                INDIA                          1_6 months    Zinc                 NA                0.3333333    0.1129198   0.5537469
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    Control              NA                0.3595608    0.3311055   0.3880162
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    VitA                 NA                0.3227907    0.2948353   0.3507461
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    Control              NA                0.3430233    0.2719739   0.4140726
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    VitA                 NA                0.3869048    0.3131485   0.4606611
6 months    ki1000304-Vitamin-B12       INDIA                          0_6 months    Control              NA                0.4000000    0.1504347   0.6495653
6 months    ki1000304-Vitamin-B12       INDIA                          0_6 months    Other                NA                0.2622951    0.1511742   0.3734160
6 months    ki1000304-ZnMort            INDIA                          0_6 months    Control              NA                0.3472222    0.2368040   0.4576405
6 months    ki1000304-ZnMort            INDIA                          0_6 months    Zinc                 NA                0.3137255    0.1858582   0.4415928
6 months    ki1000304-ZnMort            INDIA                          1_6 months    Control              NA                0.4285714    0.1632463   0.6938965
6 months    ki1000304-ZnMort            INDIA                          1_6 months    Zinc                 NA                0.6250000    0.2816315   0.9683685
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    Control              NA                0.2254098    0.1758461   0.2749736
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    Other                NA                0.2071713    0.1604814   0.2538612
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    Control              NA                0.3200000    0.0144213   0.6255787
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    Other                NA                0.2941176    0.1785535   0.4096818
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months    Control              NA                0.4933333    0.3799892   0.6066774
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months    Other                NA                0.3906977    0.3253672   0.4560281
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    Control              NA                0.6666667    0.4262509   0.9070824
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    Other                NA                0.4000000    0.2631530   0.5368470
6 months    ki1017093b-PROVIDE          BANGLADESH                     0_6 months    Control              NA                0.2500000   -0.0550169   0.5550169
6 months    ki1017093b-PROVIDE          BANGLADESH                     0_6 months    Other                NA                0.1304348   -0.0094763   0.2703459
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Control              NA                0.1138614    0.0828777   0.1448450
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Other                NA                0.1076923    0.0769171   0.1384676
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Zinc                 NA                0.1048689    0.0836445   0.1260933
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    Control              NA                0.0000000    0.0000000   0.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    Other                NA                0.0967742   -0.0078045   0.2013529
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    Zinc                 NA                0.1509434    0.0540970   0.2477898
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6 months    Control              NA                0.0704225    0.0108551   0.1299900
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6 months    Zinc                 NA                0.0971074    0.0707039   0.1235109
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months    Control              NA                0.4000000    0.0943190   0.7056810
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months    Zinc                 NA                0.2615385    0.1539817   0.3690953
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months    Control              NA                0.3113208    0.2229670   0.3996745
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months    Other                NA                0.2777778    0.1931062   0.3624493
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    Control              NA                0.0726884    0.0416151   0.1037617
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    Maternal             NA                0.0561132    0.0400043   0.0722221
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    Control              NA                0.0710456    0.0476995   0.0943916
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    Maternal             NA                0.0511060    0.0314072   0.0708049
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    Control              NA                0.1384514    0.1211102   0.1557926
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    VitA                 NA                0.1324503    0.1227388   0.1421619
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    Control              NA                0.1972318    0.1513360   0.2431277
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    VitA                 NA                0.2423529    0.2135334   0.2711725
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    Control              NA                0.4791667    0.4257127   0.5326207
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    Other                NA                0.3787466    0.3290836   0.4284096
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    Control              NA                0.4183673    0.3204140   0.5163207
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    Other                NA                0.2777778    0.1740137   0.3815419
6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_6 months    Control              NA                0.3226837    0.2708784   0.3744890
6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_6 months    LNS                  NA                0.2930057    0.2706071   0.3154042
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months    Control              NA                0.5714286    0.1985621   0.9442950
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months    LNS                  NA                0.5652174    0.3591593   0.7712755
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    Control              NA                0.2134146    0.1690517   0.2577776
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    Maternal             NA                0.2046875    0.1734125   0.2359625
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months    Control              NA                0.2727273    0.0055822   0.5398723
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months    Maternal             NA                0.3478261    0.1502522   0.5453999
6 months    ki1148112-LCNI-5            MALAWI                         0_6 months    Control              NA                0.3414634    0.2765108   0.4064160
6 months    ki1148112-LCNI-5            MALAWI                         0_6 months    LNS                  NA                0.3662651    0.3198842   0.4126459
6 months    ki1148112-LCNI-5            MALAWI                         0_6 months    Other                NA                0.3951220    0.3281591   0.4620848
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    Control              NA                0.5000000   -0.0084877   1.0084877
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    LNS                  NA                0.2857143   -0.0615766   0.6330052
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    Other                NA                0.6666667    0.1130954   1.2202379
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    Control              NA                0.1847309    0.1730007   0.1964610
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    Maternal             NA                0.1746032    0.1643665   0.1848398
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    Control              NA                0.1954984    0.1605239   0.2304729
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    Maternal             NA                0.1900270    0.1546339   0.2254200
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    Control              NA                0.1916256    0.1642556   0.2189956
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    LNS                  NA                0.2065771    0.1802955   0.2328587
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    Other                NA                0.2247975    0.2014733   0.2481218
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    Control              NA                0.2512563    0.1637917   0.3387209
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    LNS                  NA                0.1846154    0.0950109   0.2742199
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    Other                NA                0.3078947    0.2388801   0.3769094
24 months   iLiNS_DYADM_LNS             MALAWI                         0_24 months   Control              NA                0.6363636    0.3476814   0.9250459
24 months   iLiNS_DYADM_LNS             MALAWI                         0_24 months   LNS                  NA                0.3181818    0.1205346   0.5158290
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months   Control              NA                0.4264706    0.3084605   0.5444807
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months   VitA                 NA                0.4333333    0.3074551   0.5592115
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   Control              NA                0.3920000    0.3314553   0.4525447
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   LNS                  NA                0.3589744    0.3020446   0.4159042
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   Other                NA                0.3834862    0.3426449   0.4243275
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   Control              NA                0.8095238    0.6408661   0.9781815
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   LNS                  NA                0.5294118    0.3609279   0.6978957
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   Other                NA                0.6718750    0.5563557   0.7873943
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   Control              NA                0.2976996    0.2647254   0.3306738
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   LNS                  NA                0.2900609    0.2499947   0.3301270
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   Other                NA                0.3078491    0.2789569   0.3367414
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   Control              NA                0.6190476    0.4092812   0.8288140
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   LNS                  NA                0.4285714    0.0583243   0.7988186
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   Other                NA                0.7826087    0.6123624   0.9528550
24 months   ki1000304-EU                INDIA                          0_24 months   Control              NA                0.6057692    0.5116200   0.6999185
24 months   ki1000304-EU                INDIA                          0_24 months   Zinc                 NA                0.5294118    0.4323111   0.6265124
24 months   ki1000304-EU                INDIA                          1_24 months   Control              NA                0.7619048    0.5777707   0.9460388
24 months   ki1000304-EU                INDIA                          1_24 months   Zinc                 NA                0.7307692    0.5584301   0.9031084
24 months   ki1000304-Vitamin-B12       INDIA                          0_24 months   Control              NA                0.3428571    0.1849386   0.5007757
24 months   ki1000304-Vitamin-B12       INDIA                          0_24 months   Other                NA                0.4404762    0.3338629   0.5470895
24 months   ki1000304-ZnMort            INDIA                          0_24 months   Control              NA                0.5517241    0.4231908   0.6802575
24 months   ki1000304-ZnMort            INDIA                          0_24 months   Zinc                 NA                0.5000000    0.3729454   0.6270546
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months   Control              NA                0.2857143    0.1962293   0.3751992
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months   Zinc                 NA                0.3112798    0.2813784   0.3411813
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   Control              NA                0.6956522    0.5069714   0.8843329
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   Zinc                 NA                0.6825397    0.6009878   0.7640915
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   Control              NA                0.1102941    0.0411236   0.1794647
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   Maternal             NA                0.1200000    0.0662570   0.1737430
24 months   ki1119695-PROBIT            BELARUS                        1_24 months   Control              NA                0.1666667    0.0285040   0.3048293
24 months   ki1119695-PROBIT            BELARUS                        1_24 months   Maternal             NA                0.0940171    0.0381894   0.1498448
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   Control              NA                0.5000000    0.0925826   0.9074174
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   VitA                 NA                0.6363636    0.4316625   0.8410648
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   Control              NA                0.7875000    0.7240151   0.8509849
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   Other                NA                0.7639752    0.6982803   0.8296700
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   Control              NA                0.5118110    0.4248190   0.5988030
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   LNS                  NA                0.5007849    0.4619312   0.5396386
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months   Control              NA                0.5000000   -0.2237647   1.2237647
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months   LNS                  NA                0.6000000    0.2828622   0.9171378
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   Control              NA                0.6363636    0.3497299   0.9229974
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   Maternal             NA                0.3400000    0.2076074   0.4723926
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   Control              NA                0.3818182    0.2909075   0.4727289
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   LNS                  NA                0.3908046    0.3182093   0.4633999
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   Other                NA                0.3225806    0.2274476   0.4177137
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months   Control              NA                0.4259259    0.2510527   0.6007992
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months   Maternal             NA                0.4929577    0.3518621   0.6340534
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   Control              NA                0.4134199    0.3411747   0.4856651
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   LNS                  NA                0.3918367    0.3261776   0.4574959
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   Other                NA                0.3850782    0.3330699   0.4370866
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   Control              NA                0.5161290    0.2825500   0.7497080
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   LNS                  NA                0.4146341    0.2144086   0.6148597
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   Other                NA                0.6315789    0.4515823   0.8115756


### Parameter: E(Y)


agecat      studyid                     country                        intXenwast    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------------  -----------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          0_Birth       NA                   NA                0.1551724   0.0811316   0.2292133
Birth       ki1119695-PROBIT            BELARUS                        0_Birth       NA                   NA                0.0023775   0.0010265   0.0037285
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       0_Birth       NA                   NA                0.0556374   0.0513254   0.0599495
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth       NA                   NA                0.0402504   0.0321020   0.0483989
Birth       ki1135781-COHORTS           GUATEMALA                      0_Birth       NA                   NA                0.0425532   0.0258801   0.0592263
Birth       kiGH5241-JiVitA-3           BANGLADESH                     0_Birth       NA                   NA                0.1582060   0.1515770   0.1648351
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth       NA                   NA                0.1446174   0.1236010   0.1656338
Birth       kiGH5241-JiVitA-4           BANGLADESH                     0_Birth       NA                   NA                0.1545595   0.1240892   0.1850299
Birth       kiGH5241-JiVitA-4           BANGLADESH                     1_Birth       NA                   NA                0.2222222   0.0877698   0.3566746
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    NA                   NA                0.2093750   0.1778289   0.2409211
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months    NA                   NA                0.2608696   0.0773810   0.4443581
6 months    ki1000107-Serrinha-VitA     BRAZIL                         0_6 months    NA                   NA                0.2352941   0.0905690   0.3800192
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_6 months    NA                   NA                0.1459293   0.1187894   0.1730693
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months    NA                   NA                0.1612903   0.0296777   0.2929029
6 months    ki1000111-WASH-Kenya        KENYA                          0_6 months    NA                   NA                0.1388889   0.0584470   0.2193308
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    NA                   NA                0.2644788   0.2264602   0.3024973
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    NA                   NA                0.3333333   0.2598289   0.4068377
6 months    ki1000304-EU                INDIA                          0_6 months    NA                   NA                0.3021807   0.2518679   0.3524934
6 months    ki1000304-EU                INDIA                          1_6 months    NA                   NA                0.4761905   0.3233166   0.6290643
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    NA                   NA                0.3413284   0.3213648   0.3612920
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    NA                   NA                0.3647059   0.3134661   0.4159456
6 months    ki1000304-Vitamin-B12       INDIA                          0_6 months    NA                   NA                0.2894737   0.1868348   0.3921126
6 months    ki1000304-ZnMort            INDIA                          0_6 months    NA                   NA                0.3333333   0.2496841   0.4169826
6 months    ki1000304-ZnMort            INDIA                          1_6 months    NA                   NA                0.5000000   0.2861504   0.7138496
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    NA                   NA                0.2161616   0.1809105   0.2514127
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    NA                   NA                0.3050847   0.1591685   0.4510010
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months    NA                   NA                0.4172414   0.3603905   0.4740923
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    NA                   NA                0.4615385   0.3394037   0.5836733
6 months    ki1017093b-PROVIDE          BANGLADESH                     0_6 months    NA                   NA                0.1612903   0.0296777   0.2929029
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    NA                   NA                0.1078370   0.0926101   0.1230638
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    NA                   NA                0.1057692   0.0463764   0.1651621
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6 months    NA                   NA                0.0936937   0.0694284   0.1179590
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months    NA                   NA                0.2800000   0.1776996   0.3823004
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months    NA                   NA                0.2943925   0.2331852   0.3555998
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    NA                   NA                0.0640719   0.0461306   0.0820131
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    NA                   NA                0.0617196   0.0456326   0.0778066
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    NA                   NA                0.1339243   0.1254496   0.1423989
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    NA                   NA                0.2309043   0.2064203   0.2553883
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    NA                   NA                0.4267425   0.3901546   0.4633304
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    NA                   NA                0.3588235   0.2865076   0.4311395
6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_6 months    NA                   NA                0.2978947   0.2773255   0.3184640
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months    NA                   NA                0.5666667   0.3863134   0.7470199
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    NA                   NA                0.2076446   0.1820791   0.2332102
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months    NA                   NA                0.3235294   0.1639149   0.4831440
6 months    ki1148112-LCNI-5            MALAWI                         0_6 months    NA                   NA                0.3672727   0.3343582   0.4001872
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    NA                   NA                0.4285714   0.1595611   0.6975818
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    NA                   NA                0.1795622   0.1717825   0.1873418
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    NA                   NA                0.1928266   0.1679412   0.2177119
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    NA                   NA                0.2110682   0.1961778   0.2259586
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    NA                   NA                0.2622739   0.2155851   0.3089627
24 months   iLiNS_DYADM_LNS             MALAWI                         0_24 months   NA                   NA                0.4242424   0.2530045   0.5954804
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months   NA                   NA                0.4296875   0.3435923   0.5157827
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   NA                   NA                0.3792135   0.3501010   0.4083259
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   NA                   NA                0.6554622   0.5697191   0.7412053
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   NA                   NA                0.3004971   0.2813910   0.3196031
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   NA                   NA                0.6666667   0.5360024   0.7973309
24 months   ki1000304-EU                INDIA                          0_24 months   NA                   NA                0.5679612   0.5001515   0.6357709
24 months   ki1000304-EU                INDIA                          1_24 months   NA                   NA                0.7446809   0.6186735   0.8706882
24 months   ki1000304-Vitamin-B12       INDIA                          0_24 months   NA                   NA                0.4117647   0.3229659   0.5005635
24 months   ki1000304-ZnMort            INDIA                          0_24 months   NA                   NA                0.5254237   0.4349416   0.6159059
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months   NA                   NA                0.3088235   0.2804567   0.3371904
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   NA                   NA                0.6845638   0.6096986   0.7594290
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   NA                   NA                0.1157556   0.0731669   0.1583444
24 months   ki1119695-PROBIT            BELARUS                        1_24 months   NA                   NA                0.1278539   0.0556743   0.2000335
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   NA                   NA                0.6071429   0.4229262   0.7913595
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   NA                   NA                0.7757009   0.7299991   0.8214028
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   NA                   NA                0.5026178   0.4671406   0.5380950
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months   NA                   NA                0.5833333   0.2919904   0.8746763
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   NA                   NA                0.3934426   0.2698339   0.5170513
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   NA                   NA                0.3713528   0.3225156   0.4201900
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months   NA                   NA                0.4640000   0.3533684   0.5746316
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   NA                   NA                0.3942793   0.3588023   0.4297563
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   NA                   NA                0.5348837   0.4163162   0.6534512


### Parameter: RR


agecat      studyid                     country                        intXenwast    intervention_level   baseline_level            estimate           ci_lower            ci_upper
----------  --------------------------  -----------------------------  ------------  -------------------  ---------------  -----------------  -----------------  ------------------
Birth       ki1000304b-SAS-CompFeed     INDIA                          0_Birth       Control              Control                  1.0000000          1.0000000           1.0000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          0_Birth       Other                Control                  1.2500000          0.5275227           2.9619581
Birth       ki1119695-PROBIT            BELARUS                        0_Birth       Control              Control                  1.0000000          1.0000000           1.0000000
Birth       ki1119695-PROBIT            BELARUS                        0_Birth       Maternal             Control                  0.7819049          0.2617262           2.3359344
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       0_Birth       Control              Control                  1.0000000          1.0000000           1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       0_Birth       VitA                 Control                  0.9686217          0.8105820           1.1574744
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth       Control              Control                  1.0000000          1.0000000           1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth       VitA                 Control                  1.0800461          0.6740638           1.7305477
Birth       ki1135781-COHORTS           GUATEMALA                      0_Birth       Control              Control                  1.0000000          1.0000000           1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      0_Birth       Other                Control                  0.7446154          0.3391508           1.6348246
Birth       kiGH5241-JiVitA-3           BANGLADESH                     0_Birth       Control              Control                  1.0000000          1.0000000           1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     0_Birth       Maternal             Control                  0.8771818          0.8074152           0.9529766
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth       Control              Control                  1.0000000          1.0000000           1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth       Maternal             Control                  0.9039267          0.6747592           1.2109261
Birth       kiGH5241-JiVitA-4           BANGLADESH                     0_Birth       Control              Control                  1.0000000          1.0000000           1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH                     0_Birth       LNS                  Control                  1.2222222          0.7482884           1.9963255
Birth       kiGH5241-JiVitA-4           BANGLADESH                     0_Birth       Other                Control                  0.7992145          0.4956085           1.2888073
Birth       kiGH5241-JiVitA-4           BANGLADESH                     1_Birth       Control              Control                  1.0000000          1.0000000           1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH                     1_Birth       LNS                  Control                  0.9000000          0.1463041           5.5364144
Birth       kiGH5241-JiVitA-4           BANGLADESH                     1_Birth       Other                Control                  1.0588235          0.2347273           4.7762117
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    LNS                  Control                  0.9611722          0.7108491           1.2996456
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months    LNS                  Control                  0.9166667          0.2246331           3.7406673
6 months    ki1000107-Serrinha-VitA     BRAZIL                         0_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000107-Serrinha-VitA     BRAZIL                         0_6 months    VitA                 Control                  0.4736842          0.1316867           1.7038682
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_6 months    LNS                  Control                  0.7720307          0.4757185           1.2529075
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_6 months    Other                Control                  0.6765605          0.4365963           1.0484148
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months    LNS                  Control           43368297.7473477   13508469.1207478   139231857.6361739
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months    Other                Control           13605740.4697561    3000982.8999600    61685181.1227664
6 months    ki1000111-WASH-Kenya        KENYA                          0_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000111-WASH-Kenya        KENYA                          0_6 months    LNS                  Control                  2.4000000          0.4470469          12.8845549
6 months    ki1000111-WASH-Kenya        KENYA                          0_6 months    Other                Control                  1.8181818          0.3804873           8.6882925
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    Maternal             Control                  0.7309942          0.5405765           0.9884864
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    Maternal             Control                  0.7020080          0.4491227           1.0972843
6 months    ki1000304-EU                INDIA                          0_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000304-EU                INDIA                          0_6 months    Zinc                 Control                  0.9038961          0.6454117           1.2659022
6 months    ki1000304-EU                INDIA                          1_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000304-EU                INDIA                          1_6 months    Zinc                 Control                  0.5714286          0.2713985           1.2031410
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    VitA                 Control                  0.8977360          0.7983588           1.0094833
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    VitA                 Control                  1.1279257          0.8511906           1.4946318
6 months    ki1000304-Vitamin-B12       INDIA                          0_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000304-Vitamin-B12       INDIA                          0_6 months    Other                Control                  0.6557377          0.3084650           1.3939730
6 months    ki1000304-ZnMort            INDIA                          0_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000304-ZnMort            INDIA                          0_6 months    Zinc                 Control                  0.9035294          0.5388032           1.5151459
6 months    ki1000304-ZnMort            INDIA                          1_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000304-ZnMort            INDIA                          1_6 months    Zinc                 Control                  1.4583333          0.6373632           3.3367729
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    Other                Control                  0.9190873          0.6709313           1.2590282
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    Other                Control                  0.9191176          0.3270264           2.5832078
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months    Other                Control                  0.7919547          0.5960621           1.0522265
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    Other                Control                  0.6000000          0.3649806           0.9863537
6 months    ki1017093b-PROVIDE          BANGLADESH                     0_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1017093b-PROVIDE          BANGLADESH                     0_6 months    Other                Control                  0.5217391          0.1027833           2.6484052
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Other                Control                  0.9458194          0.6374319           1.4034037
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Zinc                 Control                  0.9210226          0.6561270           1.2928636
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    Other                Control           11191818.7735092    3540756.0485113    35375723.6429025
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    Zinc                 Control           17456421.7347815    8214076.4805426    37098103.5426668
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6 months    Zinc                 Control                  1.3789256          0.5671224           3.3527789
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months    Zinc                 Control                  0.6538462          0.2745249           1.5572899
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months    Other                Control                  0.8922559          0.5883196           1.3532110
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    Maternal             Control                  0.7719693          0.4620307           1.2898203
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    Maternal             Control                  0.7193414          0.4336391           1.1932783
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    VitA                 Control                  0.9566555          0.8274172           1.1060801
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    VitA                 Control                  1.2287719          0.9461930           1.5957426
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    Other                Control                  0.7904277          0.6654184           0.9389219
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    Other                Control                  0.6639566          0.4272444           1.0318180
6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_6 months    LNS                  Control                  0.9080275          0.7601067           1.0847345
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months    LNS                  Control                  0.9891304          0.4684241           2.0886606
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    Maternal             Control                  0.9591071          0.7410119           1.2413923
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months    Maternal             Control                  1.2753623          0.4110322           3.9572301
6 months    ki1148112-LCNI-5            MALAWI                         0_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         0_6 months    LNS                  Control                  1.0726334          0.8535106           1.3480119
6 months    ki1148112-LCNI-5            MALAWI                         0_6 months    Other                Control                  1.1571429          0.8969012           1.4928953
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    LNS                  Control                  0.5714286          0.1171316           2.7877250
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    Other                Control                  1.3333333          0.3587149           4.9559637
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    Maternal             Control                  0.9451760          0.8669187           1.0304977
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    Maternal             Control                  0.9720129          0.7507875           1.2584240
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    LNS                  Control                  1.0780246          0.8903288           1.3052896
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    Other                Control                  1.1731080          0.9832621           1.3996089
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    LNS                  Control                  0.7347692          0.4043114           1.3353219
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    Other                Control                  1.2254211          0.8100231           1.8538444
24 months   iLiNS_DYADM_LNS             MALAWI                         0_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   iLiNS_DYADM_LNS             MALAWI                         0_24 months   LNS                  Control                  0.5000000          0.2316941           1.0790088
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months   VitA                 Control                  1.0160920          0.6802966           1.5176363
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   LNS                  Control                  0.9157509          0.7338992           1.1426634
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   Other                Control                  0.9782812          0.8109348           1.1801616
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   LNS                  Control                  0.6539792          0.4470620           0.9566657
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   Other                Control                  0.8299632          0.6334969           1.0873596
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   LNS                  Control                  0.9743408          0.8162380           1.1630675
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   Other                Control                  1.0340932          0.8943543           1.1956658
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   LNS                  Control                  0.6923077          0.2737026           1.7511338
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   Other                Control                  1.2642140          0.8451675           1.8910300
24 months   ki1000304-EU                INDIA                          0_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1000304-EU                INDIA                          0_24 months   Zinc                 Control                  0.8739496          0.6871930           1.1114605
24 months   ki1000304-EU                INDIA                          1_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1000304-EU                INDIA                          1_24 months   Zinc                 Control                  0.9591346          0.6842728           1.3444042
24 months   ki1000304-Vitamin-B12       INDIA                          0_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1000304-Vitamin-B12       INDIA                          0_24 months   Other                Control                  1.2847222          0.7635499           2.1616285
24 months   ki1000304-ZnMort            INDIA                          0_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1000304-ZnMort            INDIA                          0_24 months   Zinc                 Control                  0.9062500          0.6419922           1.2792820
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months   Zinc                 Control                  1.0894794          0.7851367           1.5117945
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   Zinc                 Control                  0.9811508          0.7294903           1.3196294
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   Maternal             Control                  1.0880000          0.5018564           2.3587306
24 months   ki1119695-PROBIT            BELARUS                        1_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1119695-PROBIT            BELARUS                        1_24 months   Maternal             Control                  0.5641026          0.2025966           1.5706669
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   VitA                 Control                  1.2727273          0.5300052           3.0562619
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   Other                Control                  0.9701272          0.8622604           1.0914879
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   LNS                  Control                  0.9784567          0.8117051           1.1794648
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months   LNS                  Control                  1.2000000          0.2569969           5.6031795
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   Maternal             Control                  0.5342857          0.2945727           0.9690687
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   LNS                  Control                  1.0235359          0.7567471           1.3843801
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   Other                Control                  0.8448541          0.5783231           1.2342208
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months   Maternal             Control                  1.1573791          0.7017032           1.9089641
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   LNS                  Control                  0.9477936          0.7436723           1.2079415
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   Other                Control                  0.9314457          0.7468697           1.1616367
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   LNS                  Control                  0.8033537          0.4144973           1.5570116
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   Other                Control                  1.2236842          0.7168254           2.0889370


### Parameter: PAR


agecat      studyid                     country                        intXenwast    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          0_Birth       Control              NA                 0.0172414   -0.0568069    0.0912896
Birth       ki1119695-PROBIT            BELARUS                        0_Birth       Control              NA                -0.0003061   -0.0017441    0.0011320
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       0_Birth       Control              NA                -0.0013458   -0.0089253    0.0062337
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth       Control              NA                 0.0022539   -0.0112874    0.0157953
Birth       ki1135781-COHORTS           GUATEMALA                      0_Birth       Control              NA                -0.0066892   -0.0246212    0.0112427
Birth       kiGH5241-JiVitA-3           BANGLADESH                     0_Birth       Control              NA                -0.0106270   -0.0174503   -0.0038038
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth       Control              NA                -0.0071683   -0.0278257    0.0134890
Birth       kiGH5241-JiVitA-4           BANGLADESH                     0_Birth       Control              NA                -0.0045314   -0.0529708    0.0439080
Birth       kiGH5241-JiVitA-4           BANGLADESH                     1_Birth       Control              NA                 0.0000000   -0.2413495    0.2413495
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    Control              NA                -0.0040396   -0.0347956    0.0267163
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months    Control              NA                -0.0118577   -0.2037342    0.1800187
6 months    ki1000107-Serrinha-VitA     BRAZIL                         0_6 months    Control              NA                -0.0980392   -0.2649032    0.0688248
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_6 months    Control              NA                -0.0411674   -0.0932640    0.0109291
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months    Control              NA                 0.1612903    0.0296777    0.2929029
6 months    ki1000111-WASH-Kenya        KENYA                          0_6 months    Control              NA                 0.0555556   -0.0474198    0.1585309
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    Control              NA                -0.0355212   -0.0688652   -0.0021773
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    Control              NA                -0.0614035   -0.1384614    0.0156544
6 months    ki1000304-EU                INDIA                          0_6 months    Control              NA                -0.0139113   -0.0600489    0.0322264
6 months    ki1000304-EU                INDIA                          1_6 months    Control              NA                -0.1071429   -0.2400985    0.0258128
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    Control              NA                -0.0182324   -0.0380270    0.0015621
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    Control              NA                 0.0216826   -0.0289743    0.0723396
6 months    ki1000304-Vitamin-B12       INDIA                          0_6 months    Control              NA                -0.1105263   -0.3301448    0.1090921
6 months    ki1000304-ZnMort            INDIA                          0_6 months    Control              NA                -0.0138889   -0.0840002    0.0562224
6 months    ki1000304-ZnMort            INDIA                          1_6 months    Control              NA                 0.0714286   -0.0914590    0.2343161
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    Control              NA                -0.0092482   -0.0439290    0.0254325
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    Control              NA                -0.0149153   -0.2040631    0.1742326
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months    Control              NA                -0.0760920   -0.1732206    0.0210367
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    Control              NA                -0.2051282   -0.4196972    0.0094408
6 months    ki1017093b-PROVIDE          BANGLADESH                     0_6 months    Control              NA                -0.0887097   -0.3383874    0.1609681
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Control              NA                -0.0060244   -0.0325862    0.0205374
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    Control              NA                 0.1057692    0.0463764    0.1651620
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6 months    Control              NA                 0.0232712   -0.0335552    0.0800976
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months    Control              NA                -0.1200000   -0.4010493    0.1610493
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months    Control              NA                -0.0169282   -0.0787286    0.0448722
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    Control              NA                -0.0086165   -0.0265459    0.0093128
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    Control              NA                -0.0093260   -0.0241240    0.0054720
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    Control              NA                -0.0045272   -0.0195212    0.0104668
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    Control              NA                 0.0336725   -0.0067869    0.0741319
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    Control              NA                -0.0524241   -0.0906952   -0.0141531
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    Control              NA                -0.0595438   -0.1208801    0.0017925
6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_6 months    Control              NA                -0.0247890   -0.0719339    0.0223560
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months    Control              NA                -0.0047619   -0.3313753    0.3218515
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    Control              NA                -0.0057700   -0.0416578    0.0301178
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months    Control              NA                 0.0508021   -0.1742867    0.2758910
6 months    ki1148112-LCNI-5            MALAWI                         0_6 months    Control              NA                 0.0258093   -0.0308084    0.0824271
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    Control              NA                -0.0714286   -0.4994214    0.3565643
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    Control              NA                -0.0051687   -0.0131299    0.0027925
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    Control              NA                -0.0026718   -0.0269663    0.0216227
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    Control              NA                 0.0194426   -0.0046030    0.0434882
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    Control              NA                 0.0110176   -0.0657819    0.0878171
24 months   iLiNS_DYADM_LNS             MALAWI                         0_24 months   Control              NA                -0.2121212   -0.4510806    0.0268381
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months   Control              NA                 0.0032169   -0.0776656    0.0840995
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   Control              NA                -0.0127865   -0.0656738    0.0401008
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   Control              NA                -0.1540616   -0.3145538    0.0064305
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   Control              NA                 0.0027975   -0.0241499    0.0297449
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   Control              NA                 0.0476190   -0.1099823    0.2052204
24 months   ki1000304-EU                INDIA                          0_24 months   Control              NA                -0.0378081   -0.1049802    0.0293641
24 months   ki1000304-EU                INDIA                          1_24 months   Control              NA                -0.0172239   -0.1568119    0.1223641
24 months   ki1000304-Vitamin-B12       INDIA                          0_24 months   Control              NA                 0.0689076   -0.0658289    0.2036441
24 months   ki1000304-ZnMort            INDIA                          0_24 months   Control              NA                -0.0263004   -0.1183169    0.0657161
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months   Control              NA                 0.0231092   -0.0621757    0.1083942
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   Control              NA                -0.0110884   -0.1849116    0.1627347
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   Control              NA                 0.0054615   -0.0443115    0.0552345
24 months   ki1119695-PROBIT            BELARUS                        1_24 months   Control              NA                -0.0388128   -0.1215287    0.0439031
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   Control              NA                 0.1071429   -0.2517257    0.4660114
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   Control              NA                -0.0117991   -0.0576381    0.0340400
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   Control              NA                -0.0091932   -0.0886307    0.0702443
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months   Control              NA                 0.0833333   -0.5755325    0.7421992
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   Control              NA                -0.2429210   -0.5033187    0.0174767
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   Control              NA                -0.0104654   -0.0867995    0.0658687
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months   Control              NA                 0.0380741   -0.0897576    0.1659057
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   Control              NA                -0.0191406   -0.0807733    0.0424921
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   Control              NA                 0.0187547   -0.1872310    0.2247404


### Parameter: PAF


agecat      studyid                     country                        intXenwast    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          0_Birth       Control              NA                 0.1111111   -0.4359341    0.4497495
Birth       ki1119695-PROBIT            BELARUS                        0_Birth       Control              NA                -0.1287359   -0.8723567    0.3195502
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       0_Birth       Control              NA                -0.0241888   -0.1698816    0.1033599
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth       Control              NA                 0.0559969   -0.3479320    0.3388822
Birth       ki1135781-COHORTS           GUATEMALA                      0_Birth       Control              NA                -0.1571970   -0.6597223    0.1931754
Birth       kiGH5241-JiVitA-3           BANGLADESH                     0_Birth       Control              NA                -0.0671721   -0.1109441   -0.0251248
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth       Control              NA                -0.0495676   -0.2030374    0.0843243
Birth       kiGH5241-JiVitA-4           BANGLADESH                     0_Birth       Control              NA                -0.0293182   -0.3961861    0.2411500
Birth       kiGH5241-JiVitA-4           BANGLADESH                     1_Birth       Control              NA                 0.0000000   -1.9626160    0.6624605
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    Control              NA                -0.0192938   -0.1772845    0.1174947
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months    Control              NA                -0.0454545   -1.1123997    0.4825907
6 months    ki1000107-Serrinha-VitA     BRAZIL                         0_6 months    Control              NA                -0.4166667   -1.3272568    0.1376351
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_6 months    Control              NA                -0.2821053   -0.6908915    0.0278537
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months    Control              NA                 0.9999999    0.9999999    1.0000000
6 months    ki1000111-WASH-Kenya        KENYA                          0_6 months    Control              NA                 0.4000000   -0.9644876    0.8167461
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    Control              NA                -0.1343066   -0.2673493   -0.0152303
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    Control              NA                -0.1842105   -0.4402894    0.0263384
6 months    ki1000304-EU                INDIA                          0_6 months    Control              NA                -0.0460363   -0.2104030    0.0960103
6 months    ki1000304-EU                INDIA                          1_6 months    Control              NA                -0.2250000   -0.5527708    0.0335824
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    Control              NA                -0.0534161   -0.1130429    0.0030164
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    Control              NA                 0.0594524   -0.0902491    0.1885984
6 months    ki1000304-Vitamin-B12       INDIA                          0_6 months    Control              NA                -0.3818182   -1.3953897    0.2028765
6 months    ki1000304-ZnMort            INDIA                          0_6 months    Control              NA                -0.0416667   -0.2747538    0.1488007
6 months    ki1000304-ZnMort            INDIA                          1_6 months    Control              NA                 0.1428571   -0.2594378    0.4166493
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    Control              NA                -0.0427838   -0.2163628    0.1060249
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    Control              NA                -0.0488889   -0.8671231    0.4107684
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months    Control              NA                -0.1823691   -0.4407710    0.0296884
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    Control              NA                -0.4444444   -1.0227114   -0.0314965
6 months    ki1017093b-PROVIDE          BANGLADESH                     0_6 months    Control              NA                -0.5500000   -3.1365780    0.4192059
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Control              NA                -0.0558658   -0.3331627    0.1637536
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    Control              NA                 0.9999999    0.9999998    1.0000000
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6 months    Control              NA                 0.2483749   -0.6779539    0.6633159
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months    Control              NA                -0.4285714   -1.8870852    0.2931222
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months    Control              NA                -0.0575022   -0.2896648    0.1328669
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    Control              NA                -0.1344825   -0.4304665    0.1002581
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    Control              NA                -0.1511026   -0.4147814    0.0634332
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    Control              NA                -0.0338041   -0.1520345    0.0722926
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    Control              NA                 0.1458287   -0.0482513    0.3039754
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    Control              NA                -0.1228472   -0.2166568   -0.0362708
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    Control              NA                -0.1659418   -0.3511975   -0.0060855
6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_6 months    Control              NA                -0.0832139   -0.2536099    0.0640213
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months    Control              NA                -0.0084034   -0.7859522    0.4306246
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    Control              NA                -0.0277879   -0.2159840    0.1312814
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months    Control              NA                 0.1570248   -0.9222885    0.6303327
6 months    ki1148112-LCNI-5            MALAWI                         0_6 months    Control              NA                 0.0702729   -0.0974134    0.2123364
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    Control              NA                -0.1666667   -1.7556456    0.5060645
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    Control              NA                -0.0287850   -0.0739654    0.0144948
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    Control              NA                -0.0138560   -0.1480021    0.1046149
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    Control              NA                 0.0921152   -0.0289516    0.1989373
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    Control              NA                 0.0420081   -0.3000201    0.2940505
24 months   iLiNS_DYADM_LNS             MALAWI                         0_24 months   Control              NA                -0.5000000   -1.2458799   -0.0018345
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months   Control              NA                 0.0074866   -0.1997868    0.1789518
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   Control              NA                -0.0337185   -0.1830373    0.0967538
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   Control              NA                -0.2350427   -0.5144628   -0.0071760
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   Control              NA                 0.0093095   -0.0845503    0.0950464
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   Control              NA                 0.0714286   -0.1992396    0.2810070
24 months   ki1000304-EU                INDIA                          0_24 months   Control              NA                -0.0665680   -0.1921808    0.0458097
24 months   ki1000304-EU                INDIA                          1_24 months   Control              NA                -0.0231293   -0.2290892    0.1483177
24 months   ki1000304-Vitamin-B12       INDIA                          0_24 months   Control              NA                 0.1673469   -0.2339731    0.4381473
24 months   ki1000304-ZnMort            INDIA                          0_24 months   Control              NA                -0.0500556   -0.2409665    0.1114855
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months   Control              NA                 0.0748299   -0.2469539    0.3135755
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   Control              NA                -0.0161978   -0.3046823    0.2084985
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   Control              NA                 0.0471814   -0.4999414    0.3947341
24 months   ki1119695-PROBIT            BELARUS                        1_24 months   Control              NA                -0.3035714   -1.0080863    0.1537722
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   Control              NA                 0.1764706   -0.6957377    0.6000557
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   Control              NA                -0.0152108   -0.0761016    0.0422345
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   Control              NA                -0.0182907   -0.1892698    0.1281071
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months   Control              NA                 0.1428571   -2.2131661    0.7713489
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   Control              NA                -0.6174242   -1.4815875   -0.0541886
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   Control              NA                -0.0281818   -0.2557357    0.1581367
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months   Control              NA                 0.0820562   -0.2420499    0.3215886
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   Control              NA                -0.0485458   -0.2169992    0.0965908
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   Control              NA                 0.0350631   -0.4378772    0.3524459
