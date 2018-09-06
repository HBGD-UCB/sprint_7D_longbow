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
* intXenstunt

## Data Summary

agecat      studyid                     country                        intXenstunt    stunted   n_cell       n
----------  --------------------------  -----------------------------  ------------  --------  -------  ------
Birth       iLiNS_DYADM_LNS             MALAWI                         1_Birth              0        0       1
Birth       iLiNS_DYADM_LNS             MALAWI                         1_Birth              1        1       1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       0_Birth              0       11      11
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       0_Birth              1        0      11
Birth       ki1000304b-SAS-CompFeed     INDIA                          0_Birth              0      106     106
Birth       ki1000304b-SAS-CompFeed     INDIA                          0_Birth              1        0     106
Birth       ki1000304b-SAS-CompFeed     INDIA                          1_Birth              0        0      38
Birth       ki1000304b-SAS-CompFeed     INDIA                          1_Birth              1       38      38
Birth       ki1119695-PROBIT            BELARUS                        0_Birth              0    13851   13851
Birth       ki1119695-PROBIT            BELARUS                        0_Birth              1        0   13851
Birth       ki1119695-PROBIT            BELARUS                        1_Birth              0        0      33
Birth       ki1119695-PROBIT            BELARUS                        1_Birth              1       33      33
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       0_Birth              0    12398   12398
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       0_Birth              1        0   12398
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth              0        0    1432
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth              1     1432    1432
Birth       ki1135781-COHORTS           GUATEMALA                      0_Birth              0      802     802
Birth       ki1135781-COHORTS           GUATEMALA                      0_Birth              1        0     802
Birth       ki1135781-COHORTS           GUATEMALA                      1_Birth              0        0      50
Birth       ki1135781-COHORTS           GUATEMALA                      1_Birth              1       50      50
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         1_Birth              0        0       1
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         1_Birth              1        1       1
Birth       kiGH5241-JiVitA-3           BANGLADESH                     0_Birth              0    26550   26550
Birth       kiGH5241-JiVitA-3           BANGLADESH                     0_Birth              1        0   26550
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth              0        0   12676
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth              1    12676   12676
Birth       kiGH5241-JiVitA-4           BANGLADESH                     0_Birth              0     1150    1150
Birth       kiGH5241-JiVitA-4           BANGLADESH                     0_Birth              1        0    1150
Birth       kiGH5241-JiVitA-4           BANGLADESH                     1_Birth              0        0     494
Birth       kiGH5241-JiVitA-4           BANGLADESH                     1_Birth              1      494     494
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months           0      488     573
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months           1       85     573
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months           0       40     110
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months           1       70     110
6 months    ki1000107-Serrinha-VitA     BRAZIL                         0_6 months           0       26      26
6 months    ki1000107-Serrinha-VitA     BRAZIL                         0_6 months           1        0      26
6 months    ki1000107-Serrinha-VitA     BRAZIL                         1_6 months           0        0       9
6 months    ki1000107-Serrinha-VitA     BRAZIL                         1_6 months           1        9       9
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_6 months           0      582     582
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_6 months           1        0     582
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months           0        0     100
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months           1      100     100
6 months    ki1000111-WASH-Kenya        KENYA                          0_6 months           0       63      63
6 months    ki1000111-WASH-Kenya        KENYA                          0_6 months           1        0      63
6 months    ki1000111-WASH-Kenya        KENYA                          1_6 months           0        0      11
6 months    ki1000111-WASH-Kenya        KENYA                          1_6 months           1       11      11
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months           0      418     489
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months           1       71     489
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months           0       75     206
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months           1      131     206
6 months    ki1000304-EU                INDIA                          0_6 months           0      246     246
6 months    ki1000304-EU                INDIA                          0_6 months           1        0     246
6 months    ki1000304-EU                INDIA                          1_6 months           0        0     117
6 months    ki1000304-EU                INDIA                          1_6 months           1      117     117
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months           0     1506    1790
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months           1      284    1790
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months           0      138     718
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months           1      580     718
6 months    ki1000304-Vitamin-B12       INDIA                          0_6 months           0       58      58
6 months    ki1000304-Vitamin-B12       INDIA                          0_6 months           1        0      58
6 months    ki1000304-Vitamin-B12       INDIA                          1_6 months           0        0      23
6 months    ki1000304-Vitamin-B12       INDIA                          1_6 months           1       23      23
6 months    ki1000304-ZnMort            INDIA                          0_6 months           0       93      93
6 months    ki1000304-ZnMort            INDIA                          0_6 months           1        0      93
6 months    ki1000304-ZnMort            INDIA                          1_6 months           0        0      52
6 months    ki1000304-ZnMort            INDIA                          1_6 months           1       52      52
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months           0      388     456
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months           1       68     456
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months           0       56     161
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months           1      105     161
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months           0      191     219
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months           1       28     219
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months           0       13     136
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months           1      123     136
6 months    ki1017093b-PROVIDE          BANGLADESH                     0_6 months           0       35      43
6 months    ki1017093b-PROVIDE          BANGLADESH                     0_6 months           1        8      43
6 months    ki1017093b-PROVIDE          BANGLADESH                     1_6 months           0        1       3
6 months    ki1017093b-PROVIDE          BANGLADESH                     1_6 months           1        2       3
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months           0     1450    1589
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months           1      139    1589
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months           0       71     118
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months           1       47     118
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6 months           0      557     557
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6 months           1        0     557
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months           0        0      73
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months           1       73      73
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months           0      149     170
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months           1       21     170
6 months    ki1112895-Guatemala BSC     GUATEMALA                      1_6 months           0        3      48
6 months    ki1112895-Guatemala BSC     GUATEMALA                      1_6 months           1       45      48
6 months    ki1119695-PROBIT            BELARUS                        0_6 months           0    13502   14384
6 months    ki1119695-PROBIT            BELARUS                        0_6 months           1      882   14384
6 months    ki1119695-PROBIT            BELARUS                        1_6 months           0       74     116
6 months    ki1119695-PROBIT            BELARUS                        1_6 months           1       42     116
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months           0     6006    6972
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months           1      966    6972
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months           0      480     804
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months           1      324     804
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months           0      527     782
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months           1      255     782
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months           0       16     150
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months           1      134     150
6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_6 months           0     1347    1347
6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_6 months           1        0    1347
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months           0        0     583
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months           1      583     583
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months           0      735     863
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months           1      128     863
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months           0       61     166
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months           1      105     166
6 months    ki1148112-LCNI-5            MALAWI                         0_6 months           0      530     530
6 months    ki1148112-LCNI-5            MALAWI                         0_6 months           1        0     530
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months           0        0     309
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months           1      309     309
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months           0    20545   23405
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months           1     2860   23405
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months           0     4520   10078
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months           1     5558   10078
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months           0     5919    6737
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months           1      818    6737
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months           0     1086    2649
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months           1     1563    2649
24 months   iLiNS_DYADM_LNS             MALAWI                         0_24 months          0       17      28
24 months   iLiNS_DYADM_LNS             MALAWI                         0_24 months          1       11      28
24 months   iLiNS_DYADM_LNS             MALAWI                         1_24 months          0        3       7
24 months   iLiNS_DYADM_LNS             MALAWI                         1_24 months          1        4       7
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months          0       74      95
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months          1       21      95
24 months   ki1000107-Serrinha-VitA     BRAZIL                         1_24 months          0        0      36
24 months   ki1000107-Serrinha-VitA     BRAZIL                         1_24 months          1       36      36
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months          0      677     886
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months          1      209     886
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months          0       27     301
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months          1      274     301
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months          0     1514    1799
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months          1      285    1799
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months          0       51     465
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months          1      414     465
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       0_24 months          0        1       2
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       0_24 months          1        1       2
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       1_24 months          0        0       1
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       1_24 months          1        1       1
24 months   ki1000304-EU                INDIA                          0_24 months          0       98     106
24 months   ki1000304-EU                INDIA                          0_24 months          1        8     106
24 months   ki1000304-EU                INDIA                          1_24 months          0        3     147
24 months   ki1000304-EU                INDIA                          1_24 months          1      144     147
24 months   ki1000304-Vitamin-B12       INDIA                          0_24 months          0       69      71
24 months   ki1000304-Vitamin-B12       INDIA                          0_24 months          1        2      71
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months          0        5      62
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months          1       57      62
24 months   ki1000304-ZnMort            INDIA                          0_24 months          0       57      57
24 months   ki1000304-ZnMort            INDIA                          0_24 months          1        0      57
24 months   ki1000304-ZnMort            INDIA                          1_24 months          0        0      83
24 months   ki1000304-ZnMort            INDIA                          1_24 months          1       83      83
24 months   ki1017093b-PROVIDE          BANGLADESH                     0_24 months          0        2       2
24 months   ki1017093b-PROVIDE          BANGLADESH                     0_24 months          1        0       2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_24 months          0        3       4
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_24 months          1        1       4
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months          0      705     740
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months          1       35     740
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months          0       47     429
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months          1      382     429
24 months   ki1119695-PROBIT            BELARUS                        0_24 months          0      741     839
24 months   ki1119695-PROBIT            BELARUS                        0_24 months          1       98     839
24 months   ki1119695-PROBIT            BELARUS                        1_24 months          0        0       2
24 months   ki1119695-PROBIT            BELARUS                        1_24 months          1        2       2
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months          0       10      25
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months          1       15      25
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months          0        4      12
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months          1        8      12
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months          0       65     105
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months          1       40     105
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months          0        9     230
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months          1      221     230
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months          0      352     542
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months          1      190     542
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months          0       33     234
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months          1      201     234
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months          0       32      50
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months          1       18      50
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_24 months          0        6      15
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_24 months          1        9      15
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months          0      204     250
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months          1       46     250
24 months   ki1148112-LCNI-5            MALAWI                         1_24 months          0       37     135
24 months   ki1148112-LCNI-5            MALAWI                         1_24 months          1       98     135
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months          0       64      93
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months          1       29      93
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months          0       11      65
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months          1       54      65
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months          0     1030    1473
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months          1      443    1473
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months          0      140     531
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months          1      391     531


