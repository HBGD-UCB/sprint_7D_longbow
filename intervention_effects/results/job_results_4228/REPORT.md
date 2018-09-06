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
* intXenstunt

## Data Summary

agecat      studyid                     country                        intXenstunt    sstunted   n_cell       n
----------  --------------------------  -----------------------------  ------------  ---------  -------  ------
Birth       iLiNS_DYADM_LNS             MALAWI                         1_Birth               0        0       1
Birth       iLiNS_DYADM_LNS             MALAWI                         1_Birth               1        1       1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       0_Birth               0       11      11
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       0_Birth               1        0      11
Birth       ki1000304b-SAS-CompFeed     INDIA                          0_Birth               0      106     106
Birth       ki1000304b-SAS-CompFeed     INDIA                          0_Birth               1        0     106
Birth       ki1000304b-SAS-CompFeed     INDIA                          1_Birth               0       27      38
Birth       ki1000304b-SAS-CompFeed     INDIA                          1_Birth               1       11      38
Birth       ki1119695-PROBIT            BELARUS                        0_Birth               0    13851   13851
Birth       ki1119695-PROBIT            BELARUS                        0_Birth               1        0   13851
Birth       ki1119695-PROBIT            BELARUS                        1_Birth               0       28      33
Birth       ki1119695-PROBIT            BELARUS                        1_Birth               1        5      33
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       0_Birth               0    12398   12398
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       0_Birth               1        0   12398
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth               0      991    1432
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth               1      441    1432
Birth       ki1135781-COHORTS           GUATEMALA                      0_Birth               0      802     802
Birth       ki1135781-COHORTS           GUATEMALA                      0_Birth               1        0     802
Birth       ki1135781-COHORTS           GUATEMALA                      1_Birth               0       39      50
Birth       ki1135781-COHORTS           GUATEMALA                      1_Birth               1       11      50
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         1_Birth               0        0       1
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         1_Birth               1        1       1
Birth       kiGH5241-JiVitA-3           BANGLADESH                     0_Birth               0    26550   26550
Birth       kiGH5241-JiVitA-3           BANGLADESH                     0_Birth               1        0   26550
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth               0     8594   12676
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth               1     4082   12676
Birth       kiGH5241-JiVitA-4           BANGLADESH                     0_Birth               0     1150    1150
Birth       kiGH5241-JiVitA-4           BANGLADESH                     0_Birth               1        0    1150
Birth       kiGH5241-JiVitA-4           BANGLADESH                     1_Birth               0      366     494
Birth       kiGH5241-JiVitA-4           BANGLADESH                     1_Birth               1      128     494
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months            0      564     573
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months            1        9     573
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months            0       86     110
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months            1       24     110
6 months    ki1000107-Serrinha-VitA     BRAZIL                         0_6 months            0       26      26
6 months    ki1000107-Serrinha-VitA     BRAZIL                         0_6 months            1        0      26
6 months    ki1000107-Serrinha-VitA     BRAZIL                         1_6 months            0        4       9
6 months    ki1000107-Serrinha-VitA     BRAZIL                         1_6 months            1        5       9
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_6 months            0      582     582
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     0_6 months            1        0     582
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months            0       72     100
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months            1       28     100
6 months    ki1000111-WASH-Kenya        KENYA                          0_6 months            0       63      63
6 months    ki1000111-WASH-Kenya        KENYA                          0_6 months            1        0      63
6 months    ki1000111-WASH-Kenya        KENYA                          1_6 months            0        8      11
6 months    ki1000111-WASH-Kenya        KENYA                          1_6 months            1        3      11
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months            0      468     489
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months            1       21     489
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months            0      146     206
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months            1       60     206
6 months    ki1000304-EU                INDIA                          0_6 months            0      246     246
6 months    ki1000304-EU                INDIA                          0_6 months            1        0     246
6 months    ki1000304-EU                INDIA                          1_6 months            0       77     117
6 months    ki1000304-EU                INDIA                          1_6 months            1       40     117
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months            0     1758    1790
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months            1       32    1790
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months            0      503     718
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months            1      215     718
6 months    ki1000304-Vitamin-B12       INDIA                          0_6 months            0       58      58
6 months    ki1000304-Vitamin-B12       INDIA                          0_6 months            1        0      58
6 months    ki1000304-Vitamin-B12       INDIA                          1_6 months            0       16      23
6 months    ki1000304-Vitamin-B12       INDIA                          1_6 months            1        7      23
6 months    ki1000304-ZnMort            INDIA                          0_6 months            0       93      93
6 months    ki1000304-ZnMort            INDIA                          0_6 months            1        0      93
6 months    ki1000304-ZnMort            INDIA                          1_6 months            0       39      52
6 months    ki1000304-ZnMort            INDIA                          1_6 months            1       13      52
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months            0      441     456
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months            1       15     456
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months            0      121     161
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months            1       40     161
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months            0      219     219
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          0_6 months            1        0     219
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months            0       84     136
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months            1       52     136
6 months    ki1017093b-PROVIDE          BANGLADESH                     0_6 months            0       42      43
6 months    ki1017093b-PROVIDE          BANGLADESH                     0_6 months            1        1      43
6 months    ki1017093b-PROVIDE          BANGLADESH                     1_6 months            0        3       3
6 months    ki1017093b-PROVIDE          BANGLADESH                     1_6 months            1        0       3
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months            0     1573    1589
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months            1       16    1589
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months            0      109     118
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months            1        9     118
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6 months            0      557     557
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   0_6 months            1        0     557
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months            0       57      73
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months            1       16      73
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months            0      170     170
6 months    ki1112895-Guatemala BSC     GUATEMALA                      0_6 months            1        0     170
6 months    ki1112895-Guatemala BSC     GUATEMALA                      1_6 months            0       28      48
6 months    ki1112895-Guatemala BSC     GUATEMALA                      1_6 months            1       20      48
6 months    ki1119695-PROBIT            BELARUS                        0_6 months            0    14172   14384
6 months    ki1119695-PROBIT            BELARUS                        0_6 months            1      212   14384
6 months    ki1119695-PROBIT            BELARUS                        1_6 months            0       98     116
6 months    ki1119695-PROBIT            BELARUS                        1_6 months            1       18     116
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months            0     6745    6972
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months            1      227    6972
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months            0      700     804
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months            1      104     804
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months            0      727     782
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months            1       55     782
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months            0       82     150
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months            1       68     150
6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_6 months            0     1347    1347
6 months    ki1148112-iLiNS-DOSE        MALAWI                         0_6 months            1        0    1347
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months            0      456     583
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months            1      127     583
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months            0      847     863
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months            1       16     863
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months            0      129     166
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months            1       37     166
6 months    ki1148112-LCNI-5            MALAWI                         0_6 months            0      530     530
6 months    ki1148112-LCNI-5            MALAWI                         0_6 months            1        0     530
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months            0      238     309
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months            1       71     309
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months            0    23081   23405
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months            1      324   23405
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months            0     8371   10078
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months            1     1707   10078
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months            0     6675    6737
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months            1       62    6737
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months            0     2183    2649
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months            1      466    2649
24 months   iLiNS_DYADM_LNS             MALAWI                         0_24 months           0       25      28
24 months   iLiNS_DYADM_LNS             MALAWI                         0_24 months           1        3      28
24 months   iLiNS_DYADM_LNS             MALAWI                         1_24 months           0        6       7
24 months   iLiNS_DYADM_LNS             MALAWI                         1_24 months           1        1       7
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months           0       91      95
24 months   ki1000107-Serrinha-VitA     BRAZIL                         0_24 months           1        4      95
24 months   ki1000107-Serrinha-VitA     BRAZIL                         1_24 months           0       12      36
24 months   ki1000107-Serrinha-VitA     BRAZIL                         1_24 months           1       24      36
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months           0      875     886
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months           1       11     886
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months           0      173     301
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months           1      128     301
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months           0     1770    1799
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months           1       29    1799
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months           0      311     465
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months           1      154     465
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       0_24 months           0        1       2
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       0_24 months           1        1       2
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       1_24 months           0        1       1
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       1_24 months           1        0       1
24 months   ki1000304-EU                INDIA                          0_24 months           0      106     106
24 months   ki1000304-EU                INDIA                          0_24 months           1        0     106
24 months   ki1000304-EU                INDIA                          1_24 months           0       91     147
24 months   ki1000304-EU                INDIA                          1_24 months           1       56     147
24 months   ki1000304-Vitamin-B12       INDIA                          0_24 months           0       71      71
24 months   ki1000304-Vitamin-B12       INDIA                          0_24 months           1        0      71
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months           0       37      62
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months           1       25      62
24 months   ki1000304-ZnMort            INDIA                          0_24 months           0       57      57
24 months   ki1000304-ZnMort            INDIA                          0_24 months           1        0      57
24 months   ki1000304-ZnMort            INDIA                          1_24 months           0       49      83
24 months   ki1000304-ZnMort            INDIA                          1_24 months           1       34      83
24 months   ki1017093b-PROVIDE          BANGLADESH                     0_24 months           0        2       2
24 months   ki1017093b-PROVIDE          BANGLADESH                     0_24 months           1        0       2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_24 months           0        3       4
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_24 months           1        1       4
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months           0      736     740
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   0_24 months           1        4     740
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months           0      298     429
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months           1      131     429
24 months   ki1119695-PROBIT            BELARUS                        0_24 months           0      821     839
24 months   ki1119695-PROBIT            BELARUS                        0_24 months           1       18     839
24 months   ki1119695-PROBIT            BELARUS                        1_24 months           0        2       2
24 months   ki1119695-PROBIT            BELARUS                        1_24 months           1        0       2
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months           0       17      25
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months           1        8      25
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months           0        5      12
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months           1        7      12
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months           0       94     105
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months           1       11     105
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months           0       97     230
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months           1      133     230
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months           0      501     542
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months           1       41     542
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months           0      135     234
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months           1       99     234
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months           0       44      50
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months           1        6      50
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_24 months           0       11      15
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1_24 months           1        4      15
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months           0      245     250
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months           1        5     250
24 months   ki1148112-LCNI-5            MALAWI                         1_24 months           0      101     135
24 months   ki1148112-LCNI-5            MALAWI                         1_24 months           1       34     135
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months           0       89      93
24 months   kiGH5241-JiVitA-3           BANGLADESH                     0_24 months           1        4      93
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months           0       29      65
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months           1       36      65
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months           0     1416    1473
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months           1       57    1473
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months           0      387     531
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months           1      144     531


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
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXenstunt: 0_Birth
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXenstunt: 0_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXenstunt: 0_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXenstunt: 1_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenstunt: 0_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXenstunt: 0_Birth
* agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1000304-EU, country: INDIA, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXenstunt: 1_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXenstunt: 0_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXenstunt: 0_6 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenstunt: 0_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXenstunt: 1_24 months
* agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXenstunt: 1_24 months
* agecat: 24 months, studyid: ki1000304-EU, country: INDIA, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXenstunt: 0_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXenstunt: 1_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXenstunt: 1_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXenstunt: 0_24 months

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
![](/tmp/98b74f4d-1134-411b-b461-45f1c4fa751f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/98b74f4d-1134-411b-b461-45f1c4fa751f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/98b74f4d-1134-411b-b461-45f1c4fa751f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/98b74f4d-1134-411b-b461-45f1c4fa751f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                     country                        intXenstunt   intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          1_Birth       Control              NA                0.2352941    0.0250435   0.4455447
Birth       ki1000304b-SAS-CompFeed     INDIA                          1_Birth       Other                NA                0.3333333    0.0992802   0.5673864
Birth       ki1119695-PROBIT            BELARUS                        1_Birth       Control              NA                0.2380952    0.0561598   0.4200307
Birth       ki1119695-PROBIT            BELARUS                        1_Birth       Maternal             NA                0.0000000    0.0000000   0.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth       Control              NA                0.3111111    0.2632722   0.3589500
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth       VitA                 NA                0.3069030    0.2792845   0.3345215
Birth       ki1135781-COHORTS           GUATEMALA                      1_Birth       Control              NA                0.2105263    0.0253522   0.3957004
Birth       ki1135781-COHORTS           GUATEMALA                      1_Birth       Other                NA                0.2258065    0.0771283   0.3744846
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth       Control              NA                0.3295250    0.3126429   0.3464070
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth       Maternal             NA                0.3137450    0.2927448   0.3347453
Birth       kiGH5241-JiVitA-4           BANGLADESH                     1_Birth       Control              NA                0.2608696    0.1459240   0.3758151
Birth       kiGH5241-JiVitA-4           BANGLADESH                     1_Birth       LNS                  NA                0.1891892    0.0951971   0.2831813
Birth       kiGH5241-JiVitA-4           BANGLADESH                     1_Birth       Other                NA                0.3076923    0.2149057   0.4004790
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    Control              NA                0.0202020    0.0041875   0.0362166
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    LNS                  NA                0.0108696   -0.0013739   0.0231131
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months    Control              NA                0.2962963    0.1739496   0.4186430
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months    LNS                  NA                0.1428571    0.0507879   0.2349264
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months    Control              NA                0.2758621    0.1123732   0.4393509
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months    LNS                  NA                0.2758621    0.1123732   0.4393509
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months    Other                NA                0.2857143    0.1484025   0.4230261
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    Control              NA                0.0524345    0.0256705   0.0791984
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    Maternal             NA                0.0315315    0.0085207   0.0545423
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    Control              NA                0.3148148    0.2270088   0.4026209
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    Maternal             NA                0.2653061    0.1776830   0.3529292
6 months    ki1000304-EU                INDIA                          1_6 months    Control              NA                0.3043478    0.1953121   0.4133835
6 months    ki1000304-EU                INDIA                          1_6 months    Zinc                 NA                0.3958333    0.2568938   0.5347729
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    Control              NA                0.0167598    0.0083473   0.0251722
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    VitA                 NA                0.0189944    0.0100489   0.0279400
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    Control              NA                0.2864865    0.2403863   0.3325867
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    VitA                 NA                0.3132184    0.2644550   0.3619818
6 months    ki1000304-Vitamin-B12       INDIA                          1_6 months    Control              NA                0.3333333   -0.0523393   0.7190059
6 months    ki1000304-Vitamin-B12       INDIA                          1_6 months    Other                NA                0.2941176    0.0726538   0.5155815
6 months    ki1000304-ZnMort            INDIA                          1_6 months    Control              NA                0.1935484    0.0531158   0.3339809
6 months    ki1000304-ZnMort            INDIA                          1_6 months    Zinc                 NA                0.3333333    0.1297469   0.5369197
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    Control              NA                0.0319635    0.0066638   0.0572631
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    Other                NA                0.0337553    0.0202155   0.0472950
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    Control              NA                0.2763158    0.1794742   0.3731573
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    Other                NA                0.2235294    0.1336333   0.3134255
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    Control              NA                0.4285714    0.2640171   0.5931257
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    Other                NA                0.3663366    0.2720263   0.4606470
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Control              NA                0.0173697    0.0046105   0.0301289
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Other                NA                0.0051282   -0.0019630   0.0122194
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Zinc                 NA                0.0087940    0.0023061   0.0152818
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    Control              NA                0.1363636   -0.0076487   0.2803759
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    Other                NA                0.0588235   -0.0206034   0.1382505
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    Zinc                 NA                0.0645161    0.0031042   0.1259280
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months    Control              NA                0.2222222   -0.0512691   0.4957135
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months    Zinc                 NA                0.2187500    0.1167683   0.3207317
6 months    ki1112895-Guatemala BSC     GUATEMALA                      1_6 months    Control              NA                0.4615385    0.2678898   0.6551871
6 months    ki1112895-Guatemala BSC     GUATEMALA                      1_6 months    Other                NA                0.3636364    0.1604967   0.5667760
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    Control              NA                0.0182771    0.0095291   0.0270252
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    Maternal             NA                0.0113295    0.0068306   0.0158285
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    Control              NA                0.1666667    0.0565694   0.2767639
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    Maternal             NA                0.1451613   -0.0343369   0.3246595
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    Control              NA                0.0289184    0.0210190   0.0368179
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    VitA                 NA                0.0337593    0.0288702   0.0386484
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    Control              NA                0.0962567    0.0539572   0.1385562
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    VitA                 NA                0.1393841    0.1120385   0.1667297
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    Control              NA                0.0947368    0.0652736   0.1242001
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    Other                NA                0.0472637    0.0265068   0.0680206
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    Control              NA                0.5000000    0.3841211   0.6158789
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    Other                NA                0.4102564    0.3007316   0.5197812
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months    Control              NA                0.2190476    0.1398690   0.2982262
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months    LNS                  NA                0.2175732    0.1805536   0.2545928
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    Control              NA                0.0202020    0.0041922   0.0362119
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    Maternal             NA                0.0176678    0.0068083   0.0285274
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months    Control              NA                0.2962963    0.1741385   0.4184541
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months    Maternal             NA                0.1875000    0.1149957   0.2600043
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    Control              NA                0.1944444    0.1028791   0.2860098
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    LNS                  NA                0.2662338    0.1963137   0.3361539
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    Other                NA                0.1927711    0.1077685   0.2777737
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    Control              NA                0.0154427    0.0118095   0.0190759
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    Maternal             NA                0.0123251    0.0094188   0.0152315
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    Control              NA                0.1771859    0.1599523   0.1944194
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    Maternal             NA                0.1611191    0.1432465   0.1789916
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    Control              NA                0.0078125   -0.0015746   0.0171996
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    LNS                  NA                0.0119956    0.0051176   0.0188737
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    Other                NA                0.0083574    0.0022088   0.0145061
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    Control              NA                0.1947450    0.1439685   0.2455215
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    LNS                  NA                0.1604775    0.1208314   0.2001235
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    Other                NA                0.1754808    0.1407228   0.2102388
24 months   ki1000107-Serrinha-VitA     BRAZIL                         1_24 months   Control              NA                0.6315789    0.4116033   0.8515546
24 months   ki1000107-Serrinha-VitA     BRAZIL                         1_24 months   VitA                 NA                0.7058824    0.4862140   0.9255507
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   Control              NA                0.0150000   -0.0018555   0.0318555
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   LNS                  NA                0.0043103   -0.0041243   0.0127450
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   Other                NA                0.0154185    0.0040785   0.0267585
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   Control              NA                0.4366197    0.3210633   0.5521761
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   LNS                  NA                0.4666667    0.3535718   0.5797615
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   Other                NA                0.4000000    0.3227479   0.4772521
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   Control              NA                0.0182119    0.0075450   0.0288788
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   LNS                  NA                0.0073529   -0.0009392   0.0156451
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   Other                NA                0.0190597    0.0095041   0.0286154
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   Control              NA                0.4166667    0.3392194   0.4941139
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   LNS                  NA                0.2717391    0.1807392   0.3627391
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   Other                NA                0.2949309    0.2341927   0.3556690
24 months   ki1000304-EU                INDIA                          1_24 months   Control              NA                0.3544304    0.2485894   0.4602713
24 months   ki1000304-EU                INDIA                          1_24 months   Zinc                 NA                0.4117647    0.2943896   0.5291398
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months   Control              NA                0.2857143    0.0471437   0.5242849
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months   Other                NA                0.4375000    0.2960156   0.5789844
24 months   ki1000304-ZnMort            INDIA                          1_24 months   Control              NA                0.4375000    0.2963081   0.5786919
24 months   ki1000304-ZnMort            INDIA                          1_24 months   Zinc                 NA                0.3714286    0.2103784   0.5324787
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   Control              NA                0.2972973    0.1498505   0.4447441
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   Zinc                 NA                0.3061224    0.2604451   0.3517998
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   Control              NA                0.0187668   -0.0058347   0.0433682
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   Maternal             NA                0.0236052    0.0024158   0.0447945
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   Control              NA                0.1111111   -0.0984418   0.3206640
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   VitA                 NA                0.4375000    0.1894137   0.6855863
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months   Control              NA                0.5000000   -0.2237647   1.2237647
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months   VitA                 NA                0.6000000    0.2828622   0.9171378
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   Control              NA                0.1200000    0.0294949   0.2105051
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   Other                NA                0.0909091    0.0145691   0.1672491
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months   Control              NA                0.6115702    0.5245378   0.6986027
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months   Other                NA                0.5412844    0.4475356   0.6350332
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   Control              NA                0.0549451    0.0080830   0.1018071
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   LNS                  NA                0.0798226    0.0547869   0.1048583
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months   Control              NA                0.5263158    0.3672217   0.6854098
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months   LNS                  NA                0.4030612    0.3342435   0.4718790
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   Control              NA                0.1111111   -0.0962925   0.3185147
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   Maternal             NA                0.1219512    0.0207710   0.2231314
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   Control              NA                0.0512821    0.0022339   0.1003302
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   LNS                  NA                0.0086957   -0.0083073   0.0256986
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   Other                NA                0.0000000    0.0000000   0.0000000
24 months   ki1148112-LCNI-5            MALAWI                         1_24 months   Control              NA                0.3333333    0.1718977   0.4947689
24 months   ki1148112-LCNI-5            MALAWI                         1_24 months   LNS                  NA                0.2500000    0.1435187   0.3564813
24 months   ki1148112-LCNI-5            MALAWI                         1_24 months   Other                NA                0.1842105    0.0604970   0.3079240
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months   Control              NA                0.5142857    0.3028197   0.7257518
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months   Maternal             NA                0.6000000    0.3624894   0.8375106
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   Control              NA                0.0373333    0.0009785   0.0736882
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   LNS                  NA                0.0320988    0.0105940   0.0536036
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   Other                NA                0.0432900    0.0207491   0.0658310
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   Control              NA                0.3055556    0.2011910   0.4099202
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   LNS                  NA                0.2960526    0.1981437   0.3939615
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   Other                NA                0.2340426    0.1522282   0.3158569


### Parameter: E(Y)


agecat      studyid                     country                        intXenstunt   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------------  -----------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          1_Birth       NA                   NA                0.2894737   0.1276124   0.4513349
Birth       ki1119695-PROBIT            BELARUS                        1_Birth       NA                   NA                0.1515152   0.0311314   0.2718989
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth       NA                   NA                0.3079609   0.2840420   0.3318798
Birth       ki1135781-COHORTS           GUATEMALA                      1_Birth       NA                   NA                0.2200000   0.1040132   0.3359868
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth       NA                   NA                0.3220259   0.3086698   0.3353820
Birth       kiGH5241-JiVitA-4           BANGLADESH                     1_Birth       NA                   NA                0.2591093   0.2008377   0.3173809
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    NA                   NA                0.0157068   0.0055172   0.0258964
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months    NA                   NA                0.2181818   0.1406470   0.2957167
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months    NA                   NA                0.2800000   0.1915545   0.3684455
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    NA                   NA                0.0429448   0.0249577   0.0609319
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    NA                   NA                0.2912621   0.2290671   0.3534572
6 months    ki1000304-EU                INDIA                          1_6 months    NA                   NA                0.3418803   0.2555609   0.4281998
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    NA                   NA                0.0178771   0.0117370   0.0240172
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    NA                   NA                0.2994429   0.2659180   0.3329678
6 months    ki1000304-Vitamin-B12       INDIA                          1_6 months    NA                   NA                0.3043478   0.1120750   0.4966207
6 months    ki1000304-ZnMort            INDIA                          1_6 months    NA                   NA                0.2500000   0.1311597   0.3688403
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    NA                   NA                0.0328947   0.0188786   0.0469109
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    NA                   NA                0.2484472   0.1797369   0.3171575
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    NA                   NA                0.3823529   0.3003775   0.4643284
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    NA                   NA                0.0100692   0.0051588   0.0149797
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    NA                   NA                0.0762712   0.0281753   0.1243670
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months    NA                   NA                0.2191781   0.1236224   0.3147337
6 months    ki1112895-Guatemala BSC     GUATEMALA                      1_6 months    NA                   NA                0.4166667   0.2757209   0.5576124
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    NA                   NA                0.0147386   0.0094772   0.0200000
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    NA                   NA                0.1551724   0.0461778   0.2641670
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    NA                   NA                0.0325588   0.0283925   0.0367251
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    NA                   NA                0.1293532   0.1061419   0.1525646
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    NA                   NA                0.0703325   0.0523990   0.0882660
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    NA                   NA                0.4533333   0.3734005   0.5332661
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months    NA                   NA                0.2178388   0.1843035   0.2513741
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    NA                   NA                0.0185400   0.0095349   0.0275450
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months    NA                   NA                0.2228916   0.1593886   0.2863945
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    NA                   NA                0.2297735   0.1827914   0.2767555
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    NA                   NA                0.0138432   0.0115228   0.0161635
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    NA                   NA                0.1693788   0.1569537   0.1818040
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    NA                   NA                0.0092029   0.0049847   0.0134211
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    NA                   NA                0.1759154   0.1524585   0.1993723
24 months   ki1000107-Serrinha-VitA     BRAZIL                         1_24 months   NA                   NA                0.6666667   0.5104930   0.8228403
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   NA                   NA                0.0124153   0.0051201   0.0197106
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   NA                   NA                0.4252492   0.3693058   0.4811926
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   NA                   NA                0.0161201   0.0102989   0.0219412
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   NA                   NA                0.3311828   0.2883598   0.3740058
24 months   ki1000304-EU                INDIA                          1_24 months   NA                   NA                0.3809524   0.3021809   0.4597239
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months   NA                   NA                0.4032258   0.2801246   0.5263270
24 months   ki1000304-ZnMort            INDIA                          1_24 months   NA                   NA                0.4096386   0.3031996   0.5160775
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   NA                   NA                0.3053613   0.2617285   0.3489941
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   NA                   NA                0.0214541   0.0054705   0.0374378
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   NA                   NA                0.3200000   0.1333741   0.5066259
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months   NA                   NA                0.5833333   0.2919904   0.8746763
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   NA                   NA                0.1047619   0.0459043   0.1636195
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months   NA                   NA                0.5782609   0.5143000   0.6422217
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   NA                   NA                0.0756458   0.0533634   0.0979281
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months   NA                   NA                0.4230769   0.3596405   0.4865134
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   NA                   NA                0.1200000   0.0290124   0.2109876
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   NA                   NA                0.0200000   0.0026109   0.0373891
24 months   ki1148112-LCNI-5            MALAWI                         1_24 months   NA                   NA                0.2518519   0.1783561   0.3253476
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months   NA                   NA                0.5538462   0.3953431   0.7123492
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   NA                   NA                0.0386965   0.0234186   0.0539745
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   NA                   NA                0.2711864   0.2173023   0.3250706


### Parameter: RR


agecat      studyid                     country                        intXenstunt   intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  --------------------------  -----------------------------  ------------  -------------------  ---------------  ----------  ----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          1_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          1_Birth       Other                Control           1.4166667   0.4552207    4.4087289
Birth       ki1119695-PROBIT            BELARUS                        1_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1119695-PROBIT            BELARUS                        1_Birth       Maternal             Control           0.0000000   0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth       VitA                 Control           0.9864739   0.8254853    1.1788589
Birth       ki1135781-COHORTS           GUATEMALA                      1_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      1_Birth       Other                Control           1.0725806   0.3574880    3.2180923
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth       Maternal             Control           0.9521131   0.8751418    1.0358542
Birth       kiGH5241-JiVitA-4           BANGLADESH                     1_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH                     1_Birth       LNS                  Control           0.7252252   0.3733155    1.4088664
Birth       kiGH5241-JiVitA-4           BANGLADESH                     1_Birth       Other                Control           1.1794872   0.6915390    2.0117304
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    LNS                  Control           0.5380435   0.1357147    2.1330834
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months    LNS                  Control           0.4821429   0.2242638    1.0365550
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months    LNS                  Control           1.0000000   0.4325188    2.3120383
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months    Other                Control           1.0357143   0.4829085    2.2213401
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    Maternal             Control           0.6013514   0.2468097    1.4651914
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    Maternal             Control           0.8427371   0.5469558    1.2984701
6 months    ki1000304-EU                INDIA                          1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-EU                INDIA                          1_6 months    Zinc                 Control           1.3005952   0.7876271    2.1476508
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    VitA                 Control           1.1333333   0.5694246    2.2556879
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    VitA                 Control           1.0933095   0.8739852    1.3676727
6 months    ki1000304-Vitamin-B12       INDIA                          1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-Vitamin-B12       INDIA                          1_6 months    Other                Control           0.8823529   0.2218794    3.5088736
6 months    ki1000304-ZnMort            INDIA                          1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-ZnMort            INDIA                          1_6 months    Zinc                 Control           1.7222222   0.6671158    4.4460786
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    Other                Control           1.0560579   0.4360752    2.5574909
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    Other                Control           0.8089636   0.4727734    1.3842193
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    Other                Control           0.8547855   0.5383839    1.3571324
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Other                Control           0.2952381   0.0616826    1.4131310
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Zinc                 Control           0.5062814   0.1787513    1.4339526
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    Other                Control           0.4313725   0.0776926    2.3951090
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    Zinc                 Control           0.4731183   0.1141579    1.9608017
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months    Zinc                 Control           0.9843750   0.2640015    3.6704122
6 months    ki1112895-Guatemala BSC     GUATEMALA                      1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1112895-Guatemala BSC     GUATEMALA                      1_6 months    Other                Control           0.7878788   0.3917773    1.5844536
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    Maternal             Control           0.6198736   0.3346015    1.1483606
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    Maternal             Control           0.8709677   0.2171668    3.4930968
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    VitA                 Control           1.1673965   0.8569268    1.5903513
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    VitA                 Control           1.4480461   0.8949071    2.3430782
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    Other                Control           0.4988944   0.2912711    0.8545153
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    Other                Control           0.8205128   0.5761686    1.1684797
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months    LNS                  Control           0.9932691   0.6661339    1.4810588
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    Maternal             Control           0.8745583   0.3207964    2.3842297
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months    Maternal             Control           0.6328125   0.3595761    1.1136771
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    LNS                  Control           1.3692022   0.7985461    2.3476600
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    Other                Control           0.9913941   0.5200801    1.8898286
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    Maternal             Control           0.7981213   0.5720368    1.1135606
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    Maternal             Control           0.9093222   0.7845972    1.0538745
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    LNS                  Control           1.5354416   0.4055945    5.8126547
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    Other                Control           1.0697525   0.2614075    4.3777253
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    LNS                  Control           0.8240390   0.5753089    1.1803054
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    Other                Control           0.9010798   0.6494792    1.2501476
24 months   ki1000107-Serrinha-VitA     BRAZIL                         1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000107-Serrinha-VitA     BRAZIL                         1_24 months   VitA                 Control           1.1176471   0.7005829    1.7829938
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   LNS                  Control           0.2873563   0.0300900    2.7442218
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   Other                Control           1.0279001   0.2683465    3.9373666
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   LNS                  Control           1.0688172   0.7465423    1.5302149
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   Other                Control           0.9161290   0.6601861    1.2712967
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   LNS                  Control           0.4037433   0.1132977    1.4387641
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   Other                Control           1.0465519   0.4840926    2.2625235
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   LNS                  Control           0.6521739   0.4446580    0.9565347
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   Other                Control           0.7078341   0.5363530    0.9341407
24 months   ki1000304-EU                INDIA                          1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000304-EU                INDIA                          1_24 months   Zinc                 Control           1.1617647   0.7688242    1.7555344
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months   Other                Control           1.5312500   0.6254085    3.7491123
24 months   ki1000304-ZnMort            INDIA                          1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000304-ZnMort            INDIA                          1_24 months   Zinc                 Control           0.8489796   0.4944864    1.4576061
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   Zinc                 Control           1.0296846   0.6134451    1.7283542
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   Maternal             Control           1.2578173   0.2560593    6.1786648
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   VitA                 Control           3.9375000   0.5494520   28.2170344
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months   VitA                 Control           1.2000000   0.2569969    5.6031795
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   Other                Control           0.7575758   0.2450372    2.3421793
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months   Other                Control           0.8850731   0.7073368    1.1074703
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   LNS                  Control           1.4527716   0.5855186    3.6045743
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months   LNS                  Control           0.7658163   0.5411936    1.0836689
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   Maternal             Control           1.0975610   0.1423276    8.4638540
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   LNS                  Control           0.1695652   0.0192308    1.4951181
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   Other                Control           0.0000000   0.0000000    0.0000001
24 months   ki1148112-LCNI-5            MALAWI                         1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         1_24 months   LNS                  Control           0.7500000   0.3935151    1.4294241
24 months   ki1148112-LCNI-5            MALAWI                         1_24 months   Other                Control           0.5526316   0.2414572    1.2648273
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months   Maternal             Control           1.1666667   0.6591621    2.0649109
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   LNS                  Control           0.8597884   0.2637396    2.8029009
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   Other                Control           1.1595547   0.3843646    3.4981554
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   LNS                  Control           0.9688995   0.6021925    1.5589139
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   Other                Control           0.7659574   0.4698240    1.2487458


### Parameter: PAR


agecat      studyid                     country                        intXenstunt   intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          1_Birth       Control              NA                 0.0541796   -0.1230434    0.2314025
Birth       ki1119695-PROBIT            BELARUS                        1_Birth       Control              NA                -0.0865801   -0.1811093    0.0079491
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth       Control              NA                -0.0031502   -0.0445024    0.0382019
Birth       ki1135781-COHORTS           GUATEMALA                      1_Birth       Control              NA                 0.0094737   -0.1377758    0.1567232
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth       Control              NA                -0.0074991   -0.0203332    0.0053350
Birth       kiGH5241-JiVitA-4           BANGLADESH                     1_Birth       Control              NA                -0.0017603   -0.0978053    0.0942848
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    Control              NA                -0.0044952   -0.0142126    0.0052222
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months    Control              NA                -0.0781145   -0.1573850    0.0011560
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months    Control              NA                 0.0041379   -0.1338788    0.1421547
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    Control              NA                -0.0094897   -0.0255402    0.0065608
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    Control              NA                -0.0235527   -0.0826624    0.0355571
6 months    ki1000304-EU                INDIA                          1_6 months    Control              NA                 0.0375325   -0.0353864    0.1104514
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    Control              NA                 0.0011173   -0.0050228    0.0072574
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    Control              NA                 0.0129564   -0.0195828    0.0454956
6 months    ki1000304-Vitamin-B12       INDIA                          1_6 months    Control              NA                -0.0289855   -0.3577817    0.2998107
6 months    ki1000304-ZnMort            INDIA                          1_6 months    Control              NA                 0.0564516   -0.0451872    0.1580904
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    Control              NA                 0.0009313   -0.0139936    0.0158562
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    Control              NA                -0.0278686   -0.1038550    0.0481179
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    Control              NA                -0.0462185   -0.1871469    0.0947099
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Control              NA                -0.0073005   -0.0175149    0.0029139
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    Control              NA                -0.0600924   -0.1838639    0.0636790
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months    Control              NA                -0.0030441   -0.2589448    0.2528565
6 months    ki1112895-Guatemala BSC     GUATEMALA                      1_6 months    Control              NA                -0.0448718   -0.1742577    0.0845141
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    Control              NA                -0.0035385   -0.0086099    0.0015329
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    Control              NA                -0.0114943   -0.1228509    0.0998624
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    Control              NA                 0.0036404   -0.0033460    0.0106267
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    Control              NA                 0.0330965   -0.0055778    0.0717709
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    Control              NA                -0.0244044   -0.0430063   -0.0058024
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    Control              NA                -0.0466667   -0.1298915    0.0365582
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months    Control              NA                -0.0012089   -0.0728723    0.0704546
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    Control              NA                -0.0016620   -0.0143500    0.0110259
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months    Control              NA                -0.0734047   -0.1695636    0.0227541
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    Control              NA                 0.0353290   -0.0464287    0.1170867
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    Control              NA                -0.0015995   -0.0039887    0.0007898
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    Control              NA                -0.0078070   -0.0198876    0.0042735
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    Control              NA                 0.0013904   -0.0062959    0.0090767
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    Control              NA                -0.0188295   -0.0621168    0.0244577
24 months   ki1000107-Serrinha-VitA     BRAZIL                         1_24 months   Control              NA                 0.0350877   -0.1122280    0.1824034
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   Control              NA                -0.0025847   -0.0170437    0.0118744
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   Control              NA                -0.0113705   -0.1122834    0.0895423
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   Control              NA                -0.0020919   -0.0105337    0.0063500
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   Control              NA                -0.0854839   -0.1471877   -0.0237800
24 months   ki1000304-EU                INDIA                          1_24 months   Control              NA                 0.0265220   -0.0467356    0.0997796
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months   Control              NA                 0.1175115   -0.0978159    0.3328389
24 months   ki1000304-ZnMort            INDIA                          1_24 months   Control              NA                -0.0278614   -0.1184532    0.0627304
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   Control              NA                 0.0080640   -0.1329830    0.1491110
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   Control              NA                 0.0026874   -0.0155195    0.0208942
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   Control              NA                 0.2088889   -0.0081934    0.4259711
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months   Control              NA                 0.0833333   -0.5755325    0.7421992
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   Control              NA                -0.0152381   -0.0773209    0.0468447
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months   Control              NA                -0.0333094   -0.0941024    0.0274836
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   Control              NA                 0.0207007   -0.0235162    0.0649176
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months   Control              NA                -0.1032389   -0.2485470    0.0420693
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   Control              NA                 0.0088889   -0.1803441    0.1981219
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   Control              NA                -0.0312821   -0.0660229    0.0034588
24 months   ki1148112-LCNI-5            MALAWI                         1_24 months   Control              NA                -0.0814815   -0.2183096    0.0553466
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months   Control              NA                 0.0395604   -0.1073978    0.1865187
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   Control              NA                 0.0013632   -0.0283355    0.0310619
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   Control              NA                -0.0343691   -0.1234288    0.0546906


### Parameter: PAF


agecat      studyid                     country                        intXenstunt   intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          1_Birth       Control              NA                 0.1871658   -0.6932502    0.6098040
Birth       ki1119695-PROBIT            BELARUS                        1_Birth       Control              NA                -0.5714286   -1.2954661   -0.0757674
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       1_Birth       Control              NA                -0.0102293   -0.1538391    0.1155065
Birth       ki1135781-COHORTS           GUATEMALA                      1_Birth       Control              NA                 0.0430622   -0.9255912    0.5244422
Birth       kiGH5241-JiVitA-3           BANGLADESH                     1_Birth       Control              NA                -0.0232872   -0.0641096    0.0159692
Birth       kiGH5241-JiVitA-4           BANGLADESH                     1_Birth       Control              NA                -0.0067935   -0.4547964    0.3032474
6 months    iLiNS_DYADM_LNS             MALAWI                         0_6 months    Control              NA                -0.2861953   -1.0369647    0.1878611
6 months    iLiNS_DYADM_LNS             MALAWI                         1_6 months    Control              NA                -0.3580247   -0.7675050   -0.0434093
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     1_6 months    Control              NA                 0.0147783   -0.6248522    0.4026153
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       0_6 months    Control              NA                -0.2209738   -0.6442433    0.0933355
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       1_6 months    Control              NA                -0.0808642   -0.3040116    0.1040974
6 months    ki1000304-EU                INDIA                          1_6 months    Control              NA                 0.1097826   -0.1310529    0.2993369
6 months    ki1000304-VITAMIN-A         INDIA                          0_6 months    Control              NA                 0.0625000   -0.3513824    0.3496243
6 months    ki1000304-VITAMIN-A         INDIA                          1_6 months    Control              NA                 0.0432684   -0.0717869    0.1459726
6 months    ki1000304-Vitamin-B12       INDIA                          1_6 months    Control              NA                -0.0952381   -1.9367301    0.5915367
6 months    ki1000304-ZnMort            INDIA                          1_6 months    Control              NA                 0.2258065   -0.2972782    0.5379745
6 months    ki1000304b-SAS-CompFeed     INDIA                          0_6 months    Control              NA                 0.0283105   -0.5603157    0.3948786
6 months    ki1000304b-SAS-CompFeed     INDIA                          1_6 months    Control              NA                -0.1121711   -0.4706076    0.1589025
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          1_6 months    Control              NA                -0.1208791   -0.5577794    0.1934866
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0_6 months    Control              NA                -0.7250310   -1.9974413    0.0072426
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1_6 months    Control              NA                -0.7878788   -3.2981960    0.2563135
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   1_6 months    Control              NA                -0.0138889   -2.2070122    0.6794616
6 months    ki1112895-Guatemala BSC     GUATEMALA                      1_6 months    Control              NA                -0.1076923   -0.4677584    0.1640434
6 months    ki1119695-PROBIT            BELARUS                        0_6 months    Control              NA                -0.2400862   -0.6006663    0.0392665
6 months    ki1119695-PROBIT            BELARUS                        1_6 months    Control              NA                -0.0740741   -1.1492758    0.4632447
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       0_6 months    Control              NA                 0.1118087   -0.1303354    0.3020799
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       1_6 months    Control              NA                 0.2558618   -0.1079903    0.5002287
6 months    ki1135781-COHORTS           GUATEMALA                      0_6 months    Control              NA                -0.3469856   -0.6246163   -0.1167993
6 months    ki1135781-COHORTS           GUATEMALA                      1_6 months    Control              NA                -0.1029412   -0.3035657    0.0668063
6 months    ki1148112-iLiNS-DOSE        MALAWI                         1_6 months    Control              NA                -0.0055493   -0.3947185    0.2750297
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         0_6 months    Control              NA                -0.0896464   -1.0394670    0.4178237
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1_6 months    Control              NA                -0.3293293   -0.8356213    0.0373197
6 months    ki1148112-LCNI-5            MALAWI                         1_6 months    Control              NA                 0.1537559   -0.2875065    0.4437860
6 months    kiGH5241-JiVitA-3           BANGLADESH                     0_6 months    Control              NA                -0.1155416   -0.2991516    0.0421187
6 months    kiGH5241-JiVitA-3           BANGLADESH                     1_6 months    Control              NA                -0.0460921   -0.1200281    0.0229632
6 months    kiGH5241-JiVitA-4           BANGLADESH                     0_6 months    Control              NA                 0.1510837   -1.3104066    0.6880813
6 months    kiGH5241-JiVitA-4           BANGLADESH                     1_6 months    Control              NA                -0.1070374   -0.3817595    0.1130643
24 months   ki1000107-Serrinha-VitA     BRAZIL                         1_24 months   Control              NA                 0.0526316   -0.1974488    0.2504841
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     0_24 months   Control              NA                -0.2081818   -2.1515156    0.5368250
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1_24 months   Control              NA                -0.0267386   -0.2937221    0.1851480
24 months   ki1000111-WASH-Kenya        KENYA                          0_24 months   Control              NA                -0.1297671   -0.7927583    0.2880392
24 months   ki1000111-WASH-Kenya        KENYA                          1_24 months   Control              NA                -0.2581169   -0.4597843   -0.0843096
24 months   ki1000304-EU                INDIA                          1_24 months   Control              NA                 0.0696203   -0.1440936    0.2434129
24 months   ki1000304-Vitamin-B12       INDIA                          1_24 months   Control              NA                 0.2914286   -0.5048557    0.6663644
24 months   ki1000304-ZnMort            INDIA                          1_24 months   Control              NA                -0.0680147   -0.3141460    0.1320177
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1_24 months   Control              NA                 0.0264081   -0.5646551    0.3941916
24 months   ki1119695-PROBIT            BELARUS                        0_24 months   Control              NA                 0.1252606   -1.3291598    0.6714829
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       0_24 months   Control              NA                 0.6527778   -0.9670074    0.9387073
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1_24 months   Control              NA                 0.1428571   -2.2131661    0.7713489
24 months   ki1135781-COHORTS           GUATEMALA                      0_24 months   Control              NA                -0.1454545   -0.9146696    0.3147297
24 months   ki1135781-COHORTS           GUATEMALA                      1_24 months   Control              NA                -0.0576027   -0.1685408    0.0428033
24 months   ki1148112-iLiNS-DOSE        MALAWI                         0_24 months   Control              NA                 0.2736532   -0.6132475    0.6729704
24 months   ki1148112-iLiNS-DOSE        MALAWI                         1_24 months   Control              NA                -0.2440191   -0.6416825    0.0573185
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         0_24 months   Control              NA                 0.0740741   -4.0800877    0.8312354
24 months   ki1148112-LCNI-5            MALAWI                         0_24 months   Control              NA                -1.5641025   -3.0417372   -0.6266822
24 months   ki1148112-LCNI-5            MALAWI                         1_24 months   Control              NA                -0.3235294   -0.9939360    0.1214713
24 months   kiGH5241-JiVitA-3           BANGLADESH                     1_24 months   Control              NA                 0.0714286   -0.2355869    0.3021576
24 months   kiGH5241-JiVitA-4           BANGLADESH                     0_24 months   Control              NA                 0.0352281   -1.1447827    0.5660237
24 months   kiGH5241-JiVitA-4           BANGLADESH                     1_24 months   Control              NA                -0.1267361   -0.5091049    0.1587501
