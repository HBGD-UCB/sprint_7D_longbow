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
* intXsex

## Data Summary

agecat      studyid                     country                        intXsex             stunted   n_cell       n
----------  --------------------------  -----------------------------  -----------------  --------  -------  ------
Birth       iLiNS_DYADM_LNS             MALAWI                         Male_Birth                0        0       1
Birth       iLiNS_DYADM_LNS             MALAWI                         Male_Birth                1        1       1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Female_Birth              0        4       4
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Female_Birth              1        0       4
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Male_Birth                0        7       7
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Male_Birth                1        0       7
Birth       ki1000304b-SAS-CompFeed     INDIA                          Female_Birth              0       52      66
Birth       ki1000304b-SAS-CompFeed     INDIA                          Female_Birth              1       14      66
Birth       ki1000304b-SAS-CompFeed     INDIA                          Male_Birth                0       54      78
Birth       ki1000304b-SAS-CompFeed     INDIA                          Male_Birth                1       24      78
Birth       ki1119695-PROBIT            BELARUS                        Female_Birth              0     7168    7176
Birth       ki1119695-PROBIT            BELARUS                        Female_Birth              1        8    7176
Birth       ki1119695-PROBIT            BELARUS                        Male_Birth                0     6683    6708
Birth       ki1119695-PROBIT            BELARUS                        Male_Birth                1       25    6708
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Female_Birth              0     6071    6736
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Female_Birth              1      665    6736
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Male_Birth                0     6327    7094
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Male_Birth                1      767    7094
Birth       ki1135781-COHORTS           GUATEMALA                      Female_Birth              0      383     404
Birth       ki1135781-COHORTS           GUATEMALA                      Female_Birth              1       21     404
Birth       ki1135781-COHORTS           GUATEMALA                      Male_Birth                0      419     448
Birth       ki1135781-COHORTS           GUATEMALA                      Male_Birth                1       29     448
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         Male_Birth                0        0       1
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         Male_Birth                1        1       1
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Female_Birth              0    13110   19238
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Female_Birth              1     6128   19238
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Male_Birth                0    13440   19988
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Male_Birth                1     6548   19988
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Female_Birth              0      530     800
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Female_Birth              1      270     800
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Male_Birth                0      620     844
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Male_Birth                1      224     844
6 months    iLiNS_DYADM_LNS             MALAWI                         Female_6 months           0      285     354
6 months    iLiNS_DYADM_LNS             MALAWI                         Female_6 months           1       69     354
6 months    iLiNS_DYADM_LNS             MALAWI                         Male_6 months             0      243     329
6 months    iLiNS_DYADM_LNS             MALAWI                         Male_6 months             1       86     329
6 months    ki1000107-Serrinha-VitA     BRAZIL                         Female_6 months           0        8      11
6 months    ki1000107-Serrinha-VitA     BRAZIL                         Female_6 months           1        3      11
6 months    ki1000107-Serrinha-VitA     BRAZIL                         Male_6 months             0       18      24
6 months    ki1000107-Serrinha-VitA     BRAZIL                         Male_6 months             1        6      24
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6 months           0      307     348
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6 months           1       41     348
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6 months             0      275     334
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6 months             1       59     334
6 months    ki1000111-WASH-Kenya        KENYA                          Female_6 months           0       31      34
6 months    ki1000111-WASH-Kenya        KENYA                          Female_6 months           1        3      34
6 months    ki1000111-WASH-Kenya        KENYA                          Male_6 months             0       32      40
6 months    ki1000111-WASH-Kenya        KENYA                          Male_6 months             1        8      40
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_6 months           0      222     308
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_6 months           1       86     308
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_6 months             0      271     387
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_6 months             1      116     387
6 months    ki1000304-EU                INDIA                          Female_6 months           0      113     163
6 months    ki1000304-EU                INDIA                          Female_6 months           1       50     163
6 months    ki1000304-EU                INDIA                          Male_6 months             0      133     200
6 months    ki1000304-EU                INDIA                          Male_6 months             1       67     200
6 months    ki1000304-VITAMIN-A         INDIA                          Female_6 months           0      836    1208
6 months    ki1000304-VITAMIN-A         INDIA                          Female_6 months           1      372    1208
6 months    ki1000304-VITAMIN-A         INDIA                          Male_6 months             0      808    1300
6 months    ki1000304-VITAMIN-A         INDIA                          Male_6 months             1      492    1300
6 months    ki1000304-Vitamin-B12       INDIA                          Female_6 months           0       33      43
6 months    ki1000304-Vitamin-B12       INDIA                          Female_6 months           1       10      43
6 months    ki1000304-Vitamin-B12       INDIA                          Male_6 months             0       25      38
6 months    ki1000304-Vitamin-B12       INDIA                          Male_6 months             1       13      38
6 months    ki1000304-ZnMort            INDIA                          Female_6 months           0       43      64
6 months    ki1000304-ZnMort            INDIA                          Female_6 months           1       21      64
6 months    ki1000304-ZnMort            INDIA                          Male_6 months             0       50      81
6 months    ki1000304-ZnMort            INDIA                          Male_6 months             1       31      81
6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_6 months           0      195     284
6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_6 months           1       89     284
6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_6 months             0      249     333
6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_6 months             1       84     333
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_6 months           0      108     189
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_6 months           1       81     189
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_6 months             0       96     166
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_6 months             1       70     166
6 months    ki1017093b-PROVIDE          BANGLADESH                     Female_6 months           0       20      24
6 months    ki1017093b-PROVIDE          BANGLADESH                     Female_6 months           1        4      24
6 months    ki1017093b-PROVIDE          BANGLADESH                     Male_6 months             0       16      22
6 months    ki1017093b-PROVIDE          BANGLADESH                     Male_6 months             1        6      22
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6 months           0      771     840
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6 months           1       69     840
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6 months             0      750     867
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6 months             1      117     867
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6 months           0      288     321
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6 months           1       33     321
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6 months             0      269     309
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6 months             1       40     309
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_6 months           0       81     112
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_6 months           1       31     112
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_6 months             0       71     106
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_6 months             1       35     106
6 months    ki1119695-PROBIT            BELARUS                        Female_6 months           0     7330    7462
6 months    ki1119695-PROBIT            BELARUS                        Female_6 months           1      132    7462
6 months    ki1119695-PROBIT            BELARUS                        Male_6 months             0     6246    7038
6 months    ki1119695-PROBIT            BELARUS                        Male_6 months             1      792    7038
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_6 months           0     3271    3787
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_6 months           1      516    3787
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_6 months             0     3215    3989
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_6 months             1      774    3989
6 months    ki1135781-COHORTS           GUATEMALA                      Female_6 months           0      271     441
6 months    ki1135781-COHORTS           GUATEMALA                      Female_6 months           1      170     441
6 months    ki1135781-COHORTS           GUATEMALA                      Male_6 months             0      272     491
6 months    ki1135781-COHORTS           GUATEMALA                      Male_6 months             1      219     491
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_6 months           0      716     963
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_6 months           1      247     963
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_6 months             0      631     967
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_6 months             1      336     967
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6 months           0      440     540
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6 months           1      100     540
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6 months             0      356     489
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6 months             1      133     489
6 months    ki1148112-LCNI-5            MALAWI                         Female_6 months           0      298     420
6 months    ki1148112-LCNI-5            MALAWI                         Female_6 months           1      122     420
6 months    ki1148112-LCNI-5            MALAWI                         Male_6 months             0      232     419
6 months    ki1148112-LCNI-5            MALAWI                         Male_6 months             1      187     419
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_6 months           0    12944   16427
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_6 months           1     3483   16427
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_6 months             0    12121   17056
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_6 months             1     4935   17056
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_6 months           0     3654    4691
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_6 months           1     1037    4691
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_6 months             0     3351    4695
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_6 months             1     1344    4695
24 months   iLiNS_DYADM_LNS             MALAWI                         Female_24 months          0       11      18
24 months   iLiNS_DYADM_LNS             MALAWI                         Female_24 months          1        7      18
24 months   iLiNS_DYADM_LNS             MALAWI                         Male_24 months            0        9      17
24 months   iLiNS_DYADM_LNS             MALAWI                         Male_24 months            1        8      17
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_24 months          0       39      63
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_24 months          1       24      63
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_24 months            0       35      68
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_24 months            1       33      68
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_24 months          0      344     575
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_24 months          1      231     575
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_24 months            0      360     612
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_24 months            1      252     612
24 months   ki1000111-WASH-Kenya        KENYA                          Female_24 months          0      885    1207
24 months   ki1000111-WASH-Kenya        KENYA                          Female_24 months          1      322    1207
24 months   ki1000111-WASH-Kenya        KENYA                          Male_24 months            0      680    1057
24 months   ki1000111-WASH-Kenya        KENYA                          Male_24 months            1      377    1057
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Female_24 months          0        1       2
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Female_24 months          1        1       2
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Male_24 months            0        0       1
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Male_24 months            1        1       1
24 months   ki1000304-EU                INDIA                          Female_24 months          0       49     121
24 months   ki1000304-EU                INDIA                          Female_24 months          1       72     121
24 months   ki1000304-EU                INDIA                          Male_24 months            0       52     132
24 months   ki1000304-EU                INDIA                          Male_24 months            1       80     132
24 months   ki1000304-Vitamin-B12       INDIA                          Female_24 months          0       38      56
24 months   ki1000304-Vitamin-B12       INDIA                          Female_24 months          1       18      56
24 months   ki1000304-Vitamin-B12       INDIA                          Male_24 months            0       36      77
24 months   ki1000304-Vitamin-B12       INDIA                          Male_24 months            1       41      77
24 months   ki1000304-ZnMort            INDIA                          Female_24 months          0       22      65
24 months   ki1000304-ZnMort            INDIA                          Female_24 months          1       43      65
24 months   ki1000304-ZnMort            INDIA                          Male_24 months            0       35      75
24 months   ki1000304-ZnMort            INDIA                          Male_24 months            1       40      75
24 months   ki1017093b-PROVIDE          BANGLADESH                     Female_24 months          0        2       2
24 months   ki1017093b-PROVIDE          BANGLADESH                     Female_24 months          1        0       2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_24 months          0        2       2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_24 months          1        0       2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_24 months            0        1       2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_24 months            1        1       2
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_24 months          0      396     581
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_24 months          1      185     581
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_24 months            0      356     588
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_24 months            1      232     588
24 months   ki1119695-PROBIT            BELARUS                        Female_24 months          0      420     445
24 months   ki1119695-PROBIT            BELARUS                        Female_24 months          1       25     445
24 months   ki1119695-PROBIT            BELARUS                        Male_24 months            0      321     396
24 months   ki1119695-PROBIT            BELARUS                        Male_24 months            1       75     396
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_24 months          0        8      22
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_24 months          1       14      22
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_24 months            0        6      15
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_24 months            1        9      15
24 months   ki1135781-COHORTS           GUATEMALA                      Female_24 months          0       29     153
24 months   ki1135781-COHORTS           GUATEMALA                      Female_24 months          1      124     153
24 months   ki1135781-COHORTS           GUATEMALA                      Male_24 months            0       45     182
24 months   ki1135781-COHORTS           GUATEMALA                      Male_24 months            1      137     182
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_24 months          0      209     387
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_24 months          1      178     387
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_24 months            0      176     389
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_24 months            1      213     389
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Female_24 months          0       19      33
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Female_24 months          1       14      33
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_24 months            0       19      32
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_24 months            1       13      32
24 months   ki1148112-LCNI-5            MALAWI                         Female_24 months          0      129     196
24 months   ki1148112-LCNI-5            MALAWI                         Female_24 months          1       67     196
24 months   ki1148112-LCNI-5            MALAWI                         Male_24 months            0      112     189
24 months   ki1148112-LCNI-5            MALAWI                         Male_24 months            1       77     189
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_24 months          0       25      57
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_24 months          1       32      57
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_24 months            0       50     101
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_24 months            1       51     101
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_24 months          0      624    1047
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_24 months          1      423    1047
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_24 months            0      546     957
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_24 months            1      411     957