The following strata were considered:

* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenstunt: 0_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenstunt: 1_24 months
* agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenstunt: 1_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXenstunt: 1_24 months
* agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenstunt: 1_24 months
* agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenstunt: 1_24 months
* agecat: 24 months, studyid: ki1000304-EU, country: INDIA, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1000304-EU, country: INDIA, intXenstunt: 1_24 months
* agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXenstunt: 1_24 months
* agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA, intXenstunt: 1_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXenstunt: 1_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXenstunt: 1_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenstunt: 1_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenstunt: 1_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXenstunt: 1_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXenstunt: 1_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXenstunt: 1_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenstunt: 0_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenstunt: 1_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXenstunt: 0_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXenstunt: 1_24 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenstunt: 0_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1000304-EU, country: INDIA, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1000304-EU, country: INDIA, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXenstunt: 1_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenstunt: 0_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenstunt: 1_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXenstunt: 0_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXenstunt: 1_6 months
* agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenstunt: 1_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenstunt: 0_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXenstunt: 0_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXenstunt: 1_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXenstunt: 0_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXenstunt: 1_Birth
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenstunt: 0_Birth
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenstunt: 1_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenstunt: 0_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenstunt: 1_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXenstunt: 1_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenstunt: 0_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenstunt: 1_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXenstunt: 0_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXenstunt: 1_Birth

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenstunt: 1_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenstunt: 0_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXenstunt: 0_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXenstunt: 1_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXenstunt: 0_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXenstunt: 1_Birth
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenstunt: 0_Birth
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenstunt: 1_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenstunt: 0_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenstunt: 1_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXenstunt: 1_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenstunt: 0_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenstunt: 1_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXenstunt: 0_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXenstunt: 1_Birth
* agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1000304-EU, country: INDIA, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1000304-EU, country: INDIA, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXenstunt: 1_6 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenstunt: 1_24 months
* agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenstunt: 1_24 months
* agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenstunt: 1_24 months
* agecat: 24 months, studyid: ki1000304-EU, country: INDIA, intXenstunt: 1_24 months
* agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA, intXenstunt: 1_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXenstunt: 1_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenstunt: 1_24 months

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
![](/tmp/ebb47e09-f3ef-45a8-bf4e-b2233bbd1b48/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ebb47e09-f3ef-45a8-bf4e-b2233bbd1b48/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ebb47e09-f3ef-45a8-bf4e-b2233bbd1b48/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ebb47e09-f3ef-45a8-bf4e-b2233bbd1b48/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                     country                        intXenstunt   intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    Control              NA                0.1481481    0.1077111   0.1885852
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    LNS                  NA                0.1485507    0.1065565   0.1905450
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months    Control              NA                0.7037037    0.5813570   0.8260504
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months    LNS                  NA                0.5714286    0.4412229   0.7016342
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    Control              NA                0.1573034    0.1135872   0.2010195
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    Maternal             NA                0.1306306    0.0862554   0.1750059
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    Control              NA                0.7500000    0.6681359   0.8318641
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    Maternal             NA                0.5102041    0.4109905   0.6094177
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    Control              NA                0.1687151    0.1441731   0.1932571
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    VitA                 NA                0.1486034    0.1252936   0.1719131
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    Control              NA                0.8135135    0.7737984   0.8532286
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    VitA                 NA                0.8017241    0.7598054   0.8436429
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    Control              NA                0.1506849    0.1086413   0.1927286
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    Other                NA                0.1476793    0.0995980   0.1957606
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    Control              NA                0.6447368    0.5299648   0.7595089
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    Other                NA                0.6588235    0.5921872   0.7254598
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months    Control              NA                0.2545455    0.1391593   0.3699316
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months    Other                NA                0.0853659    0.0425025   0.1282292
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    Control              NA                0.9428571    0.8656743   1.0200399
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    Other                NA                0.8910891    0.8301093   0.9520689
6 months    ki1017093b-PROVIDE          BANGLADESH                     0_6 months    Control              NA                0.1250000   -0.1068845   0.3568845
6 months    ki1017093b-PROVIDE          BANGLADESH                     0_6 months    Other                NA                0.2000000    0.0659139   0.3340861
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Control              NA                0.0893300    0.0614745   0.1171856
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Other                NA                0.0820513    0.0548052   0.1092974
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Zinc                 NA                0.0891960    0.0693892   0.1090027
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    Control              NA                0.5000000    0.2901762   0.7098238
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    Other                NA                0.3823529    0.2183094   0.5463965
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    Zinc                 NA                0.3709677    0.2502128   0.4917227
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months    Control              NA                0.1097561    0.0418997   0.1776125
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months    Other                NA                0.1363636    0.0644514   0.2082758
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    Control              NA                0.0701332    0.0469281   0.0933383
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    Maternal             NA                0.0528256    0.0370855   0.0685656
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    Control              NA                0.3888889    0.2078649   0.5699129
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    Maternal             NA                0.3387097    0.1238122   0.5536071
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    Control              NA                0.1388086    0.1225104   0.1551068
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    VitA                 NA                0.1384703    0.1291205   0.1478202
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    Control              NA                0.3903743    0.3204111   0.4603376
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    VitA                 NA                0.4068071    0.3680218   0.4455925
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    Control              NA                0.3763158    0.3275750   0.4250566
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    Other                NA                0.2786070    0.2347544   0.3224595
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    Control              NA                0.9305556    0.8716408   0.9894703
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    Other                NA                0.8589744    0.7814760   0.9364727
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    Control              NA                0.1481481    0.1077230   0.1885733
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    Maternal             NA                0.1484099    0.1191051   0.1777147
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months    Control              NA                0.7037037    0.5815459   0.8258615
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months    Maternal             NA                0.5982143    0.5071440   0.6892846
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    Control              NA                0.1258226    0.1148980   0.1367472
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    Maternal             NA                0.1187542    0.1099206   0.1275877
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    Control              NA                0.5622467    0.5390886   0.5854048
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    Maternal             NA                0.5401266    0.5167741   0.5634791
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    Control              NA                0.1071429    0.0811835   0.1331022
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    LNS                  NA                0.1155943    0.0917197   0.1394689
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    Other                NA                0.1330762    0.1112172   0.1549352
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    Control              NA                0.6012365    0.5335258   0.6689471
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    LNS                  NA                0.5543767    0.4990265   0.6097268
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    Other                NA                0.6057692    0.5593585   0.6521800
24 months   iLiNS_DYADM_LNS             MALAWI                         0_24 months   Control              NA                0.4444444    0.1138493   0.7750396
24 months   iLiNS_DYADM_LNS             MALAWI                         0_24 months   LNS                  NA                0.3684211    0.1475420   0.5893001
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months   Control              NA                0.2307692    0.1156464   0.3458921
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months   VitA                 NA                0.2093023    0.0870650   0.3315397
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   Control              NA                0.2650000    0.2038009   0.3261991
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   LNS                  NA                0.1939655    0.1430572   0.2448738
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   Other                NA                0.2444934    0.2049369   0.2840499
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   Control              NA                0.8732394    0.7957218   0.9507570
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   LNS                  NA                0.9466667    0.8957291   0.9976042
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   Other                NA                0.9096774    0.8644766   0.9548783
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   Control              NA                0.1572848    0.1282423   0.1863273
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   LNS                  NA                0.1593137    0.1237930   0.1948345
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   Other                NA                0.1588310    0.1332869   0.1843751
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   Control              NA                0.8846154    0.8344269   0.9348039
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   LNS                  NA                0.8804348    0.8140646   0.9468049
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   Other                NA                0.8986175    0.8584149   0.9388202
24 months   ki1000304-EU                INDIA                          0_24 months   Control              NA                0.0434783   -0.0157339   0.1026904
24 months   ki1000304-EU                INDIA                          0_24 months   Zinc                 NA                0.1000000    0.0237303   0.1762697
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months   Control              NA                0.9285714    0.7925652   1.0645776
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months   Other                NA                0.9166667    0.8378399   0.9954934
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months   Control              NA                0.1428571    0.0679748   0.2177395
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months   Zinc                 NA                0.0350610    0.0209761   0.0491458
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   Control              NA                0.8648649    0.7545809   0.9751488
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   Zinc                 NA                0.8928571    0.8622033   0.9235109
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   Control              NA                0.1233244    0.0488997   0.1977491
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   Maternal             NA                0.1115880    0.0601056   0.1630703
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   Control              NA                0.3333333    0.0190040   0.6476627
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   VitA                 NA                0.7500000    0.5334525   0.9665475
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   Control              NA                0.4200000    0.2825389   0.5574611
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   Other                NA                0.3454545    0.2191817   0.4717274
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months   Control              NA                0.9586777    0.9231366   0.9942187
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months   Other                NA                0.9633028    0.9279292   0.9986763
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   Control              NA                0.3516484    0.2534537   0.4498430
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   LNS                  NA                0.3503326    0.3062622   0.3944030
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months   Control              NA                0.8947368    0.7969519   0.9925218
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months   LNS                  NA                0.8520408    0.8022268   0.9018548
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   Control              NA                0.4444444    0.1165106   0.7723783
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   Maternal             NA                0.3414634    0.1948394   0.4880875
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_24 months   Control              NA                1.0000000    1.0000000   1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_24 months   Maternal             NA                0.5000000    0.2071744   0.7928256
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   Control              NA                0.2179487    0.1261438   0.3097536
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   LNS                  NA                0.2000000    0.1267463   0.2732537
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   Other                NA                0.1052632    0.0254330   0.1850933
24 months   ki1148112-LCNI-5            MALAWI                         1_24 months   Control              NA                0.7575758    0.6108161   0.9043354
24 months   ki1148112-LCNI-5            MALAWI                         1_24 months   LNS                  NA                0.7343750    0.6257660   0.8429840
24 months   ki1148112-LCNI-5            MALAWI                         1_24 months   Other                NA                0.6842105    0.5358684   0.8325526
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months   Control              NA                0.2222222    0.0373168   0.4071276
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months   Maternal             NA                0.3684211    0.2176820   0.5191601
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months   Control              NA                0.7428571    0.5597464   0.9259678
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months   Maternal             NA                0.9333333    0.8258565   1.0408102
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   Control              NA                0.3360000    0.2612882   0.4107118
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   LNS                  NA                0.2790123    0.2154153   0.3426094
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   Other                NA                0.2943723    0.2406220   0.3481226
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   Control              NA                0.6875000    0.5726761   0.8023239
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   LNS                  NA                0.7368421    0.6389788   0.8347054
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   Other                NA                0.7659574    0.6847122   0.8472027


### Parameter: E(Y)


agecat      studyid                     country                        intXenstunt   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------------  -----------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    NA                   NA                0.1483421   0.1192138   0.1774703
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months    NA                   NA                0.6363636   0.5460567   0.7266706
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    NA                   NA                0.1451943   0.1139373   0.1764512
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    NA                   NA                0.6359223   0.5700550   0.7017897
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    NA                   NA                0.1586592   0.1417290   0.1755894
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    NA                   NA                0.8077994   0.7789580   0.8366409
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    NA                   NA                0.1491228   0.1168079   0.1814377
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    NA                   NA                0.6521739   0.5876398   0.7167080
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months    NA                   NA                0.1278539   0.0835266   0.1721812
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    NA                   NA                0.9044118   0.8548135   0.9540100
6 months    ki1017093b-PROVIDE          BANGLADESH                     0_6 months    NA                   NA                0.1860465   0.0683580   0.3037350
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    NA                   NA                0.0874764   0.0735804   0.1013724
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    NA                   NA                0.3983051   0.3095994   0.4870107
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months    NA                   NA                0.1235294   0.0739206   0.1731382
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    NA                   NA                0.0613181   0.0465049   0.0761314
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    NA                   NA                0.3620690   0.2206531   0.5034848
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    NA                   NA                0.1385542   0.1304442   0.1466643
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    NA                   NA                0.4029851   0.3690595   0.4369107
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    NA                   NA                0.3260870   0.2932100   0.3589639
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    NA                   NA                0.8933333   0.8437682   0.9428984
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    NA                   NA                0.1483198   0.1245934   0.1720462
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months    NA                   NA                0.6325301   0.5589674   0.7060928
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    NA                   NA                0.1221961   0.1151937   0.1291986
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    NA                   NA                0.5514983   0.5350358   0.5679608
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    NA                   NA                0.1214190   0.1075405   0.1352975
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    NA                   NA                0.5900340   0.5582752   0.6217927
24 months   iLiNS_DYADM_LNS             MALAWI                         0_24 months   NA                   NA                0.3928571   0.2086405   0.5770738
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months   NA                   NA                0.2210526   0.1371673   0.3049380
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   NA                   NA                0.2358916   0.2079205   0.2638628
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   NA                   NA                0.9102990   0.8779636   0.9426344
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   NA                   NA                0.1584213   0.1415439   0.1752988
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   NA                   NA                0.8903226   0.8618897   0.9187555
24 months   ki1000304-EU                INDIA                          0_24 months   NA                   NA                0.0754717   0.0249468   0.1259966
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months   NA                   NA                0.9193548   0.8510244   0.9876852
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months   NA                   NA                0.0472973   0.0319927   0.0626019
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   NA                   NA                0.8904429   0.8608526   0.9200332
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   NA                   NA                0.1168057   0.0733203   0.1602912
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   NA                   NA                0.6000000   0.4040036   0.7959964
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   NA                   NA                0.3809524   0.2876208   0.4742840
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months   NA                   NA                0.9608696   0.9357553   0.9859838
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   NA                   NA                0.3505535   0.3103468   0.3907602
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months   NA                   NA                0.8589744   0.8142845   0.9036642
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   NA                   NA                0.3600000   0.2256025   0.4943975
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_24 months   NA                   NA                0.6000000   0.3433805   0.8566195
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   NA                   NA                0.1840000   0.1358715   0.2321285
24 months   ki1148112-LCNI-5            MALAWI                         1_24 months   NA                   NA                0.7259259   0.6504035   0.8014483
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months   NA                   NA                0.3118280   0.1933892   0.4302667
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months   NA                   NA                0.8307692   0.7160532   0.9454853
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   NA                   NA                0.3007468   0.2645611   0.3369324
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   NA                   NA                0.7363465   0.6808359   0.7918571


### Parameter: RR


agecat      studyid                     country                        intXenstunt   intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  --------------------------  -----------------------------  ------------  -------------------  ---------------  ----------  ----------  -----------
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    LNS                  Control           1.0027174   0.6768907    1.4853834
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months    LNS                  Control           0.8120301   0.6096732    1.0815514
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    Maternal             Control           0.8304376   0.5354227    1.2880041
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    Maternal             Control           0.6802721   0.5442966    0.8502169
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    VitA                 Control           0.8807947   0.7111604    1.0908922
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    VitA                 Control           0.9855081   0.9174731    1.0585882
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    Other                Control           0.9800537   0.6388668    1.5034516
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    Other                Control           1.0218487   0.8308455    1.2567618
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months    Other                Control           0.3353659   0.1705042    0.6596334
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    Other                Control           0.9450945   0.8494492    1.0515092
6 months    ki1017093b-PROVIDE          BANGLADESH                     0_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1017093b-PROVIDE          BANGLADESH                     0_6 months    Other                Control           1.6000000   0.2225723   11.5018809
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Other                Control           0.9185185   0.5824474    1.4485020
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Zinc                 Control           0.9984994   0.6809166    1.4642044
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    Other                Control           0.7647059   0.4196176    1.3935903
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    Zinc                 Control           0.7419355   0.4362285    1.2618806
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months    Other                Control           1.2424242   0.5512619    2.8001536
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    Maternal             Control           0.7532177   0.4839250    1.1723654
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    Maternal             Control           0.8709677   0.3955440    1.9178264
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    VitA                 Control           0.9975634   0.8711987    1.1422569
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    VitA                 Control           1.0420950   0.8506373    1.2766450
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    Other                Control           0.7403542   0.6038283    0.9077486
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    Other                Control           0.9230769   0.8267423    1.0306367
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    Maternal             Control           1.0017668   0.7152989    1.4029614
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months    Maternal             Control           0.8500940   0.6748269    1.0708817
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    Maternal             Control           0.9438223   0.8418655    1.0581269
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    Maternal             Control           0.9606577   0.9049547    1.0197895
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    LNS                  Control           1.0788804   0.7846669    1.4834102
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    Other                Control           1.2420444   0.9268206    1.6644798
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    LNS                  Control           0.9220609   0.7932703    1.0717613
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    Other                Control           1.0075391   0.8792472    1.1545501
24 months   iLiNS_DYADM_LNS             MALAWI                         0_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   iLiNS_DYADM_LNS             MALAWI                         0_24 months   LNS                  Control           0.8289474   0.3188711    2.1549577
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months   VitA                 Control           0.9069767   0.4207483    1.9551042
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   LNS                  Control           0.7319453   0.5160006    1.0382624
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   Other                Control           0.9226166   0.6959237    1.2231533
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   LNS                  Control           1.0840860   0.9771968    1.2026671
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   Other                Control           1.0417274   0.9409640    1.1532810
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   LNS                  Control           1.0128999   0.7582994    1.3529830
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   Other                Control           1.0098308   0.7905037    1.2900108
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   LNS                  Control           0.9952741   0.9056659    1.0937483
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   Other                Control           1.0158285   0.9450215    1.0919407
24 months   ki1000304-EU                INDIA                          0_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000304-EU                INDIA                          0_24 months   Zinc                 Control           2.2999999   0.4828759   10.9551941
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months   Other                Control           0.9871795   0.8329768    1.1699286
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months   Zinc                 Control           0.2454268   0.1267970    0.4750454
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   Zinc                 Control           1.0323661   0.9046534    1.1781084
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   Maternal             Control           0.9048330   0.4220778    1.9397439
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   VitA                 Control           2.2500000   0.8392301    6.0323146
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   Other                Control           0.8225108   0.5035696    1.3434570
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months   Other                Control           1.0048244   0.9537363    1.0586492
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   LNS                  Control           0.9962583   0.7334346    1.3532640
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months   LNS                  Control           0.9522809   0.8412727    1.0779370
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   Maternal             Control           0.7682927   0.3271662    1.8042012
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_24 months   Maternal             Control           0.5000000   0.2783716    0.8980802
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   LNS                  Control           0.9176471   0.5251156    1.6036014
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   Other                Control           0.4829721   0.2028459    1.1499475
24 months   ki1148112-LCNI-5            MALAWI                         1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         1_24 months   LNS                  Control           0.9693750   0.7597038    1.2369136
24 months   ki1148112-LCNI-5            MALAWI                         1_24 months   Other                Control           0.9031579   0.6752952    1.2079076
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months   Maternal             Control           1.6578947   0.6558245    4.1910829
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months   Maternal             Control           1.2564103   0.9570860    1.6493468
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   LNS                  Control           0.8303939   0.6037932    1.1420367
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   Other                Control           0.8761080   0.6571302    1.1680566
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   LNS                  Control           1.0717703   0.8658093    1.3267259
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   Other                Control           1.1141199   0.9141541    1.3578271


### Parameter: PAR


agecat      studyid                     country                        intXenstunt   intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    Control              NA                 0.0001939   -0.0278869    0.0282747
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months    Control              NA                -0.0673401   -0.1591415    0.0244614
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    Control              NA                -0.0121091   -0.0404133    0.0161951
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    Control              NA                -0.1140777   -0.1774273   -0.0507280
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    Control              NA                -0.0100559   -0.0269860    0.0068743
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    Control              NA                -0.0057141   -0.0337052    0.0222770
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    Control              NA                -0.0015621   -0.0346749    0.0315506
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    Control              NA                 0.0074371   -0.0623797    0.0772538
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months    Control              NA                -0.1266916   -0.2193819   -0.0340012
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    Control              NA                -0.0384454   -0.1115957    0.0347050
6 months    ki1017093b-PROVIDE          BANGLADESH                     0_6 months    Control              NA                 0.0610465   -0.1571584    0.2792515
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Control              NA                -0.0018536   -0.0258421    0.0221349
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    Control              NA                -0.1016949   -0.2900516    0.0866618
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months    Control              NA                 0.0137733   -0.0374472    0.0649939
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    Control              NA                -0.0088151   -0.0232469    0.0056168
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    Control              NA                -0.0268199   -0.1763767    0.1227368
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    Control              NA                -0.0002543   -0.0143843    0.0138756
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    Control              NA                 0.0126107   -0.0487801    0.0740016
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    Control              NA                -0.0502288   -0.0841070   -0.0163507
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    Control              NA                -0.0372222   -0.0881686    0.0137242
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    Control              NA                 0.0001717   -0.0325747    0.0329181
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months    Control              NA                -0.0711736   -0.1742530    0.0319058
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    Control              NA                -0.0036265   -0.0108353    0.0035824
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    Control              NA                -0.0107484   -0.0267908    0.0052941
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    Control              NA                 0.0142762   -0.0082813    0.0368336
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    Control              NA                -0.0112025   -0.0690802    0.0466752
24 months   iLiNS_DYADM_LNS             MALAWI                         0_24 months   Control              NA                -0.0515873   -0.3217152    0.2185405
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months   Control              NA                -0.0097166   -0.0857507    0.0663175
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   Control              NA                -0.0291084   -0.0823702    0.0241535
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   Control              NA                 0.0370596   -0.0279001    0.1020192
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   Control              NA                 0.0011366   -0.0225687    0.0248419
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   Control              NA                 0.0057072   -0.0347555    0.0461698
24 months   ki1000304-EU                INDIA                          0_24 months   Control              NA                 0.0319934   -0.0229232    0.0869101
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months   Control              NA                -0.0092166   -0.1309250    0.1124918
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months   Control              NA                -0.0955598   -0.1631511   -0.0279686
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   Control              NA                 0.0255780   -0.0790172    0.1301733
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   Control              NA                -0.0065187   -0.0567392    0.0437018
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   Control              NA                 0.2666667    0.0096075    0.5237258
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   Control              NA                -0.0390476   -0.1370812    0.0589859
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months   Control              NA                 0.0021919   -0.0215741    0.0259578
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   Control              NA                -0.0010948   -0.0906548    0.0884651
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months   Control              NA                -0.0357625   -0.1277055    0.0561805
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   Control              NA                -0.0844444   -0.3792133    0.2103244
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_24 months   Control              NA                -0.4000000   -0.6566195   -0.1433805
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   Control              NA                -0.0339487   -0.1080118    0.0401143
24 months   ki1148112-LCNI-5            MALAWI                         1_24 months   Control              NA                -0.0316498   -0.1609253    0.0976256
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months   Control              NA                 0.0896057   -0.0573009    0.2365123
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months   Control              NA                 0.0879121   -0.0156138    0.1914380
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   Control              NA                -0.0352532   -0.0990376    0.0285311
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   Control              NA                 0.0488465   -0.0463974    0.1440904


### Parameter: PAF


agecat      studyid                     country                        intXenstunt   intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    Control              NA                 0.0013072   -0.2071196    0.1737461
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months    Control              NA                -0.1058201   -0.2624512    0.0313779
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    Control              NA                -0.0833993   -0.2963526    0.0945720
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    Control              NA                -0.1793893   -0.2890803   -0.0790322
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    Control              NA                -0.0633803   -0.1754837    0.0380321
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    Control              NA                -0.0070736   -0.0423348    0.0269947
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    Control              NA                -0.0104754   -0.2593201    0.1891969
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    Control              NA                 0.0114035   -0.1022422    0.1133319
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months    Control              NA                -0.9909091   -1.8159348   -0.4076032
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    Control              NA                -0.0425087   -0.1272882    0.0358948
6 months    ki1017093b-PROVIDE          BANGLADESH                     0_6 months    Control              NA                 0.3281250   -2.7769340    0.8804808
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Control              NA                -0.0211900   -0.3357467    0.2192914
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    Control              NA                -0.2553191   -0.8329041    0.1402572
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months    Control              NA                 0.1114983   -0.4139868    0.4416954
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    Control              NA                -0.1437593   -0.3970925    0.0636373
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    Control              NA                -0.0740741   -0.5888714    0.2739280
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    Control              NA                -0.0018357   -0.1091884    0.0951269
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    Control              NA                 0.0312933   -0.1336872    0.1722650
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    Control              NA                -0.1540351   -0.2628963   -0.0545577
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    Control              NA                -0.0416667   -0.1010952    0.0145544
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    Control              NA                 0.0011574   -0.2459273    0.1992418
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months    Control              NA                -0.1125220   -0.2897409    0.0403458
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    Control              NA                -0.0296775   -0.0900922    0.0273889
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    Control              NA                -0.0194894   -0.0489941    0.0091855
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    Control              NA                 0.1175777   -0.0890786    0.2850203
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    Control              NA                -0.0189862   -0.1218915    0.0744801
24 months   iLiNS_DYADM_LNS             MALAWI                         0_24 months   Control              NA                -0.1313131   -1.0798516    0.3846343
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months   Control              NA                -0.0439560   -0.4511268    0.2489669
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   Control              NA                -0.1233971   -0.3732990    0.0810296
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   Control              NA                 0.0407114   -0.0336617    0.1097333
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   Control              NA                 0.0071744   -0.1543234    0.1460775
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   Control              NA                 0.0064103   -0.0400996    0.0508404
24 months   ki1000304-EU                INDIA                          0_24 months   Control              NA                 0.4239130   -0.8614069    0.8217068
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months   Control              NA                -0.0100251   -0.1515299    0.1140911
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months   Control              NA                -2.0204082   -3.6762471   -0.9508947
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   Control              NA                 0.0287251   -0.0962021    0.1394151
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   Control              NA                -0.0558078   -0.5791791    0.2941078
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   Control              NA                 0.4444444   -0.2365995    0.7504107
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   Control              NA                -0.1025000   -0.3929028    0.1273574
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months   Control              NA                 0.0022811   -0.0227653    0.0267142
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   Control              NA                -0.0031232   -0.2940858    0.2224193
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months   Control              NA                -0.0416339   -0.1546486    0.0603191
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   Control              NA                -0.2345679   -1.3998938    0.3649061
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_24 months   Control              NA                -0.6666667   -1.5562078   -0.0866792
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   Control              NA                -0.1845039   -0.6619690    0.1557908
24 months   ki1148112-LCNI-5            MALAWI                         1_24 months   Control              NA                -0.0435993   -0.2380897    0.1203389
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months   Control              NA                 0.2873563   -0.3961271    0.6362358
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months   Control              NA                 0.1058201   -0.0355323    0.2278776
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   Control              NA                -0.1172190   -0.3505861    0.0758248
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   Control              NA                 0.0663363   -0.0730685    0.1876308