The following strata were considered:

* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXsex: Female_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXsex: Male_24 months
* agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXsex: Female_24 months
* agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXsex: Male_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXsex: Female_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXsex: Male_24 months
* agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXsex: Female_24 months
* agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXsex: Male_24 months
* agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXsex: Female_24 months
* agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXsex: Male_24 months
* agecat: 24 months, studyid: ki1000304-EU, country: INDIA, intXsex: Female_24 months
* agecat: 24 months, studyid: ki1000304-EU, country: INDIA, intXsex: Male_24 months
* agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXsex: Female_24 months
* agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXsex: Male_24 months
* agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA, intXsex: Female_24 months
* agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA, intXsex: Male_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXsex: Female_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXsex: Female_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXsex: Male_24 months
* agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXsex: Female_24 months
* agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXsex: Male_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXsex: Female_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXsex: Male_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXsex: Female_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXsex: Male_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXsex: Female_24 months
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXsex: Male_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXsex: Female_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXsex: Male_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXsex: Female_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXsex: Male_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXsex: Female_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXsex: Male_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXsex: Female_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXsex: Male_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXsex: Female_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXsex: Male_24 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXsex: Female_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXsex: Male_6 months
* agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXsex: Male_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXsex: Male_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXsex: Male_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXsex: Male_6 months
* agecat: 6 months, studyid: ki1000304-EU, country: INDIA, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1000304-EU, country: INDIA, intXsex: Male_6 months
* agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXsex: Male_6 months
* agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXsex: Male_6 months
* agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA, intXsex: Male_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXsex: Male_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXsex: Male_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXsex: Male_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXsex: Male_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXsex: Male_6 months
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXsex: Male_6 months
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXsex: Male_6 months
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXsex: Male_6 months
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXsex: Male_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXsex: Male_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXsex: Male_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXsex: Male_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXsex: Female_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXsex: Male_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXsex: Female_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXsex: Male_6 months
* agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXsex: Male_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXsex: Female_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXsex: Male_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXsex: Female_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXsex: Male_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXsex: Female_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXsex: Male_Birth
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXsex: Female_Birth
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXsex: Male_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXsex: Female_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXsex: Male_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXsex: Male_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXsex: Female_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXsex: Male_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXsex: Female_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXsex: Male_Birth

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXsex: Male_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXsex: Female_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXsex: Male_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXsex: Male_Birth
* agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXsex: Female_6 months
* agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXsex: Female_24 months
* agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXsex: Male_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXsex: Female_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXsex: Female_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXsex: Male_24 months

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
![](/tmp/2b75de8c-31f4-4662-9340-4ba54cabf9c5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2b75de8c-31f4-4662-9340-4ba54cabf9c5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2b75de8c-31f4-4662-9340-4ba54cabf9c5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2b75de8c-31f4-4662-9340-4ba54cabf9c5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                     country                        intXsex            intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  -----------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Female_Birth       Control              NA                0.2058824    0.0196255   0.3921392
Birth       ki1000304b-SAS-CompFeed     INDIA                          Female_Birth       Other                NA                0.2187500    0.0477440   0.3897560
Birth       ki1000304b-SAS-CompFeed     INDIA                          Male_Birth         Control              NA                0.2777778    0.2321240   0.3234316
Birth       ki1000304b-SAS-CompFeed     INDIA                          Male_Birth         Other                NA                0.3333333    0.1343291   0.5323376
Birth       ki1119695-PROBIT            BELARUS                        Female_Birth       Control              NA                0.0017016    0.0002771   0.0031261
Birth       ki1119695-PROBIT            BELARUS                        Female_Birth       Maternal             NA                0.0005479   -0.0003424   0.0014383
Birth       ki1119695-PROBIT            BELARUS                        Male_Birth         Control              NA                0.0046111   -0.0000235   0.0092457
Birth       ki1119695-PROBIT            BELARUS                        Male_Birth         Maternal             NA                0.0028944    0.0004686   0.0053201
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Female_Birth       Control              NA                0.0932611    0.0792796   0.1072427
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Female_Birth       VitA                 NA                0.1005124    0.0922385   0.1087864
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Male_Birth         Control              NA                0.1147174    0.0999409   0.1294939
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Male_Birth         VitA                 NA                0.1058979    0.0976186   0.1141771
Birth       ki1135781-COHORTS           GUATEMALA                      Female_Birth       Control              NA                0.0430108    0.0138182   0.0722033
Birth       ki1135781-COHORTS           GUATEMALA                      Female_Birth       Other                NA                0.0596330    0.0281592   0.0911069
Birth       ki1135781-COHORTS           GUATEMALA                      Male_Birth         Control              NA                0.0497738    0.0210692   0.0784783
Birth       ki1135781-COHORTS           GUATEMALA                      Male_Birth         Other                NA                0.0792952    0.0441064   0.1144839
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Female_Birth       Control              NA                0.3326386    0.3177674   0.3475098
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Female_Birth       Maternal             NA                0.3045011    0.2902838   0.3187185
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Male_Birth         Control              NA                0.3496362    0.3348077   0.3644648
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Male_Birth         Maternal             NA                0.3059849    0.2911120   0.3208579
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Female_Birth       Control              NA                0.3333333    0.2361828   0.4304838
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Female_Birth       LNS                  NA                0.3362832    0.2447994   0.4277670
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Female_Birth       Other                NA                0.3407821    0.2633281   0.4182362
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Male_Birth         Control              NA                0.2844828    0.1957364   0.3732291
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Male_Birth         LNS                  NA                0.3157895    0.2255619   0.4060170
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Male_Birth         Other                NA                0.2239583    0.1576846   0.2902321
6 months    iLiNS_DYADM_LNS             MALAWI                         Female_6 months    Control              NA                0.2044199    0.1455861   0.2632537
6 months    iLiNS_DYADM_LNS             MALAWI                         Female_6 months    LNS                  NA                0.1849711    0.1270312   0.2429110
6 months    iLiNS_DYADM_LNS             MALAWI                         Male_6 months      Control              NA                0.2647059    0.1982862   0.3311256
6 months    iLiNS_DYADM_LNS             MALAWI                         Male_6 months      LNS                  NA                0.2578616    0.1897618   0.3259615
6 months    ki1000107-Serrinha-VitA     BRAZIL                         Male_6 months      Control              NA                0.5000000    0.1834373   0.8165627
6 months    ki1000107-Serrinha-VitA     BRAZIL                         Male_6 months      VitA                 NA                0.0714286   -0.0663778   0.2092350
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6 months    Control              NA                0.1707317    0.0891729   0.2522905
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6 months    LNS                  NA                0.1397849    0.0692076   0.2103623
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6 months    Other                NA                0.0809249    0.0402275   0.1216222
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6 months      Control              NA                0.1898734    0.1032582   0.2764886
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6 months      LNS                  NA                0.1684211    0.0930530   0.2437891
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6 months      Other                NA                0.1750000    0.1160362   0.2339638
6 months    ki1000111-WASH-Kenya        KENYA                          Male_6 months      Control              NA                0.1428571   -0.0427776   0.3284919
6 months    ki1000111-WASH-Kenya        KENYA                          Male_6 months      LNS                  NA                0.1428571   -0.1196701   0.4053844
6 months    ki1000111-WASH-Kenya        KENYA                          Male_6 months      Other                NA                0.2631579    0.0626348   0.4636810
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_6 months    Control              NA                0.3352601    0.2647992   0.4057210
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_6 months    Maternal             NA                0.2074074    0.1389021   0.2759128
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_6 months      Control              NA                0.3217822    0.2572762   0.3862881
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_6 months      Maternal             NA                0.2756757    0.2112009   0.3401504
6 months    ki1000304-EU                INDIA                          Female_6 months    Control              NA                0.3444444    0.2459691   0.4429198
6 months    ki1000304-EU                INDIA                          Female_6 months    Zinc                 NA                0.2602740    0.1593083   0.3612397
6 months    ki1000304-EU                INDIA                          Male_6 months      Control              NA                0.3518519    0.2615614   0.4421423
6 months    ki1000304-EU                INDIA                          Male_6 months      Zinc                 NA                0.3152174    0.2200421   0.4103927
6 months    ki1000304-VITAMIN-A         INDIA                          Female_6 months    Control              NA                0.2990354    0.2630404   0.3350304
6 months    ki1000304-VITAMIN-A         INDIA                          Female_6 months    VitA                 NA                0.3174061    0.2797038   0.3551085
6 months    ki1000304-VITAMIN-A         INDIA                          Male_6 months      Control              NA                0.4136858    0.3756047   0.4517670
6 months    ki1000304-VITAMIN-A         INDIA                          Male_6 months      VitA                 NA                0.3439878    0.3076499   0.3803257
6 months    ki1000304-Vitamin-B12       INDIA                          Female_6 months    Control              NA                0.1666667   -0.1350615   0.4683948
6 months    ki1000304-Vitamin-B12       INDIA                          Female_6 months    Other                NA                0.2432432    0.1033633   0.3831232
6 months    ki1000304-Vitamin-B12       INDIA                          Male_6 months      Control              NA                0.4545455    0.1563434   0.7527475
6 months    ki1000304-Vitamin-B12       INDIA                          Male_6 months      Other                NA                0.2962963    0.1217482   0.4708444
6 months    ki1000304-ZnMort            INDIA                          Female_6 months    Control              NA                0.3142857    0.1592729   0.4692986
6 months    ki1000304-ZnMort            INDIA                          Female_6 months    Zinc                 NA                0.3448276    0.1704673   0.5191879
6 months    ki1000304-ZnMort            INDIA                          Male_6 months      Control              NA                0.3921569    0.2573270   0.5269868
6 months    ki1000304-ZnMort            INDIA                          Male_6 months      Zinc                 NA                0.3666667    0.1931517   0.5401816
6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_6 months    Control              NA                0.2867647    0.2404193   0.3331101
6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_6 months    Other                NA                0.3378378    0.3022051   0.3734706
6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_6 months      Control              NA                0.2704403    0.1757546   0.3651259
6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_6 months      Other                NA                0.2356322    0.1891365   0.2821279
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_6 months    Control              NA                0.5192308    0.3830716   0.6553900
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_6 months    Other                NA                0.3941606    0.3121150   0.4762062
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_6 months      Control              NA                0.5263158    0.3670817   0.6855499
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_6 months      Other                NA                0.3906250    0.3058481   0.4754019
6 months    ki1017093b-PROVIDE          BANGLADESH                     Male_6 months      Control              NA                0.2000000   -0.1588598   0.5588598
6 months    ki1017093b-PROVIDE          BANGLADESH                     Male_6 months      Other                NA                0.2941176    0.0724246   0.5158107
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6 months    Control              NA                0.0926829    0.0529629   0.1324029
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6 months    Other                NA                0.0769231    0.0406886   0.1131576
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6 months    Zinc                 NA                0.0796253    0.0539331   0.1053175
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6 months      Control              NA                0.1272727    0.0832077   0.1713378
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6 months      Other                NA                0.1342593    0.0887670   0.1797516
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6 months      Zinc                 NA                0.1392111    0.1065113   0.1719110
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6 months    Control              NA                0.1025641    0.0071983   0.1979299
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6 months    Zinc                 NA                0.1028369    0.0673301   0.1383437
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6 months      Control              NA                0.1190476    0.0209488   0.2171465
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6 months      Zinc                 NA                0.1310861    0.0905387   0.1716336
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_6 months    Control              NA                0.3090909    0.1864126   0.4317692
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_6 months    Other                NA                0.2456140    0.1333653   0.3578628
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_6 months      Control              NA                0.3396226    0.2115186   0.4677267
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_6 months      Other                NA                0.3207547    0.1944940   0.4470154
6 months    ki1119695-PROBIT            BELARUS                        Female_6 months    Control              NA                0.0245969    0.0078846   0.0413091
6 months    ki1119695-PROBIT            BELARUS                        Female_6 months    Maternal             NA                0.0110439    0.0063235   0.0157644
6 months    ki1119695-PROBIT            BELARUS                        Male_6 months      Control              NA                0.1233710    0.0919168   0.1548252
6 months    ki1119695-PROBIT            BELARUS                        Male_6 months      Maternal             NA                0.1020921    0.0750785   0.1291056
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_6 months    Control              NA                0.1460554    0.1234518   0.1686590
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_6 months    VitA                 NA                0.1330291    0.1205572   0.1455011
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_6 months      Control              NA                0.1799591    0.1558801   0.2040381
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_6 months      VitA                 NA                0.1986051    0.1843534   0.2128568
6 months    ki1135781-COHORTS           GUATEMALA                      Female_6 months    Control              NA                0.4265403    0.3597318   0.4933487
6 months    ki1135781-COHORTS           GUATEMALA                      Female_6 months    Other                NA                0.3478261    0.2862035   0.4094487
6 months    ki1135781-COHORTS           GUATEMALA                      Male_6 months      Control              NA                0.4979253    0.4347353   0.5611153
6 months    ki1135781-COHORTS           GUATEMALA                      Male_6 months      Other                NA                0.3960000    0.3353142   0.4566858
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_6 months    Control              NA                0.2631579    0.1931177   0.3331981
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_6 months    LNS                  NA                0.2552404    0.2252180   0.2852629
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_6 months      Control              NA                0.3869048    0.3132189   0.4605906
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_6 months      LNS                  NA                0.3391740    0.3063301   0.3720178
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6 months    Control              NA                0.2044199    0.1456148   0.2632250
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6 months    Maternal             NA                0.1754875    0.1361030   0.2148719
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6 months      Control              NA                0.2647059    0.1983193   0.3310925
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6 months      Maternal             NA                0.2758621    0.2267652   0.3249590
6 months    ki1148112-LCNI-5            MALAWI                         Female_6 months    Control              NA                0.2244898    0.1417823   0.3071973
6 months    ki1148112-LCNI-5            MALAWI                         Female_6 months    LNS                  NA                0.2971698    0.2355777   0.3587620
6 months    ki1148112-LCNI-5            MALAWI                         Female_6 months    Other                NA                0.3363636    0.2479663   0.4247609
6 months    ki1148112-LCNI-5            MALAWI                         Male_6 months      Control              NA                0.4504505    0.3577819   0.5431190
6 months    ki1148112-LCNI-5            MALAWI                         Male_6 months      LNS                  NA                0.4333333    0.3662318   0.5004348
6 months    ki1148112-LCNI-5            MALAWI                         Male_6 months      Other                NA                0.4693878    0.3704622   0.5683133
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_6 months    Control              NA                0.2247958    0.2096791   0.2399125
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_6 months    Maternal             NA                0.1992947    0.1852456   0.2133439
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_6 months      Control              NA                0.2988657    0.2822828   0.3154485
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_6 months      Maternal             NA                0.2801521    0.2664501   0.2938540
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_6 months    Control              NA                0.2128674    0.1750364   0.2506983
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_6 months    LNS                  NA                0.2026920    0.1647870   0.2405970
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_6 months    Other                NA                0.2365145    0.2069034   0.2661257
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_6 months      Control              NA                0.2652542    0.2210188   0.3094897
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_6 months      LNS                  NA                0.2822642    0.2467307   0.3177976
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_6 months      Other                NA                0.3000000    0.2686992   0.3313008
24 months   iLiNS_DYADM_LNS             MALAWI                         Female_24 months   Control              NA                0.4000000   -0.0418557   0.8418557
24 months   iLiNS_DYADM_LNS             MALAWI                         Female_24 months   LNS                  NA                0.3846154    0.1124864   0.6567444
24 months   iLiNS_DYADM_LNS             MALAWI                         Male_24 months     Control              NA                0.7142857    0.3693283   1.0592431
24 months   iLiNS_DYADM_LNS             MALAWI                         Male_24 months     LNS                  NA                0.3000000    0.0072329   0.5927671
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_24 months   Control              NA                0.3888889    0.2283634   0.5494144
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_24 months   VitA                 NA                0.3703704    0.1867583   0.5539825
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_24 months     Control              NA                0.4857143    0.3189036   0.6525249
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_24 months     VitA                 NA                0.4848485    0.3130661   0.6566309
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_24 months   Control              NA                0.4503817    0.3651087   0.5356546
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_24 months   LNS                  NA                0.3958333    0.3158905   0.4757761
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_24 months   Other                NA                0.3833333    0.3282679   0.4383988
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_24 months     Control              NA                0.4000000    0.3187834   0.4812166
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_24 months     LNS                  NA                0.3619632    0.2881278   0.4357986
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_24 months     Other                NA                0.4433657    0.3879299   0.4988015
24 months   ki1000111-WASH-Kenya        KENYA                          Female_24 months   Control              NA                0.2655502    0.2231962   0.3079042
24 months   ki1000111-WASH-Kenya        KENYA                          Female_24 months   LNS                  NA                0.2415094    0.1899572   0.2930616
24 months   ki1000111-WASH-Kenya        KENYA                          Female_24 months   Other                NA                0.2805344    0.2420521   0.3190166
24 months   ki1000111-WASH-Kenya        KENYA                          Male_24 months     Control              NA                0.3567251    0.3059319   0.4075184
24 months   ki1000111-WASH-Kenya        KENYA                          Male_24 months     LNS                  NA                0.3489362    0.2879678   0.4099045
24 months   ki1000111-WASH-Kenya        KENYA                          Male_24 months     Other                NA                0.3604167    0.3174448   0.4033885
24 months   ki1000304-EU                INDIA                          Female_24 months   Control              NA                0.6862745    0.5583986   0.8141505
24 months   ki1000304-EU                INDIA                          Female_24 months   Zinc                 NA                0.5285714    0.4111463   0.6459965
24 months   ki1000304-EU                INDIA                          Male_24 months     Control              NA                0.5945946    0.4823052   0.7068840
24 months   ki1000304-EU                INDIA                          Male_24 months     Zinc                 NA                0.6206897    0.4953409   0.7460384
24 months   ki1000304-Vitamin-B12       INDIA                          Female_24 months   Control              NA                0.2142857   -0.0025974   0.4311688
24 months   ki1000304-Vitamin-B12       INDIA                          Female_24 months   Other                NA                0.3571429    0.2109203   0.5033654
24 months   ki1000304-Vitamin-B12       INDIA                          Male_24 months     Control              NA                0.4583333    0.2576840   0.6589827
24 months   ki1000304-Vitamin-B12       INDIA                          Male_24 months     Other                NA                0.5660377    0.4317311   0.7003443
24 months   ki1000304-ZnMort            INDIA                          Female_24 months   Control              NA                0.6578947    0.5058816   0.8099079
24 months   ki1000304-ZnMort            INDIA                          Female_24 months   Zinc                 NA                0.6666667    0.4874714   0.8458620
24 months   ki1000304-ZnMort            INDIA                          Male_24 months     Control              NA                0.6216216    0.4643001   0.7789432
24 months   ki1000304-ZnMort            INDIA                          Male_24 months     Zinc                 NA                0.4473684    0.2882129   0.6065239
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_24 months   Control              NA                0.2542373    0.1430344   0.3654402
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_24 months   Zinc                 NA                0.3256705    0.2854347   0.3659063
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_24 months     Control              NA                0.4677419    0.3434376   0.5920462
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_24 months     Zinc                 NA                0.3859316    0.3442937   0.4275694
24 months   ki1119695-PROBIT            BELARUS                        Female_24 months   Control              NA                0.0659898   -0.0358362   0.1678159
24 months   ki1119695-PROBIT            BELARUS                        Female_24 months   Maternal             NA                0.0483871   -0.0134241   0.1101983
24 months   ki1119695-PROBIT            BELARUS                        Male_24 months     Control              NA                0.1920904    0.0801130   0.3040678
24 months   ki1119695-PROBIT            BELARUS                        Male_24 months     Maternal             NA                0.1872146    0.1190157   0.2554135
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_24 months   Control              NA                0.5000000    0.0905092   0.9094908
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_24 months   VitA                 NA                0.6875000    0.4550384   0.9199616
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_24 months     Control              NA                0.4000000   -0.0444781   0.8444781
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_24 months     VitA                 NA                0.7000000    0.4060054   0.9939946
24 months   ki1135781-COHORTS           GUATEMALA                      Female_24 months   Control              NA                0.8101266    0.7233571   0.8968961
24 months   ki1135781-COHORTS           GUATEMALA                      Female_24 months   Other                NA                0.8108108    0.7212817   0.9003399
24 months   ki1135781-COHORTS           GUATEMALA                      Male_24 months     Control              NA                0.7934783    0.7105312   0.8764253
24 months   ki1135781-COHORTS           GUATEMALA                      Male_24 months     Other                NA                0.7111111    0.6172129   0.8050093
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_24 months   Control              NA                0.4264706    0.3087702   0.5441710
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_24 months   LNS                  NA                0.4670846    0.4122643   0.5219050
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_24 months     Control              NA                0.6065574    0.4838082   0.7293066
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_24 months     LNS                  NA                0.5365854    0.4825505   0.5906203
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Female_24 months   Control              NA                0.4000000   -0.0360645   0.8360645
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Female_24 months   Maternal             NA                0.4285714    0.2424297   0.6147131
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_24 months     Control              NA                0.7142857    0.3742730   1.0542984
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_24 months     Maternal             NA                0.3200000    0.1342188   0.5057812
24 months   ki1148112-LCNI-5            MALAWI                         Female_24 months   Control              NA                0.3454545    0.2194626   0.4714465
24 months   ki1148112-LCNI-5            MALAWI                         Female_24 months   LNS                  NA                0.3370787    0.2386185   0.4355388
24 months   ki1148112-LCNI-5            MALAWI                         Female_24 months   Other                NA                0.3461538    0.2165167   0.4757910
24 months   ki1148112-LCNI-5            MALAWI                         Male_24 months     Control              NA                0.4107143    0.2815213   0.5399073
24 months   ki1148112-LCNI-5            MALAWI                         Male_24 months     LNS                  NA                0.4444444    0.3415122   0.5473767
24 months   ki1148112-LCNI-5            MALAWI                         Male_24 months     Other                NA                0.3255814    0.1851512   0.4660116
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_24 months   Control              NA                0.5000000    0.2311533   0.7688467
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_24 months   Maternal             NA                0.6060606    0.4057906   0.8063307
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_24 months     Control              NA                0.4680851    0.2751819   0.6609883
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_24 months     Maternal             NA                0.5370370    0.3711672   0.7029069
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_24 months   Control              NA                0.4736842    0.3838339   0.5635345
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_24 months   LNS                  NA                0.3346008    0.2363385   0.4328630
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_24 months   Other                NA                0.4008016    0.3397106   0.4618926
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_24 months     Control              NA                0.3846154    0.2849097   0.4843211
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_24 months     LNS                  NA                0.4659864    0.3881277   0.5438450
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_24 months     Other                NA                0.4289044    0.3579489   0.4998600


### Parameter: E(Y)


agecat      studyid                     country                        intXsex            intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  -----------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Female_Birth       NA                   NA                0.2121212    0.0852603   0.3389821
Birth       ki1000304b-SAS-CompFeed     INDIA                          Male_Birth         NA                   NA                0.3076923    0.1924444   0.4229402
Birth       ki1119695-PROBIT            BELARUS                        Female_Birth       NA                   NA                0.0011148    0.0002442   0.0019855
Birth       ki1119695-PROBIT            BELARUS                        Male_Birth         NA                   NA                0.0037269    0.0011447   0.0063091
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Female_Birth       NA                   NA                0.0987233    0.0915994   0.1058472
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Male_Birth         NA                   NA                0.1081195    0.1008929   0.1153462
Birth       ki1135781-COHORTS           GUATEMALA                      Female_Birth       NA                   NA                0.0519802    0.0303070   0.0736534
Birth       ki1135781-COHORTS           GUATEMALA                      Male_Birth         NA                   NA                0.0647321    0.0419223   0.0875420
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Female_Birth       NA                   NA                0.3185362    0.3081680   0.3289045
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Male_Birth         NA                   NA                0.3275966    0.3169149   0.3382782
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Female_Birth       NA                   NA                0.3375000    0.2869330   0.3880670
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Male_Birth         NA                   NA                0.2654028    0.2194381   0.3113676
6 months    iLiNS_DYADM_LNS             MALAWI                         Female_6 months    NA                   NA                0.1949153    0.1535911   0.2362395
6 months    iLiNS_DYADM_LNS             MALAWI                         Male_6 months      NA                   NA                0.2613982    0.2138463   0.3089500
6 months    ki1000107-Serrinha-VitA     BRAZIL                         Male_6 months      NA                   NA                0.2500000    0.0730360   0.4269640
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6 months    NA                   NA                0.1178161    0.0838954   0.1517368
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6 months      NA                   NA                0.1766467    0.1356856   0.2176078
6 months    ki1000111-WASH-Kenya        KENYA                          Male_6 months      NA                   NA                0.2000000    0.0744618   0.3255382
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_6 months    NA                   NA                0.2792208    0.2290381   0.3294035
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_6 months      NA                   NA                0.2997416    0.2540373   0.3454459
6 months    ki1000304-EU                INDIA                          Female_6 months    NA                   NA                0.3067485    0.2357372   0.3777597
6 months    ki1000304-EU                INDIA                          Male_6 months      NA                   NA                0.3350000    0.2694225   0.4005775
6 months    ki1000304-VITAMIN-A         INDIA                          Female_6 months    NA                   NA                0.3079470    0.2819034   0.3339907
6 months    ki1000304-VITAMIN-A         INDIA                          Male_6 months      NA                   NA                0.3784615    0.3520868   0.4048363
6 months    ki1000304-Vitamin-B12       INDIA                          Female_6 months    NA                   NA                0.2325581    0.1047931   0.3603232
6 months    ki1000304-Vitamin-B12       INDIA                          Male_6 months      NA                   NA                0.3421053    0.1892412   0.4949693
6 months    ki1000304-ZnMort            INDIA                          Female_6 months    NA                   NA                0.3281250    0.2121828   0.4440672
6 months    ki1000304-ZnMort            INDIA                          Male_6 months      NA                   NA                0.3827160    0.2762076   0.4892245
6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_6 months    NA                   NA                0.3133803    0.2806320   0.3461286
6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_6 months      NA                   NA                0.2522523    0.2003087   0.3041958
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_6 months    NA                   NA                0.4285714    0.3578320   0.4993109
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_6 months      NA                   NA                0.4216867    0.3463368   0.4970366
6 months    ki1017093b-PROVIDE          BANGLADESH                     Male_6 months      NA                   NA                0.2727273    0.0822464   0.4632081
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6 months    NA                   NA                0.0821429    0.0635631   0.1007226
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6 months      NA                   NA                0.1349481    0.1121922   0.1577040
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6 months    NA                   NA                0.1028037    0.0695285   0.1360790
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6 months      NA                   NA                0.1294498    0.0919594   0.1669403
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_6 months    NA                   NA                0.2767857    0.1935534   0.3600180
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_6 months      NA                   NA                0.3301887    0.2402367   0.4201407
6 months    ki1119695-PROBIT            BELARUS                        Female_6 months    NA                   NA                0.0176896    0.0084987   0.0268805
6 months    ki1119695-PROBIT            BELARUS                        Male_6 months      NA                   NA                0.1125320    0.0909184   0.1341456
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_6 months    NA                   NA                0.1362556    0.1253279   0.1471833
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_6 months      NA                   NA                0.1940336    0.1817601   0.2063071
6 months    ki1135781-COHORTS           GUATEMALA                      Female_6 months    NA                   NA                0.3854875    0.3400105   0.4309646
6 months    ki1135781-COHORTS           GUATEMALA                      Male_6 months      NA                   NA                0.4460285    0.4020161   0.4900409
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_6 months    NA                   NA                0.2564901    0.2288946   0.2840857
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_6 months      NA                   NA                0.3474664    0.3174390   0.3774938
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6 months    NA                   NA                0.1851852    0.1523918   0.2179786
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6 months      NA                   NA                0.2719836    0.2325034   0.3114639
6 months    ki1148112-LCNI-5            MALAWI                         Female_6 months    NA                   NA                0.2904762    0.2470072   0.3339452
6 months    ki1148112-LCNI-5            MALAWI                         Male_6 months      NA                   NA                0.4463007    0.3986455   0.4939560
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_6 months    NA                   NA                0.2120290    0.2016453   0.2224127
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_6 months      NA                   NA                0.2893410    0.2785912   0.3000908
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_6 months    NA                   NA                0.2210616    0.2011775   0.2409457
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_6 months      NA                   NA                0.2862620    0.2653180   0.3072059
24 months   iLiNS_DYADM_LNS             MALAWI                         Female_24 months   NA                   NA                0.3888889    0.1571513   0.6206265
24 months   iLiNS_DYADM_LNS             MALAWI                         Male_24 months     NA                   NA                0.4705882    0.2260170   0.7151595
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_24 months   NA                   NA                0.3809524    0.2600737   0.5018310
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_24 months     NA                   NA                0.4852941    0.3656221   0.6049662
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_24 months   NA                   NA                0.4017391    0.3616331   0.4418451
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_24 months     NA                   NA                0.4117647    0.3727411   0.4507883
24 months   ki1000111-WASH-Kenya        KENYA                          Female_24 months   NA                   NA                0.2667771    0.2418159   0.2917384
24 months   ki1000111-WASH-Kenya        KENYA                          Male_24 months     NA                   NA                0.3566698    0.3277786   0.3855611
24 months   ki1000304-EU                INDIA                          Female_24 months   NA                   NA                0.5950413    0.5072126   0.6828700
24 months   ki1000304-EU                INDIA                          Male_24 months     NA                   NA                0.6060606    0.5223876   0.6897336
24 months   ki1000304-Vitamin-B12       INDIA                          Female_24 months   NA                   NA                0.3214286    0.1980025   0.4448546
24 months   ki1000304-Vitamin-B12       INDIA                          Male_24 months     NA                   NA                0.5324675    0.4202931   0.6446419
24 months   ki1000304-ZnMort            INDIA                          Female_24 months   NA                   NA                0.6615385    0.5456099   0.7774670
24 months   ki1000304-ZnMort            INDIA                          Male_24 months     NA                   NA                0.5333333    0.4196662   0.6470005
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_24 months   NA                   NA                0.3184165    0.2805032   0.3563298
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_24 months     NA                   NA                0.3945578    0.3550193   0.4340964
24 months   ki1119695-PROBIT            BELARUS                        Female_24 months   NA                   NA                0.0561798   -0.0001349   0.1124945
24 months   ki1119695-PROBIT            BELARUS                        Male_24 months     NA                   NA                0.1893939    0.1266848   0.2521031
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_24 months   NA                   NA                0.6363636    0.4306208   0.8421065
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_24 months     NA                   NA                0.6000000    0.3433805   0.8566195
24 months   ki1135781-COHORTS           GUATEMALA                      Female_24 months   NA                   NA                0.8104575    0.7481494   0.8727656
24 months   ki1135781-COHORTS           GUATEMALA                      Male_24 months     NA                   NA                0.7527473    0.6898974   0.8155971
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_24 months   NA                   NA                0.4599483    0.4102288   0.5096678
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_24 months     NA                   NA                0.5475578    0.4980324   0.5970833
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Female_24 months   NA                   NA                0.4242424    0.2530045   0.5954804
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_24 months     NA                   NA                0.4062500    0.2333616   0.5791384
24 months   ki1148112-LCNI-5            MALAWI                         Female_24 months   NA                   NA                0.3418367    0.2752624   0.4084111
24 months   ki1148112-LCNI-5            MALAWI                         Male_24 months     NA                   NA                0.4074074    0.3371711   0.4776437
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_24 months   NA                   NA                0.5614035    0.3971254   0.7256816
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_24 months     NA                   NA                0.5049505    0.3783825   0.6315185
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_24 months   NA                   NA                0.4040115    0.3585973   0.4494256
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_24 months     NA                   NA                0.4294671    0.3828195   0.4761147


### Parameter: RR


agecat      studyid                     country                        intXsex            intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  --------------------------  -----------------------------  -----------------  -------------------  ---------------  ----------  ----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Female_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          Female_Birth       Other                Control           1.0625000   0.3238114    3.4863079
Birth       ki1000304b-SAS-CompFeed     INDIA                          Male_Birth         Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          Male_Birth         Other                Control           1.2000000   0.6487327    2.2197125
Birth       ki1119695-PROBIT            BELARUS                        Female_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1119695-PROBIT            BELARUS                        Female_Birth       Maternal             Control           0.3220091   0.0518252    2.0007633
Birth       ki1119695-PROBIT            BELARUS                        Male_Birth         Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1119695-PROBIT            BELARUS                        Male_Birth         Maternal             Control           0.6276893   0.1694944    2.3245248
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Female_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Female_Birth       VitA                 Control           1.0777524   0.9083244    1.2787836
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Male_Birth         Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Male_Birth         VitA                 Control           0.9231195   0.7939978    1.0732392
Birth       ki1135781-COHORTS           GUATEMALA                      Female_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      Female_Birth       Other                Control           1.3864678   0.5868253    3.2757501
Birth       ki1135781-COHORTS           GUATEMALA                      Male_Birth         Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      Male_Birth         Other                Control           1.5931117   0.7695198    3.2981673
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Female_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Female_Birth       Maternal             Control           0.9154113   0.8581007    0.9765496
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Male_Birth         Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Male_Birth         Maternal             Control           0.8751523   0.8204806    0.9334670
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Female_Birth       Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Female_Birth       LNS                  Control           1.0088496   0.6771208    1.5030957
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Female_Birth       Other                Control           1.0223464   0.7064573    1.4794837
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Male_Birth         Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Male_Birth         LNS                  Control           1.1100478   0.7271722    1.6945179
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Male_Birth         Other                Control           0.7872475   0.5120949    1.2102418
6 months    iLiNS_DYADM_LNS             MALAWI                         Female_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         Female_6 months    LNS                  Control           0.9048586   0.5913422    1.3845945
6 months    iLiNS_DYADM_LNS             MALAWI                         Male_6 months      Control              Control           1.0000000   1.0000000    1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         Male_6 months      LNS                  Control           0.9741440   0.6767286    1.4022703
6 months    ki1000107-Serrinha-VitA     BRAZIL                         Male_6 months      Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000107-Serrinha-VitA     BRAZIL                         Male_6 months      VitA                 Control           0.1428571   0.0187525    1.0882911
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6 months    LNS                  Control           0.8187404   0.4085839    1.6406320
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6 months    Other                Control           0.4739884   0.2368819    0.9484263
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6 months      Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6 months      LNS                  Control           0.8870175   0.4681755    1.6805667
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6 months      Other                Control           0.9216667   0.5227316    1.6250585
6 months    ki1000111-WASH-Kenya        KENYA                          Male_6 months      Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000111-WASH-Kenya        KENYA                          Male_6 months      LNS                  Control           1.0000000   0.1053252    9.4943996
6 months    ki1000111-WASH-Kenya        KENYA                          Male_6 months      Other                Control           1.8421053   0.4084155    8.3085775
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_6 months    Maternal             Control           0.6186462   0.4182351    0.9150911
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_6 months      Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_6 months      Maternal             Control           0.8567152   0.6295911    1.1657739
6 months    ki1000304-EU                INDIA                          Female_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-EU                INDIA                          Female_6 months    Zinc                 Control           0.7556341   0.4666904    1.2234726
6 months    ki1000304-EU                INDIA                          Male_6 months      Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-EU                INDIA                          Male_6 months      Zinc                 Control           0.8958810   0.6027816    1.3314984
6 months    ki1000304-VITAMIN-A         INDIA                          Female_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          Female_6 months    VitA                 Control           1.0614334   0.8962911    1.2570034
6 months    ki1000304-VITAMIN-A         INDIA                          Male_6 months      Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          Male_6 months      VitA                 Control           0.8315194   0.7228030    0.9565878
6 months    ki1000304-Vitamin-B12       INDIA                          Female_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-Vitamin-B12       INDIA                          Female_6 months    Other                Control           1.4594595   0.2183967    9.7529938
6 months    ki1000304-Vitamin-B12       INDIA                          Male_6 months      Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-Vitamin-B12       INDIA                          Male_6 months      Other                Control           0.6518519   0.2699119    1.5742575
6 months    ki1000304-ZnMort            INDIA                          Female_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-ZnMort            INDIA                          Female_6 months    Zinc                 Control           1.0971787   0.5413883    2.2235449
6 months    ki1000304-ZnMort            INDIA                          Male_6 months      Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-ZnMort            INDIA                          Male_6 months      Zinc                 Control           0.9350000   0.5209277    1.6782078
6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_6 months    Other                Control           1.1781012   0.9716040    1.4284857
6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_6 months      Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_6 months      Other                Control           0.8712911   0.5833569    1.3013443
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_6 months    Other                Control           0.7591241   0.5431371    1.0610018
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_6 months      Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_6 months      Other                Control           0.7421875   0.5114577    1.0770046
6 months    ki1017093b-PROVIDE          BANGLADESH                     Male_6 months      Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1017093b-PROVIDE          BANGLADESH                     Male_6 months      Other                Control           1.4705882   0.2100252   10.2970025
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6 months    Other                Control           0.8299595   0.4390222    1.5690160
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6 months    Zinc                 Control           0.8591150   0.5024306    1.4690160
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6 months      Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6 months      Other                Control           1.0548942   0.6498579    1.7123770
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6 months      Zinc                 Control           1.0938018   0.7198397    1.6620401
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6 months    Zinc                 Control           1.0026596   0.3718752    2.7033967
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6 months      Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6 months      Zinc                 Control           1.1011236   0.4566484    2.6551572
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_6 months    Other                Control           0.7946336   0.4337980    1.4556144
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_6 months      Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_6 months      Other                Control           0.9444444   0.5475275    1.6290969
6 months    ki1119695-PROBIT            BELARUS                        Female_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT            BELARUS                        Female_6 months    Maternal             Control           0.4489964   0.2018499    0.9987511
6 months    ki1119695-PROBIT            BELARUS                        Male_6 months      Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT            BELARUS                        Male_6 months      Maternal             Control           0.8275208   0.5740264    1.1929603
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_6 months    VitA                 Control           0.9108126   0.7600572    1.0914700
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_6 months      Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_6 months      VitA                 Control           1.1036125   0.9481512    1.2845637
6 months    ki1135781-COHORTS           GUATEMALA                      Female_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      Female_6 months    Other                Control           0.8154589   0.6437285    1.0330027
6 months    ki1135781-COHORTS           GUATEMALA                      Male_6 months      Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      Male_6 months      Other                Control           0.7953000   0.6518062    0.9703837
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_6 months    LNS                  Control           0.9699137   0.7250360    1.2974977
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_6 months      Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_6 months      LNS                  Control           0.8766343   0.7079942    1.0854434
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6 months    Maternal             Control           0.8584657   0.5960287    1.2364562
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6 months      Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6 months      Maternal             Control           1.0421456   0.7662508    1.4173785
6 months    ki1148112-LCNI-5            MALAWI                         Female_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         Female_6 months    LNS                  Control           1.3237564   0.8674054    2.0201984
6 months    ki1148112-LCNI-5            MALAWI                         Female_6 months    Other                Control           1.4983471   0.9529550    2.3558763
6 months    ki1148112-LCNI-5            MALAWI                         Male_6 months      Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         Male_6 months      LNS                  Control           0.9620000   0.7436161    1.2445185
6 months    ki1148112-LCNI-5            MALAWI                         Male_6 months      Other                Control           1.0420408   0.7762076    1.3989157
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_6 months    Maternal             Control           0.8865590   0.8042645    0.9772741
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_6 months      Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_6 months      Maternal             Control           0.9373845   0.8705412    1.0093603
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_6 months    Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_6 months    LNS                  Control           0.9521986   0.7356196    1.2325422
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_6 months    Other                Control           1.1110887   0.8938753    1.3810854
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_6 months      Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_6 months      LNS                  Control           1.0641268   0.8634150    1.3114967
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_6 months      Other                Control           1.1309904   0.9290073    1.3768884
24 months   iLiNS_DYADM_LNS             MALAWI                         Female_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   iLiNS_DYADM_LNS             MALAWI                         Female_24 months   LNS                  Control           0.9615385   0.2589743    3.5700696
24 months   iLiNS_DYADM_LNS             MALAWI                         Male_24 months     Control              Control           1.0000000   1.0000000    1.0000000
24 months   iLiNS_DYADM_LNS             MALAWI                         Male_24 months     LNS                  Control           0.4200000   0.1413735    1.2477587
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_24 months   VitA                 Control           0.9523810   0.4996271    1.8154129
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_24 months     Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_24 months     VitA                 Control           0.9982175   0.6094386    1.6350098
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_24 months   LNS                  Control           0.8788842   0.6663542    1.1591995
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_24 months   Other                Control           0.8511299   0.6710904    1.0794703
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_24 months     Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_24 months     LNS                  Control           0.9049080   0.6785924    1.2067014
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_24 months     Other                Control           1.1084142   0.8732603    1.4068910
24 months   ki1000111-WASH-Kenya        KENYA                          Female_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          Female_24 months   LNS                  Control           0.9094680   0.6967283    1.1871657
24 months   ki1000111-WASH-Kenya        KENYA                          Female_24 months   Other                Control           1.0564267   0.8560058    1.3037731
24 months   ki1000111-WASH-Kenya        KENYA                          Male_24 months     Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          Male_24 months     LNS                  Control           0.9781653   0.7807713    1.2254643
24 months   ki1000111-WASH-Kenya        KENYA                          Male_24 months     Other                Control           1.0103484   0.8391057    1.2165377
24 months   ki1000304-EU                INDIA                          Female_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000304-EU                INDIA                          Female_24 months   Zinc                 Control           0.7702041   0.5763422    1.0292745
24 months   ki1000304-EU                INDIA                          Male_24 months     Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000304-EU                INDIA                          Male_24 months     Zinc                 Control           1.0438871   0.7917244    1.3763633
24 months   ki1000304-Vitamin-B12       INDIA                          Female_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000304-Vitamin-B12       INDIA                          Female_24 months   Other                Control           1.6666667   0.5593559    4.9660295
24 months   ki1000304-Vitamin-B12       INDIA                          Male_24 months     Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000304-Vitamin-B12       INDIA                          Male_24 months     Other                Control           1.2349914   0.7505996    2.0319806
24 months   ki1000304-ZnMort            INDIA                          Female_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000304-ZnMort            INDIA                          Female_24 months   Zinc                 Control           1.0133333   0.7109098    1.4444090
24 months   ki1000304-ZnMort            INDIA                          Male_24 months     Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000304-ZnMort            INDIA                          Male_24 months     Zinc                 Control           0.7196796   0.4650807    1.1136536
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_24 months   Zinc                 Control           1.2809706   0.8131060    2.0180465
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_24 months     Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_24 months     Zinc                 Control           0.8250951   0.6193555    1.0991779
24 months   ki1119695-PROBIT            BELARUS                        Female_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1119695-PROBIT            BELARUS                        Female_24 months   Maternal             Control           0.7332506   0.0968709    5.5502348
24 months   ki1119695-PROBIT            BELARUS                        Male_24 months     Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1119695-PROBIT            BELARUS                        Male_24 months     Maternal             Control           0.9746172   0.4901559    1.9379117
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_24 months   VitA                 Control           1.3750000   0.5668943    3.3350573
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_24 months     Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_24 months     VitA                 Control           1.7500000   0.5334970    5.7404256
24 months   ki1135781-COHORTS           GUATEMALA                      Female_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      Female_24 months   Other                Control           1.0008446   0.8581407    1.1672793
24 months   ki1135781-COHORTS           GUATEMALA                      Male_24 months     Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      Male_24 months     Other                Control           0.8961948   0.7572876    1.0605814
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_24 months   LNS                  Control           1.0952329   0.8114444    1.4782715
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_24 months     Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_24 months     LNS                  Control           0.8846407   0.7056650    1.1090096
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Female_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Female_24 months   Maternal             Control           1.0714286   0.3313753    3.4642270
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_24 months     Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_24 months     Maternal             Control           0.4480000   0.2114581    0.9491430
24 months   ki1148112-LCNI-5            MALAWI                         Female_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         Female_24 months   LNS                  Control           0.9757540   0.6115181    1.5569382
24 months   ki1148112-LCNI-5            MALAWI                         Female_24 months   Other                Control           1.0020243   0.5940857    1.6900807
24 months   ki1148112-LCNI-5            MALAWI                         Male_24 months     Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         Male_24 months     LNS                  Control           1.0821256   0.7322070    1.5992687
24 months   ki1148112-LCNI-5            MALAWI                         Male_24 months     Other                Control           0.7927199   0.4648111    1.3519576
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_24 months   Maternal             Control           1.2121212   0.6451831    2.2772416
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_24 months     Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_24 months     Maternal             Control           1.1473064   0.6854477    1.9203682
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_24 months   Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_24 months   LNS                  Control           0.7063794   0.4980308    1.0018895
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_24 months   Other                Control           0.8461367   0.6633979    1.0792125
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_24 months     Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_24 months     LNS                  Control           1.2115646   0.8899748    1.6493599
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_24 months     Other                Control           1.1151515   0.8199096    1.5167073


### Parameter: PAR


agecat      studyid                     country                        intXsex            intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  -----------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Female_Birth       Control              NA                 0.0062389   -0.1153129    0.1277906
Birth       ki1000304b-SAS-CompFeed     INDIA                          Male_Birth         Control              NA                 0.0299145   -0.0834802    0.1433093
Birth       ki1119695-PROBIT            BELARUS                        Female_Birth       Control              NA                -0.0005868   -0.0014617    0.0002881
Birth       ki1119695-PROBIT            BELARUS                        Male_Birth         Control              NA                -0.0008842   -0.0035839    0.0018154
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Female_Birth       Control              NA                 0.0054621   -0.0067759    0.0177002
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Male_Birth         Control              NA                -0.0065979   -0.0192693    0.0060736
Birth       ki1135781-COHORTS           GUATEMALA                      Female_Birth       Control              NA                 0.0089694   -0.0142088    0.0321477
Birth       ki1135781-COHORTS           GUATEMALA                      Male_Birth         Control              NA                 0.0149584   -0.0080921    0.0380089
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Female_Birth       Control              NA                -0.0141024   -0.0245115   -0.0036932
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Male_Birth         Control              NA                -0.0220397   -0.0328191   -0.0112602
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Female_Birth       Control              NA                 0.0041667   -0.0788981    0.0872315
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Male_Birth         Control              NA                -0.0190799   -0.0942708    0.0561110
6 months    iLiNS_DYADM_LNS             MALAWI                         Female_6 months    Control              NA                -0.0095046   -0.0498713    0.0308620
6 months    iLiNS_DYADM_LNS             MALAWI                         Male_6 months      Control              NA                -0.0033077   -0.0492825    0.0426671
6 months    ki1000107-Serrinha-VitA     BRAZIL                         Male_6 months      Control              NA                -0.2500000   -0.4691306   -0.0308694
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6 months    Control              NA                -0.0529156   -0.1212360    0.0154048
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6 months      Control              NA                -0.0132267   -0.0882671    0.0618137
6 months    ki1000111-WASH-Kenya        KENYA                          Male_6 months      Control              NA                 0.0571429   -0.1044056    0.2186913
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_6 months    Control              NA                -0.0560393   -0.0996945   -0.0123842
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_6 months      Control              NA                -0.0220406   -0.0656995    0.0216183
6 months    ki1000304-EU                INDIA                          Female_6 months    Control              NA                -0.0376960   -0.1011878    0.0257959
6 months    ki1000304-EU                INDIA                          Male_6 months      Control              NA                -0.0168519   -0.0772523    0.0435486
6 months    ki1000304-VITAMIN-A         INDIA                          Female_6 months    Control              NA                 0.0089117   -0.0163799    0.0342032
6 months    ki1000304-VITAMIN-A         INDIA                          Male_6 months      Control              NA                -0.0352243   -0.0618935   -0.0085551
6 months    ki1000304-Vitamin-B12       INDIA                          Female_6 months    Control              NA                 0.0658915   -0.2203904    0.3521733
6 months    ki1000304-Vitamin-B12       INDIA                          Male_6 months      Control              NA                -0.1124402   -0.3590356    0.1341552
6 months    ki1000304-ZnMort            INDIA                          Female_6 months    Control              NA                 0.0138393   -0.0919430    0.1196216
6 months    ki1000304-ZnMort            INDIA                          Male_6 months      Control              NA                -0.0094408   -0.0908714    0.0719898
6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_6 months    Control              NA                 0.0266156   -0.0105887    0.0638199
6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_6 months      Control              NA                -0.0181880   -0.0749012    0.0385252
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_6 months    Control              NA                -0.0906593   -0.2061663    0.0248476
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_6 months      Control              NA                -0.1046290   -0.2440011    0.0347430
6 months    ki1017093b-PROVIDE          BANGLADESH                     Male_6 months      Control              NA                 0.0727273   -0.2536571    0.3991117
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6 months    Control              NA                -0.0105401   -0.0444934    0.0234132
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6 months      Control              NA                 0.0076754   -0.0307191    0.0460699
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6 months    Control              NA                 0.0002396   -0.0891582    0.0896374
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6 months      Control              NA                 0.0104022   -0.0813194    0.1021238
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_6 months    Control              NA                -0.0323052   -0.1171366    0.0525262
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_6 months      Control              NA                -0.0094340   -0.0993860    0.0805180
6 months    ki1119695-PROBIT            BELARUS                        Female_6 months    Control              NA                -0.0069073   -0.0158656    0.0020511
6 months    ki1119695-PROBIT            BELARUS                        Male_6 months      Control              NA                -0.0108390   -0.0321600    0.0104820
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_6 months    Control              NA                -0.0097998   -0.0292224    0.0096228
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_6 months      Control              NA                 0.0140745   -0.0070474    0.0351963
6 months    ki1135781-COHORTS           GUATEMALA                      Female_6 months    Control              NA                -0.0410528   -0.0885971    0.0064916
6 months    ki1135781-COHORTS           GUATEMALA                      Male_6 months      Control              NA                -0.0518968   -0.0967330   -0.0070606
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_6 months    Control              NA                -0.0066678   -0.0708436    0.0575080
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_6 months      Control              NA                -0.0394384   -0.1061065    0.0272298
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6 months    Control              NA                -0.0192347   -0.0663014    0.0278320
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6 months      Control              NA                 0.0072778   -0.0465885    0.0611440
6 months    ki1148112-LCNI-5            MALAWI                         Female_6 months    Control              NA                 0.0659864   -0.0084302    0.1404030
6 months    ki1148112-LCNI-5            MALAWI                         Male_6 months      Control              NA                -0.0041497   -0.0835762    0.0752767
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_6 months    Control              NA                -0.0127668   -0.0231507   -0.0023830
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_6 months      Control              NA                -0.0095247   -0.0205217    0.0014724
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_6 months    Control              NA                 0.0081943   -0.0243347    0.0407232
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_6 months      Control              NA                 0.0210077   -0.0165512    0.0585667
24 months   iLiNS_DYADM_LNS             MALAWI                         Female_24 months   Control              NA                -0.0111111   -0.3859098    0.3636876
24 months   iLiNS_DYADM_LNS             MALAWI                         Male_24 months     Control              NA                -0.2436975   -0.5279761    0.0405811
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_24 months   Control              NA                -0.0079365   -0.1124853    0.0966122
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_24 months     Control              NA                -0.0004202   -0.1166226    0.1157822
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_24 months   Control              NA                -0.0486425   -0.1232529    0.0259678
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_24 months     Control              NA                 0.0117647   -0.0596576    0.0831870
24 months   ki1000111-WASH-Kenya        KENYA                          Female_24 months   Control              NA                 0.0012269   -0.0330434    0.0354972
24 months   ki1000111-WASH-Kenya        KENYA                          Male_24 months     Control              NA                -0.0000553   -0.0418301    0.0417194
24 months   ki1000304-EU                INDIA                          Female_24 months   Control              NA                -0.0912332   -0.1926314    0.0101650
24 months   ki1000304-EU                INDIA                          Male_24 months     Control              NA                 0.0114660   -0.0625125    0.0854445
24 months   ki1000304-Vitamin-B12       INDIA                          Female_24 months   Control              NA                 0.1071429   -0.0897153    0.3040010
24 months   ki1000304-Vitamin-B12       INDIA                          Male_24 months     Control              NA                 0.0741342   -0.0924372    0.2407056
24 months   ki1000304-ZnMort            INDIA                          Female_24 months   Control              NA                 0.0036437   -0.0939721    0.1012595
24 months   ki1000304-ZnMort            INDIA                          Male_24 months     Control              NA                -0.0882883   -0.2033979    0.0268213
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_24 months   Control              NA                 0.0641792   -0.0420845    0.1704429
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_24 months     Control              NA                -0.0731841   -0.1904716    0.0441034
24 months   ki1119695-PROBIT            BELARUS                        Female_24 months   Control              NA                -0.0098101   -0.0762606    0.0566404
24 months   ki1119695-PROBIT            BELARUS                        Male_24 months     Control              NA                -0.0026965   -0.0752128    0.0698199
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_24 months   Control              NA                 0.1363636   -0.2079466    0.4806739
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_24 months     Control              NA                 0.2000000   -0.1629148    0.5629148
24 months   ki1135781-COHORTS           GUATEMALA                      Female_24 months   Control              NA                 0.0003309   -0.0599705    0.0606323
24 months   ki1135781-COHORTS           GUATEMALA                      Male_24 months     Control              NA                -0.0407310   -0.1029764    0.0215144
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_24 months   Control              NA                 0.0334777   -0.0735598    0.1405153
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_24 months     Control              NA                -0.0589995   -0.1721130    0.0541139
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Female_24 months   Control              NA                 0.0242424   -0.3780669    0.4265517
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_24 months     Control              NA                -0.3080357   -0.6161270    0.0000556
24 months   ki1148112-LCNI-5            MALAWI                         Female_24 months   Control              NA                -0.0036178   -0.1103757    0.1031401
24 months   ki1148112-LCNI-5            MALAWI                         Male_24 months     Control              NA                -0.0033069   -0.1116263    0.1050126
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_24 months   Control              NA                 0.0614035   -0.1330233    0.2558303
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_24 months     Control              NA                 0.0368654   -0.0992021    0.1729328
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_24 months   Control              NA                -0.0696727   -0.1458484    0.0065029
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_24 months     Control              NA                 0.0448517   -0.0403067    0.1300101


### Parameter: PAF


agecat      studyid                     country                        intXsex            intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  -----------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Female_Birth       Control              NA                 0.0294118   -0.7560386    0.4635417
Birth       ki1000304b-SAS-CompFeed     INDIA                          Male_Birth         Control              NA                 0.0972222   -0.3088537    0.3773118
Birth       ki1119695-PROBIT            BELARUS                        Female_Birth       Control              NA                -0.5263755   -1.5038827    0.0695163
Birth       ki1119695-PROBIT            BELARUS                        Male_Birth         Control              NA                -0.2372579   -1.0931879    0.2686719
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Female_Birth       Control              NA                 0.0553278   -0.0770781    0.1714570
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Male_Birth         Control              NA                -0.0610238   -0.1848816    0.0498869
Birth       ki1135781-COHORTS           GUATEMALA                      Female_Birth       Control              NA                 0.1725550   -0.4092592    0.5141666
Birth       ki1135781-COHORTS           GUATEMALA                      Male_Birth         Control              NA                 0.2310813   -0.2085078    0.5107719
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Female_Birth       Control              NA                -0.0442724   -0.0774635   -0.0121038
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Male_Birth         Control              NA                -0.0672768   -0.1008711   -0.0347077
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Female_Birth       Control              NA                 0.0123457   -0.2671557    0.2301963
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Male_Birth         Control              NA                -0.0718904   -0.3962673    0.1771282
6 months    iLiNS_DYADM_LNS             MALAWI                         Female_6 months    Control              NA                -0.0487629   -0.2775694    0.1390655
6 months    iLiNS_DYADM_LNS             MALAWI                         Male_6 months      Control              NA                -0.0126539   -0.2047268    0.1487963
6 months    ki1000107-Serrinha-VitA     BRAZIL                         Male_6 months      Control              NA                -1.0000000   -2.2436679   -0.2331719
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6 months    Control              NA                -0.4491374   -1.1489629    0.0227848
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6 months      Control              NA                -0.0748766   -0.5955858    0.2759024
6 months    ki1000111-WASH-Kenya        KENYA                          Male_6 months      Control              NA                 0.2857143   -1.1734259    0.7652535
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_6 months    Control              NA                -0.2006990   -0.3673502   -0.0543591
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_6 months      Control              NA                -0.0735319   -0.2294906    0.0626437
6 months    ki1000304-EU                INDIA                          Female_6 months    Control              NA                -0.1228889   -0.3501625    0.0661276
6 months    ki1000304-EU                INDIA                          Male_6 months      Control              NA                -0.0503040   -0.2470230    0.1153823
6 months    ki1000304-VITAMIN-A         INDIA                          Female_6 months    Control              NA                 0.0289389   -0.0567583    0.1076865
6 months    ki1000304-VITAMIN-A         INDIA                          Male_6 months      Control              NA                -0.0930724   -0.1659661   -0.0247358
6 months    ki1000304-Vitamin-B12       INDIA                          Female_6 months    Control              NA                 0.2833333   -2.9620482    0.8703673
6 months    ki1000304-Vitamin-B12       INDIA                          Male_6 months      Control              NA                -0.3286713   -1.2955483    0.2309604
6 months    ki1000304-ZnMort            INDIA                          Female_6 months    Control              NA                 0.0421769   -0.3410657    0.3158984
6 months    ki1000304-ZnMort            INDIA                          Male_6 months      Control              NA                -0.0246679   -0.2611776    0.1674889
6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_6 months    Control              NA                 0.0849306   -0.0409289    0.1955723
6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_6 months      Control              NA                -0.0721024   -0.3132482    0.1247629
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_6 months    Control              NA                -0.2115385   -0.5156880    0.0315781
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_6 months      Control              NA                -0.2481203   -0.6296943    0.0441126
6 months    ki1017093b-PROVIDE          BANGLADESH                     Male_6 months      Control              NA                 0.2666667   -2.7167493    0.8553096
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6 months    Control              NA                -0.1283139   -0.6263552    0.2172114
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6 months      Control              NA                 0.0568765   -0.2750585    0.3023990
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6 months    Control              NA                 0.0023310   -1.3852279    0.5827051
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6 months      Control              NA                 0.0803571   -0.9865302    0.5742612
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_6 months    Control              NA                -0.1167155   -0.4690044    0.1510893
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_6 months      Control              NA                -0.0285714   -0.3404844    0.2107635
6 months    ki1119695-PROBIT            BELARUS                        Female_6 months    Control              NA                -0.3904693   -0.8449654   -0.0479356
6 months    ki1119695-PROBIT            BELARUS                        Male_6 months      Control              NA                -0.0963194   -0.3026023    0.0772961
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_6 months    Control              NA                -0.0719224   -0.2242916    0.0614838
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_6 months      Control              NA                 0.0725364   -0.0429058    0.1751999
6 months    ki1135781-COHORTS           GUATEMALA                      Female_6 months    Control              NA                -0.1064957   -0.2372451    0.0104365
6 months    ki1135781-COHORTS           GUATEMALA                      Male_6 months      Control              NA                -0.1163531   -0.2221119   -0.0197464
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_6 months    Control              NA                -0.0259962   -0.3093458    0.1960350
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_6 months      Control              NA                -0.1135027   -0.3229499    0.0627852
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6 months    Control              NA                -0.1038674   -0.3892508    0.1228918
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6 months      Control              NA                 0.0267581   -0.1928693    0.2059483
6 months    ki1148112-LCNI-5            MALAWI                         Female_6 months    Control              NA                 0.2271663   -0.0754375    0.4446242
6 months    ki1148112-LCNI-5            MALAWI                         Male_6 months      Control              NA                -0.0092981   -0.2039208    0.1538625
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_6 months    Control              NA                -0.0602127   -0.1102437   -0.0124362
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_6 months      Control              NA                -0.0329185   -0.0714471    0.0042246
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_6 months    Control              NA                 0.0370677   -0.1218963    0.1735078
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_6 months      Control              NA                 0.0733864   -0.0681099    0.1961383
24 months   iLiNS_DYADM_LNS             MALAWI                         Female_24 months   Control              NA                -0.0285714   -1.6253465    0.5970211
24 months   iLiNS_DYADM_LNS             MALAWI                         Male_24 months     Control              NA                -0.5178571   -1.4049068    0.0420043
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_24 months   Control              NA                -0.0208333   -0.3357313    0.2198276
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_24 months     Control              NA                -0.0008658   -0.2713836    0.2120927
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_24 months   Control              NA                -0.1210799   -0.3233019    0.0502392
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_24 months     Control              NA                 0.0285714   -0.1613417    0.1874282
24 months   ki1000111-WASH-Kenya        KENYA                          Female_24 months   Control              NA                 0.0045989   -0.1325186    0.1251153
24 months   ki1000111-WASH-Kenya        KENYA                          Male_24 months     Control              NA                -0.0001551   -0.1244133    0.1103714
24 months   ki1000304-EU                INDIA                          Female_24 months   Control              NA                -0.1533224   -0.3410857    0.0081524
24 months   ki1000304-EU                INDIA                          Male_24 months     Control              NA                 0.0189189   -0.1111279    0.1337450
24 months   ki1000304-Vitamin-B12       INDIA                          Female_24 months   Control              NA                 0.3333333   -0.6582860    0.7319857
24 months   ki1000304-Vitamin-B12       INDIA                          Male_24 months     Control              NA                 0.1392276   -0.2399048    0.4024307
24 months   ki1000304-ZnMort            INDIA                          Female_24 months   Control              NA                 0.0055080   -0.1535706    0.1426494
24 months   ki1000304-ZnMort            INDIA                          Male_24 months     Control              NA                -0.1655405   -0.4083708    0.0354211
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_24 months   Control              NA                 0.2015575   -0.2124022    0.4741758
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_24 months     Control              NA                -0.1854839   -0.5237444    0.0776852
24 months   ki1119695-PROBIT            BELARUS                        Female_24 months   Control              NA                -0.1746193   -2.0726663    0.5509664
24 months   ki1119695-PROBIT            BELARUS                        Male_24 months     Control              NA                -0.0142373   -0.4769250    0.3035007
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_24 months   Control              NA                 0.2142857   -0.5797519    0.6092127
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_24 months     Control              NA                 0.3333333   -0.6933075    0.7375288
24 months   ki1135781-COHORTS           GUATEMALA                      Female_24 months   Control              NA                 0.0004083   -0.0768350    0.0721109
24 months   ki1135781-COHORTS           GUATEMALA                      Male_24 months     Control              NA                -0.0541098   -0.1408513    0.0260365
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_24 months   Control              NA                 0.0727859   -0.1918383    0.2786555
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_24 months     Control              NA                -0.1077503   -0.3353108    0.0810299
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Female_24 months   Control              NA                 0.0571429   -1.5780894    0.6551789
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_24 months     Control              NA                -0.7582418   -1.8503190   -0.0845853
24 months   ki1148112-LCNI-5            MALAWI                         Female_24 months   Control              NA                -0.0105834   -0.3765279    0.2580761
24 months   ki1148112-LCNI-5            MALAWI                         Male_24 months     Control              NA                -0.0081169   -0.3123506    0.2255883
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_24 months   Control              NA                 0.1093750   -0.3216115    0.3998139
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_24 months     Control              NA                 0.0730079   -0.2424386    0.3083648
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_24 months   Control              NA                -0.1724524   -0.3774935    0.0020682
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_24 months     Control              NA                 0.1044357   -0.1188351    0.2831514
