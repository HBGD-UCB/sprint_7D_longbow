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
* intXsex

## Data Summary

agecat      studyid                     country                        intXsex             sstunted   n_cell       n
----------  --------------------------  -----------------------------  -----------------  ---------  -------  ------
Birth       iLiNS_DYADM_LNS             MALAWI                         Male_Birth                 0        0       1
Birth       iLiNS_DYADM_LNS             MALAWI                         Male_Birth                 1        1       1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Female_Birth               0        4       4
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Female_Birth               1        0       4
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Male_Birth                 0        7       7
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Male_Birth                 1        0       7
Birth       ki1000304b-SAS-CompFeed     INDIA                          Female_Birth               0       59      66
Birth       ki1000304b-SAS-CompFeed     INDIA                          Female_Birth               1        7      66
Birth       ki1000304b-SAS-CompFeed     INDIA                          Male_Birth                 0       74      78
Birth       ki1000304b-SAS-CompFeed     INDIA                          Male_Birth                 1        4      78
Birth       ki1119695-PROBIT            BELARUS                        Female_Birth               0     7174    7176
Birth       ki1119695-PROBIT            BELARUS                        Female_Birth               1        2    7176
Birth       ki1119695-PROBIT            BELARUS                        Male_Birth                 0     6705    6708
Birth       ki1119695-PROBIT            BELARUS                        Male_Birth                 1        3    6708
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Female_Birth               0     6520    6736
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Female_Birth               1      216    6736
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Male_Birth                 0     6869    7094
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Male_Birth                 1      225    7094
Birth       ki1135781-COHORTS           GUATEMALA                      Female_Birth               0      400     404
Birth       ki1135781-COHORTS           GUATEMALA                      Female_Birth               1        4     404
Birth       ki1135781-COHORTS           GUATEMALA                      Male_Birth                 0      441     448
Birth       ki1135781-COHORTS           GUATEMALA                      Male_Birth                 1        7     448
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         Male_Birth                 0        0       1
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         Male_Birth                 1        1       1
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Female_Birth               0    17258   19238
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Female_Birth               1     1980   19238
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Male_Birth                 0    17886   19988
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Male_Birth                 1     2102   19988
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Female_Birth               0      742     800
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Female_Birth               1       58     800
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Male_Birth                 0      774     844
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Male_Birth                 1       70     844
6 months    iLiNS_DYADM_LNS             MALAWI                         Female_6 months            0      342     354
6 months    iLiNS_DYADM_LNS             MALAWI                         Female_6 months            1       12     354
6 months    iLiNS_DYADM_LNS             MALAWI                         Male_6 months              0      308     329
6 months    iLiNS_DYADM_LNS             MALAWI                         Male_6 months              1       21     329
6 months    ki1000107-Serrinha-VitA     BRAZIL                         Female_6 months            0       10      11
6 months    ki1000107-Serrinha-VitA     BRAZIL                         Female_6 months            1        1      11
6 months    ki1000107-Serrinha-VitA     BRAZIL                         Male_6 months              0       20      24
6 months    ki1000107-Serrinha-VitA     BRAZIL                         Male_6 months              1        4      24
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6 months            0      342     348
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6 months            1        6     348
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6 months              0      312     334
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6 months              1       22     334
6 months    ki1000111-WASH-Kenya        KENYA                          Female_6 months            0       34      34
6 months    ki1000111-WASH-Kenya        KENYA                          Female_6 months            1        0      34
6 months    ki1000111-WASH-Kenya        KENYA                          Male_6 months              0       37      40
6 months    ki1000111-WASH-Kenya        KENYA                          Male_6 months              1        3      40
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_6 months            0      280     308
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_6 months            1       28     308
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_6 months              0      334     387
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_6 months              1       53     387
6 months    ki1000304-EU                INDIA                          Female_6 months            0      148     163
6 months    ki1000304-EU                INDIA                          Female_6 months            1       15     163
6 months    ki1000304-EU                INDIA                          Male_6 months              0      175     200
6 months    ki1000304-EU                INDIA                          Male_6 months              1       25     200
6 months    ki1000304-VITAMIN-A         INDIA                          Female_6 months            0     1117    1208
6 months    ki1000304-VITAMIN-A         INDIA                          Female_6 months            1       91    1208
6 months    ki1000304-VITAMIN-A         INDIA                          Male_6 months              0     1144    1300
6 months    ki1000304-VITAMIN-A         INDIA                          Male_6 months              1      156    1300
6 months    ki1000304-Vitamin-B12       INDIA                          Female_6 months            0       41      43
6 months    ki1000304-Vitamin-B12       INDIA                          Female_6 months            1        2      43
6 months    ki1000304-Vitamin-B12       INDIA                          Male_6 months              0       33      38
6 months    ki1000304-Vitamin-B12       INDIA                          Male_6 months              1        5      38
6 months    ki1000304-ZnMort            INDIA                          Female_6 months            0       60      64
6 months    ki1000304-ZnMort            INDIA                          Female_6 months            1        4      64
6 months    ki1000304-ZnMort            INDIA                          Male_6 months              0       72      81
6 months    ki1000304-ZnMort            INDIA                          Male_6 months              1        9      81
6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_6 months            0      256     284
6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_6 months            1       28     284
6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_6 months              0      306     333
6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_6 months              1       27     333
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_6 months            0      161     189
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_6 months            1       28     189
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_6 months              0      142     166
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_6 months              1       24     166
6 months    ki1017093b-PROVIDE          BANGLADESH                     Female_6 months            0       24      24
6 months    ki1017093b-PROVIDE          BANGLADESH                     Female_6 months            1        0      24
6 months    ki1017093b-PROVIDE          BANGLADESH                     Male_6 months              0       21      22
6 months    ki1017093b-PROVIDE          BANGLADESH                     Male_6 months              1        1      22
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6 months            0      831     840
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6 months            1        9     840
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6 months              0      851     867
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6 months              1       16     867
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6 months            0      316     321
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6 months            1        5     321
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6 months              0      298     309
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6 months              1       11     309
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_6 months            0      106     112
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_6 months            1        6     112
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_6 months              0       92     106
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_6 months              1       14     106
6 months    ki1119695-PROBIT            BELARUS                        Female_6 months            0     7433    7462
6 months    ki1119695-PROBIT            BELARUS                        Female_6 months            1       29    7462
6 months    ki1119695-PROBIT            BELARUS                        Male_6 months              0     6837    7038
6 months    ki1119695-PROBIT            BELARUS                        Male_6 months              1      201    7038
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_6 months            0     3670    3787
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_6 months            1      117    3787
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_6 months              0     3775    3989
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_6 months              1      214    3989
6 months    ki1135781-COHORTS           GUATEMALA                      Female_6 months            0      397     441
6 months    ki1135781-COHORTS           GUATEMALA                      Female_6 months            1       44     441
6 months    ki1135781-COHORTS           GUATEMALA                      Male_6 months              0      412     491
6 months    ki1135781-COHORTS           GUATEMALA                      Male_6 months              1       79     491
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_6 months            0      930     963
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_6 months            1       33     963
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_6 months              0      873     967
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_6 months              1       94     967
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6 months            0      519     540
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6 months            1       21     540
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6 months              0      457     489
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6 months              1       32     489
6 months    ki1148112-LCNI-5            MALAWI                         Female_6 months            0      404     420
6 months    ki1148112-LCNI-5            MALAWI                         Female_6 months            1       16     420
6 months    ki1148112-LCNI-5            MALAWI                         Male_6 months              0      364     419
6 months    ki1148112-LCNI-5            MALAWI                         Male_6 months              1       55     419
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_6 months            0    15734   16427
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_6 months            1      693   16427
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_6 months              0    15718   17056
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_6 months              1     1338   17056
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_6 months            0     4499    4691
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_6 months            1      192    4691
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_6 months              0     4359    4695
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_6 months              1      336    4695
24 months   iLiNS_DYADM_LNS             MALAWI                         Female_24 months           0       16      18
24 months   iLiNS_DYADM_LNS             MALAWI                         Female_24 months           1        2      18
24 months   iLiNS_DYADM_LNS             MALAWI                         Male_24 months             0       15      17
24 months   iLiNS_DYADM_LNS             MALAWI                         Male_24 months             1        2      17
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_24 months           0       53      63
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_24 months           1       10      63
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_24 months             0       50      68
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_24 months             1       18      68
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_24 months           0      519     575
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_24 months           1       56     575
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_24 months             0      529     612
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_24 months             1       83     612
24 months   ki1000111-WASH-Kenya        KENYA                          Female_24 months           0     1130    1207
24 months   ki1000111-WASH-Kenya        KENYA                          Female_24 months           1       77    1207
24 months   ki1000111-WASH-Kenya        KENYA                          Male_24 months             0      951    1057
24 months   ki1000111-WASH-Kenya        KENYA                          Male_24 months             1      106    1057
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Female_24 months           0        1       2
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Female_24 months           1        1       2
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Male_24 months             0        1       1
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Male_24 months             1        0       1
24 months   ki1000304-EU                INDIA                          Female_24 months           0       90     121
24 months   ki1000304-EU                INDIA                          Female_24 months           1       31     121
24 months   ki1000304-EU                INDIA                          Male_24 months             0      107     132
24 months   ki1000304-EU                INDIA                          Male_24 months             1       25     132
24 months   ki1000304-Vitamin-B12       INDIA                          Female_24 months           0       48      56
24 months   ki1000304-Vitamin-B12       INDIA                          Female_24 months           1        8      56
24 months   ki1000304-Vitamin-B12       INDIA                          Male_24 months             0       60      77
24 months   ki1000304-Vitamin-B12       INDIA                          Male_24 months             1       17      77
24 months   ki1000304-ZnMort            INDIA                          Female_24 months           0       51      65
24 months   ki1000304-ZnMort            INDIA                          Female_24 months           1       14      65
24 months   ki1000304-ZnMort            INDIA                          Male_24 months             0       55      75
24 months   ki1000304-ZnMort            INDIA                          Male_24 months             1       20      75
24 months   ki1017093b-PROVIDE          BANGLADESH                     Female_24 months           0        2       2
24 months   ki1017093b-PROVIDE          BANGLADESH                     Female_24 months           1        0       2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_24 months           0        2       2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_24 months           1        0       2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_24 months             0        1       2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_24 months             1        1       2
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_24 months           0      524     581
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_24 months           1       57     581
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_24 months             0      510     588
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_24 months             1       78     588
24 months   ki1119695-PROBIT            BELARUS                        Female_24 months           0      439     445
24 months   ki1119695-PROBIT            BELARUS                        Female_24 months           1        6     445
24 months   ki1119695-PROBIT            BELARUS                        Male_24 months             0      384     396
24 months   ki1119695-PROBIT            BELARUS                        Male_24 months             1       12     396
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_24 months           0       13      22
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_24 months           1        9      22
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_24 months             0        9      15
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_24 months             1        6      15
24 months   ki1135781-COHORTS           GUATEMALA                      Female_24 months           0       78     153
24 months   ki1135781-COHORTS           GUATEMALA                      Female_24 months           1       75     153
24 months   ki1135781-COHORTS           GUATEMALA                      Male_24 months             0      113     182
24 months   ki1135781-COHORTS           GUATEMALA                      Male_24 months             1       69     182
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_24 months           0      337     387
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_24 months           1       50     387
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_24 months             0      299     389
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_24 months             1       90     389
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Female_24 months           0       29      33
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Female_24 months           1        4      33
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_24 months             0       26      32
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_24 months             1        6      32
24 months   ki1148112-LCNI-5            MALAWI                         Female_24 months           0      181     196
24 months   ki1148112-LCNI-5            MALAWI                         Female_24 months           1       15     196
24 months   ki1148112-LCNI-5            MALAWI                         Male_24 months             0      165     189
24 months   ki1148112-LCNI-5            MALAWI                         Male_24 months             1       24     189
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_24 months           0       45      57
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_24 months           1       12      57
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_24 months             0       73     101
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_24 months             1       28     101
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_24 months           0      951    1047
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_24 months           1       96    1047
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_24 months             0      852     957
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_24 months             1      105     957


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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXsex: Male_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXsex: Female_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXsex: Male_Birth
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA, intXsex: Female_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXsex: Male_Birth
* agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXsex: Male_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXsex: Male_6 months
* agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXsex: Female_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXsex: Male_6 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXsex: Female_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXsex: Male_24 months
* agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXsex: Female_24 months
* agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXsex: Male_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXsex: Female_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXsex: Female_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXsex: Male_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXsex: Female_24 months

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
![](/tmp/8aacacf1-dd1c-4ec2-b5b4-cfc44d3c75e9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8aacacf1-dd1c-4ec2-b5b4-cfc44d3c75e9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8aacacf1-dd1c-4ec2-b5b4-cfc44d3c75e9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8aacacf1-dd1c-4ec2-b5b4-cfc44d3c75e9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                     country                        intXsex            intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  -----------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Female_Birth       Control              NA                0.0882353   -0.0288688   0.2053394
Birth       ki1000304b-SAS-CompFeed     INDIA                          Female_Birth       Other                NA                0.1250000    0.0015954   0.2484046
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Female_Birth       Control              NA                0.0306859    0.0223938   0.0389781
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Female_Birth       VitA                 NA                0.0325187    0.0276379   0.0373995
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Male_Birth         Control              NA                0.0341354    0.0257161   0.0425547
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Male_Birth         VitA                 NA                0.0309026    0.0262463   0.0355588
Birth       ki1135781-COHORTS           GUATEMALA                      Male_Birth         Control              NA                0.0090498   -0.0034494   0.0215490
Birth       ki1135781-COHORTS           GUATEMALA                      Male_Birth         Other                NA                0.0220264    0.0029122   0.0411406
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Female_Birth       Control              NA                0.1123385    0.1023786   0.1222984
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Female_Birth       Maternal             NA                0.0935491    0.0842759   0.1028222
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Male_Birth         Control              NA                0.1125707    0.1029339   0.1222075
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Male_Birth         Maternal             NA                0.0978993    0.0886058   0.1071928
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Female_Birth       Control              NA                0.0833333    0.0244697   0.1421970
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Female_Birth       LNS                  NA                0.0265487   -0.0041796   0.0572770
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Female_Birth       Other                NA                0.0949721    0.0453292   0.1446149
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Male_Birth         Control              NA                0.0775862    0.0200239   0.1351485
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Male_Birth         LNS                  NA                0.0964912    0.0329357   0.1600468
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Male_Birth         Other                NA                0.0781250    0.0344329   0.1218171
6 months    iLiNS_DYADM_LNS             MALAWI                         Female_6 months    Control              NA                0.0552486    0.0219181   0.0885792
6 months    iLiNS_DYADM_LNS             MALAWI                         Female_6 months    LNS                  NA                0.0115607   -0.0043910   0.0275124
6 months    iLiNS_DYADM_LNS             MALAWI                         Male_6 months      Control              NA                0.0705882    0.0320266   0.1091498
6 months    iLiNS_DYADM_LNS             MALAWI                         Male_6 months      LNS                  NA                0.0566038    0.0206305   0.0925771
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6 months    Control              NA                0.0243902   -0.0090456   0.0578261
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6 months    LNS                  NA                0.0215054   -0.0080192   0.0510300
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6 months    Other                NA                0.0115607   -0.0043914   0.0275128
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6 months      Control              NA                0.0759494    0.0174440   0.1344547
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6 months      LNS                  NA                0.0631579    0.0141705   0.1121453
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6 months      Other                NA                0.0625000    0.0249366   0.1000634
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_6 months    Control              NA                0.1213873    0.0726438   0.1701308
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_6 months    Maternal             NA                0.0518519    0.0143884   0.0893153
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_6 months      Control              NA                0.1336634    0.0866757   0.1806510
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_6 months      Maternal             NA                0.1405405    0.0903944   0.1906867
6 months    ki1000304-EU                INDIA                          Female_6 months    Control              NA                0.1000000    0.0378295   0.1621705
6 months    ki1000304-EU                INDIA                          Female_6 months    Zinc                 NA                0.0821918    0.0189924   0.1453912
6 months    ki1000304-EU                INDIA                          Male_6 months      Control              NA                0.1111111    0.0516919   0.1705304
6 months    ki1000304-EU                INDIA                          Male_6 months      Zinc                 NA                0.1413043    0.0699468   0.2126619
6 months    ki1000304-VITAMIN-A         INDIA                          Female_6 months    Control              NA                0.0627010    0.0436416   0.0817604
6 months    ki1000304-VITAMIN-A         INDIA                          Female_6 months    VitA                 NA                0.0887372    0.0657040   0.1117704
6 months    ki1000304-VITAMIN-A         INDIA                          Male_6 months      Control              NA                0.1275272    0.1017351   0.1533193
6 months    ki1000304-VITAMIN-A         INDIA                          Male_6 months      VitA                 NA                0.1126332    0.0884498   0.1368166
6 months    ki1000304-Vitamin-B12       INDIA                          Male_6 months      Control              NA                0.0909091   -0.0812579   0.2630761
6 months    ki1000304-Vitamin-B12       INDIA                          Male_6 months      Other                NA                0.1481481    0.0123520   0.2839442
6 months    ki1000304-ZnMort            INDIA                          Male_6 months      Control              NA                0.0980392    0.0159182   0.1801602
6 months    ki1000304-ZnMort            INDIA                          Male_6 months      Zinc                 NA                0.1333333    0.0109336   0.2557330
6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_6 months    Control              NA                0.0808824    0.0335770   0.1281877
6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_6 months    Other                NA                0.1148649    0.0893690   0.1403607
6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_6 months      Control              NA                0.1069182    0.0490069   0.1648296
6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_6 months      Other                NA                0.0574713    0.0317676   0.0831749
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_6 months    Control              NA                0.1346154    0.0416010   0.2276298
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_6 months    Other                NA                0.1532847    0.0927983   0.2137711
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_6 months      Control              NA                0.2105263    0.0805122   0.3405404
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_6 months      Other                NA                0.1250000    0.0675336   0.1824664
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6 months    Control              NA                0.0195122    0.0005668   0.0384576
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6 months    Other                NA                0.0048077   -0.0045981   0.0142135
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6 months    Zinc                 NA                0.0093677    0.0002252   0.0185102
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6 months      Control              NA                0.0272727    0.0057376   0.0488078
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6 months      Other                NA                0.0138889   -0.0017271   0.0295048
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6 months      Zinc                 NA                0.0162413    0.0043010   0.0281816
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6 months    Control              NA                0.0000000    0.0000000   0.0000000
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6 months    Zinc                 NA                0.0177305    0.0023037   0.0331573
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6 months      Control              NA                0.0476190   -0.0168904   0.1121285
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6 months      Zinc                 NA                0.0337079    0.0120250   0.0553907
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_6 months    Control              NA                0.0545455   -0.0057402   0.1148311
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_6 months    Other                NA                0.0526316   -0.0055976   0.1108608
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_6 months      Control              NA                0.1698113    0.0682472   0.2713754
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_6 months      Other                NA                0.0943396    0.0152721   0.1734072
6 months    ki1119695-PROBIT            BELARUS                        Female_6 months    Control              NA                0.0057393    0.0010489   0.0104296
6 months    ki1119695-PROBIT            BELARUS                        Female_6 months    Maternal             NA                0.0021036    0.0004376   0.0037696
6 months    ki1119695-PROBIT            BELARUS                        Male_6 months      Control              NA                0.0338836    0.0192904   0.0484768
6 months    ki1119695-PROBIT            BELARUS                        Male_6 months      Maternal             NA                0.0234310    0.0151826   0.0316794
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_6 months    Control              NA                0.0309168    0.0198383   0.0419954
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_6 months    VitA                 NA                0.0308880    0.0245341   0.0372419
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_6 months      Control              NA                0.0398773    0.0276125   0.0521421
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_6 months      VitA                 NA                0.0581202    0.0497621   0.0664783
6 months    ki1135781-COHORTS           GUATEMALA                      Female_6 months    Control              NA                0.1232227    0.0788220   0.1676235
6 months    ki1135781-COHORTS           GUATEMALA                      Female_6 months    Other                NA                0.0782609    0.0435110   0.1130108
6 months    ki1135781-COHORTS           GUATEMALA                      Male_6 months      Control              NA                0.1908714    0.1412051   0.2405376
6 months    ki1135781-COHORTS           GUATEMALA                      Male_6 months      Other                NA                0.1320000    0.0899982   0.1740018
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_6 months    Control              NA                0.0263158    0.0008552   0.0517764
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_6 months    LNS                  NA                0.0357583    0.0229720   0.0485446
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_6 months      Control              NA                0.1130952    0.0651794   0.1610110
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_6 months      LNS                  NA                0.0938673    0.0736347   0.1141000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6 months    Control              NA                0.0552486    0.0219343   0.0885629
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6 months    Maternal             NA                0.0306407    0.0127966   0.0484848
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6 months      Control              NA                0.0705882    0.0320459   0.1091306
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6 months      Maternal             NA                0.0626959    0.0360668   0.0893251
6 months    ki1148112-LCNI-5            MALAWI                         Female_6 months    Control              NA                0.0306122   -0.0035345   0.0647590
6 months    ki1148112-LCNI-5            MALAWI                         Female_6 months    LNS                  NA                0.0471698    0.0185980   0.0757416
6 months    ki1148112-LCNI-5            MALAWI                         Female_6 months    Other                NA                0.0272727   -0.0032013   0.0577467
6 months    ki1148112-LCNI-5            MALAWI                         Male_6 months      Control              NA                0.0990991    0.0434473   0.1547509
6 months    ki1148112-LCNI-5            MALAWI                         Male_6 months      LNS                  NA                0.1476190    0.0995854   0.1956527
6 months    ki1148112-LCNI-5            MALAWI                         Male_6 months      Other                NA                0.1326531    0.0654160   0.1998902
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_6 months    Control              NA                0.0476655    0.0407804   0.0545506
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_6 months    Maternal             NA                0.0367218    0.0308628   0.0425808
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_6 months      Control              NA                0.0839403    0.0745989   0.0932817
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_6 months      Maternal             NA                0.0731483    0.0650522   0.0812443
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_6 months    Control              NA                0.0492454    0.0322677   0.0662232
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_6 months    LNS                  NA                0.0300871    0.0107454   0.0494288
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_6 months    Other                NA                0.0424159    0.0319879   0.0528438
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_6 months      Control              NA                0.0661017    0.0457684   0.0864350
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_6 months      LNS                  NA                0.0792453    0.0629141   0.0955765
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_6 months      Other                NA                0.0698630    0.0532221   0.0865040
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_24 months   Control              NA                0.1666667    0.0439496   0.2893837
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_24 months   VitA                 NA                0.1481481    0.0130745   0.2832218
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_24 months     Control              NA                0.2857143    0.1349380   0.4364906
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_24 months     VitA                 NA                0.2424242    0.0951220   0.3897264
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_24 months   Control              NA                0.1297710    0.0721745   0.1873675
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_24 months   LNS                  NA                0.0902778    0.0434299   0.1371256
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_24 months   Other                NA                0.0866667    0.0548022   0.1185311
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_24 months     Control              NA                0.1214286    0.0672799   0.1755773
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_24 months     LNS                  NA                0.1411043    0.0876171   0.1945915
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_24 months     Other                NA                0.1391586    0.1005361   0.1777811
24 months   ki1000111-WASH-Kenya        KENYA                          Female_24 months   Control              NA                0.0741627    0.0490322   0.0992931
24 months   ki1000111-WASH-Kenya        KENYA                          Female_24 months   LNS                  NA                0.0490566    0.0230412   0.0750720
24 months   ki1000111-WASH-Kenya        KENYA                          Female_24 months   Other                NA                0.0629771    0.0421692   0.0837850
24 months   ki1000111-WASH-Kenya        KENYA                          Male_24 months     Control              NA                0.1315789    0.0957364   0.1674215
24 months   ki1000111-WASH-Kenya        KENYA                          Male_24 months     LNS                  NA                0.0638298    0.0325612   0.0950984
24 months   ki1000111-WASH-Kenya        KENYA                          Male_24 months     Other                NA                0.0958333    0.0694873   0.1221794
24 months   ki1000304-EU                INDIA                          Female_24 months   Control              NA                0.2745098    0.1515226   0.3974970
24 months   ki1000304-EU                INDIA                          Female_24 months   Zinc                 NA                0.2428571    0.1419863   0.3437279
24 months   ki1000304-EU                INDIA                          Male_24 months     Control              NA                0.1891892    0.0996132   0.2787651
24 months   ki1000304-EU                INDIA                          Male_24 months     Zinc                 NA                0.1896552    0.0883801   0.2909303
24 months   ki1000304-Vitamin-B12       INDIA                          Female_24 months   Control              NA                0.0714286   -0.0646972   0.2075544
24 months   ki1000304-Vitamin-B12       INDIA                          Female_24 months   Other                NA                0.1666667    0.0529380   0.2803953
24 months   ki1000304-Vitamin-B12       INDIA                          Male_24 months     Control              NA                0.1250000   -0.0081803   0.2581803
24 months   ki1000304-Vitamin-B12       INDIA                          Male_24 months     Other                NA                0.2641509    0.1446781   0.3836238
24 months   ki1000304-ZnMort            INDIA                          Female_24 months   Control              NA                0.2368421    0.1006162   0.3730680
24 months   ki1000304-ZnMort            INDIA                          Female_24 months   Zinc                 NA                0.1851852    0.0375243   0.3328461
24 months   ki1000304-ZnMort            INDIA                          Male_24 months     Control              NA                0.3243243    0.1724722   0.4761765
24 months   ki1000304-ZnMort            INDIA                          Male_24 months     Zinc                 NA                0.2105263    0.0800316   0.3410211
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_24 months   Control              NA                0.1016949    0.0245055   0.1788843
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_24 months   Zinc                 NA                0.0977012    0.0722087   0.1231936
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_24 months     Control              NA                0.1290323    0.0455158   0.2125487
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_24 months     Zinc                 NA                0.1330798    0.1040282   0.1621315
24 months   ki1119695-PROBIT            BELARUS                        Female_24 months   Control              NA                0.0050761   -0.0094397   0.0195920
24 months   ki1119695-PROBIT            BELARUS                        Female_24 months   Maternal             NA                0.0201613    0.0024770   0.0378456
24 months   ki1119695-PROBIT            BELARUS                        Male_24 months     Control              NA                0.0338983   -0.0146785   0.0824752
24 months   ki1119695-PROBIT            BELARUS                        Male_24 months     Maternal             NA                0.0273973   -0.0031538   0.0579484
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_24 months   Control              NA                0.1666667   -0.1385498   0.4718831
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_24 months   VitA                 NA                0.5000000    0.2492391   0.7507609
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_24 months     Control              NA                0.2000000   -0.1629148   0.5629148
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_24 months     VitA                 NA                0.5000000    0.1792256   0.8207744
24 months   ki1135781-COHORTS           GUATEMALA                      Female_24 months   Control              NA                0.5569620    0.4470635   0.6668605
24 months   ki1135781-COHORTS           GUATEMALA                      Female_24 months   Other                NA                0.4189189    0.3061370   0.5317008
24 months   ki1135781-COHORTS           GUATEMALA                      Male_24 months     Control              NA                0.3913043    0.2913025   0.4913062
24 months   ki1135781-COHORTS           GUATEMALA                      Male_24 months     Other                NA                0.3666667    0.2668334   0.4664999
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_24 months   Control              NA                0.1176471    0.0409697   0.1943244
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_24 months   LNS                  NA                0.1316614    0.0945089   0.1688140
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_24 months     Control              NA                0.2786885    0.1660303   0.3913468
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_24 months     LNS                  NA                0.2225610    0.1774868   0.2676352
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_24 months     Control              NA                0.1428571   -0.1205156   0.4062299
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_24 months     Maternal             NA                0.2000000    0.0406940   0.3593060
24 months   ki1148112-LCNI-5            MALAWI                         Female_24 months   Control              NA                0.0909091    0.0147389   0.1670792
24 months   ki1148112-LCNI-5            MALAWI                         Female_24 months   LNS                  NA                0.0561798    0.0082176   0.1041419
24 months   ki1148112-LCNI-5            MALAWI                         Female_24 months   Other                NA                0.0961538    0.0158220   0.1764857
24 months   ki1148112-LCNI-5            MALAWI                         Male_24 months     Control              NA                0.1785714    0.0779948   0.2791480
24 months   ki1148112-LCNI-5            MALAWI                         Male_24 months     LNS                  NA                0.1333333    0.0629169   0.2037498
24 months   ki1148112-LCNI-5            MALAWI                         Male_24 months     Other                NA                0.0465116   -0.0165993   0.1096225
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_24 months   Control              NA                0.2083333   -0.0069813   0.4236480
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_24 months   Maternal             NA                0.2121212    0.0316273   0.3926151
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_24 months     Control              NA                0.3191489    0.1454407   0.4928572
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_24 months     Maternal             NA                0.2407407    0.0955561   0.3859254
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_24 months   Control              NA                0.1192982    0.0611931   0.1774034
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_24 months   LNS                  NA                0.0684411    0.0170110   0.1198712
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_24 months   Other                NA                0.0881764    0.0545329   0.1218198
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_24 months     Control              NA                0.1025641    0.0411663   0.1639619
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_24 months     LNS                  NA                0.1360544    0.0847211   0.1873877
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_24 months     Other                NA                0.0955711    0.0503552   0.1407870


### Parameter: E(Y)


agecat      studyid                     country                        intXsex            intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------------  -----------------------------  -----------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Female_Birth       NA                   NA                0.1060606   0.0216984   0.1904229
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Female_Birth       NA                   NA                0.0320665   0.0278590   0.0362740
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Male_Birth         NA                   NA                0.0317169   0.0276386   0.0357953
Birth       ki1135781-COHORTS           GUATEMALA                      Male_Birth         NA                   NA                0.0156250   0.0041280   0.0271220
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Female_Birth       NA                   NA                0.1029213   0.0960766   0.1097660
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Male_Birth         NA                   NA                0.1051631   0.0984468   0.1118794
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Female_Birth       NA                   NA                0.0725000   0.0436130   0.1013870
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Male_Birth         NA                   NA                0.0829384   0.0522581   0.1136187
6 months    iLiNS_DYADM_LNS             MALAWI                         Female_6 months    NA                   NA                0.0338983   0.0150201   0.0527765
6 months    iLiNS_DYADM_LNS             MALAWI                         Male_6 months      NA                   NA                0.0638298   0.0373752   0.0902843
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6 months    NA                   NA                0.0172414   0.0035454   0.0309373
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6 months      NA                   NA                0.0658683   0.0392262   0.0925103
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_6 months    NA                   NA                0.0909091   0.0587513   0.1230669
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_6 months      NA                   NA                0.1369509   0.1026540   0.1712478
6 months    ki1000304-EU                INDIA                          Female_6 months    NA                   NA                0.0920245   0.0475123   0.1365368
6 months    ki1000304-EU                INDIA                          Male_6 months      NA                   NA                0.1250000   0.0790505   0.1709495
6 months    ki1000304-VITAMIN-A         INDIA                          Female_6 months    NA                   NA                0.0753311   0.0604418   0.0902204
6 months    ki1000304-VITAMIN-A         INDIA                          Male_6 months      NA                   NA                0.1200000   0.1023284   0.1376716
6 months    ki1000304-Vitamin-B12       INDIA                          Male_6 months      NA                   NA                0.1315789   0.0226595   0.2404984
6 months    ki1000304-ZnMort            INDIA                          Male_6 months      NA                   NA                0.1111111   0.0422450   0.1799772
6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_6 months    NA                   NA                0.0985915   0.0697462   0.1274369
6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_6 months      NA                   NA                0.0810811   0.0459705   0.1161916
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_6 months    NA                   NA                0.1481481   0.0973674   0.1989289
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_6 months      NA                   NA                0.1445783   0.0909187   0.1982380
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6 months    NA                   NA                0.0107143   0.0037479   0.0176807
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6 months      NA                   NA                0.0184544   0.0094906   0.0274183
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6 months    NA                   NA                0.0155763   0.0020089   0.0291437
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6 months      NA                   NA                0.0355987   0.0149059   0.0562915
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_6 months    NA                   NA                0.0535714   0.0116827   0.0954602
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_6 months      NA                   NA                0.1320755   0.0673157   0.1968353
6 months    ki1119695-PROBIT            BELARUS                        Female_6 months    NA                   NA                0.0038864   0.0013147   0.0064580
6 months    ki1119695-PROBIT            BELARUS                        Male_6 months      NA                   NA                0.0285592   0.0197181   0.0374004
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_6 months    NA                   NA                0.0308952   0.0253834   0.0364069
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_6 months      NA                   NA                0.0536475   0.0466544   0.0606407
6 months    ki1135781-COHORTS           GUATEMALA                      Female_6 months    NA                   NA                0.0997732   0.0717702   0.1277763
6 months    ki1135781-COHORTS           GUATEMALA                      Male_6 months      NA                   NA                0.1608961   0.1283626   0.1934296
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_6 months    NA                   NA                0.0342679   0.0227723   0.0457635
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_6 months      NA                   NA                0.0972079   0.0785267   0.1158890
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6 months    NA                   NA                0.0388889   0.0225676   0.0552101
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6 months      NA                   NA                0.0654397   0.0434984   0.0873810
6 months    ki1148112-LCNI-5            MALAWI                         Female_6 months    NA                   NA                0.0380952   0.0197661   0.0564244
6 months    ki1148112-LCNI-5            MALAWI                         Male_6 months      NA                   NA                0.1312649   0.0988923   0.1636375
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_6 months    NA                   NA                0.0421866   0.0376496   0.0467237
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_6 months      NA                   NA                0.0784475   0.0722592   0.0846357
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_6 months    NA                   NA                0.0409294   0.0325061   0.0493528
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_6 months      NA                   NA                0.0715655   0.0612083   0.0819227
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_24 months   NA                   NA                0.1587302   0.0677703   0.2496900
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_24 months     NA                   NA                0.2647059   0.1590672   0.3703446
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_24 months   NA                   NA                0.0973913   0.0731363   0.1216463
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_24 months     NA                   NA                0.1356209   0.1084726   0.1627692
24 months   ki1000111-WASH-Kenya        KENYA                          Female_24 months   NA                   NA                0.0637945   0.0500018   0.0775873
24 months   ki1000111-WASH-Kenya        KENYA                          Male_24 months     NA                   NA                0.1002838   0.0821669   0.1184007
24 months   ki1000304-EU                INDIA                          Female_24 months   NA                   NA                0.2561983   0.1780942   0.3343025
24 months   ki1000304-EU                INDIA                          Male_24 months     NA                   NA                0.1893939   0.1222974   0.2564905
24 months   ki1000304-Vitamin-B12       INDIA                          Female_24 months   NA                   NA                0.1428571   0.0503779   0.2353364
24 months   ki1000304-Vitamin-B12       INDIA                          Male_24 months     NA                   NA                0.2207792   0.1275288   0.3140296
24 months   ki1000304-ZnMort            INDIA                          Female_24 months   NA                   NA                0.2153846   0.1146697   0.3160995
24 months   ki1000304-ZnMort            INDIA                          Male_24 months     NA                   NA                0.2666667   0.1659115   0.3674218
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_24 months   NA                   NA                0.0981067   0.0738986   0.1223148
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_24 months     NA                   NA                0.1326531   0.1052131   0.1600931
24 months   ki1119695-PROBIT            BELARUS                        Female_24 months   NA                   NA                0.0134831   0.0015234   0.0254429
24 months   ki1119695-PROBIT            BELARUS                        Male_24 months     NA                   NA                0.0303030   0.0025442   0.0580619
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_24 months   NA                   NA                0.4090909   0.1988057   0.6193761
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_24 months     NA                   NA                0.4000000   0.1433805   0.6566195
24 months   ki1135781-COHORTS           GUATEMALA                      Female_24 months   NA                   NA                0.4901961   0.4107243   0.5696678
24 months   ki1135781-COHORTS           GUATEMALA                      Male_24 months     NA                   NA                0.3791209   0.3084401   0.4498016
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_24 months   NA                   NA                0.1291990   0.0957376   0.1626603
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_24 months     NA                   NA                0.2313625   0.1894021   0.2733229
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_24 months     NA                   NA                0.1875000   0.0501023   0.3248977
24 months   ki1148112-LCNI-5            MALAWI                         Female_24 months   NA                   NA                0.0765306   0.0392177   0.1138436
24 months   ki1148112-LCNI-5            MALAWI                         Male_24 months     NA                   NA                0.1269841   0.0793898   0.1745784
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_24 months   NA                   NA                0.2105263   0.0721141   0.3489386
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_24 months     NA                   NA                0.2772277   0.1651668   0.3892886
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_24 months   NA                   NA                0.0916905   0.0656559   0.1177252
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_24 months     NA                   NA                0.1097179   0.0799545   0.1394812


### Parameter: RR


agecat      studyid                     country                        intXsex            intervention_level   baseline_level           estimate          ci_lower           ci_upper
----------  --------------------------  -----------------------------  -----------------  -------------------  ---------------  ----------------  ----------------  -----------------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Female_Birth       Control              Control                 1.0000000         1.0000000          1.0000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          Female_Birth       Other                Control                 1.4166667         0.2734504          7.3393354
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Female_Birth       Control              Control                 1.0000000         1.0000000          1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Female_Birth       VitA                 Control                 1.0597278         0.7779449          1.4435766
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Male_Birth         Control              Control                 1.0000000         1.0000000          1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Male_Birth         VitA                 Control                 0.9052937         0.6780578          1.2086825
Birth       ki1135781-COHORTS           GUATEMALA                      Male_Birth         Control              Control                 1.0000000         1.0000000          1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      Male_Birth         Other                Control                 2.4339207         0.4763282         12.4367391
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Female_Birth       Control              Control                 1.0000000         1.0000000          1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Female_Birth       Maternal             Control                 0.8327429         0.7290088          0.9512377
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Male_Birth         Control              Control                 1.0000000         1.0000000          1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Male_Birth         Maternal             Control                 0.8696694         0.7653116          0.9882575
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Female_Birth       Control              Control                 1.0000000         1.0000000          1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Female_Birth       LNS                  Control                 0.3185841         0.0820996          1.2362518
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Female_Birth       Other                Control                 1.1396648         0.4733053          2.7441817
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Male_Birth         Control              Control                 1.0000000         1.0000000          1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Male_Birth         LNS                  Control                 1.2436647         0.4610536          3.3547119
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Male_Birth         Other                Control                 1.0069444         0.3976248          2.5499847
6 months    iLiNS_DYADM_LNS             MALAWI                         Female_6 months    Control              Control                 1.0000000         1.0000000          1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         Female_6 months    LNS                  Control                 0.2092486         0.0464132          0.9433733
6 months    iLiNS_DYADM_LNS             MALAWI                         Male_6 months      Control              Control                 1.0000000         1.0000000          1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         Male_6 months      LNS                  Control                 0.8018868         0.3468586          1.8538459
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6 months    Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6 months    LNS                  Control                 0.8817204         0.1266897          6.1364987
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6 months    Other                Control                 0.4739884         0.0677699          3.3151165
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6 months      Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6 months      LNS                  Control                 0.8315789         0.2787081          2.4811751
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6 months      Other                Control                 0.8229167         0.3097645          2.1861502
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_6 months    Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_6 months    Maternal             Control                 0.4271605         0.1868977          0.9762884
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_6 months      Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_6 months      Maternal             Control                 1.0514515         0.6371699          1.7350946
6 months    ki1000304-EU                INDIA                          Female_6 months    Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1000304-EU                INDIA                          Female_6 months    Zinc                 Control                 0.8219178         0.3057661          2.2093648
6 months    ki1000304-EU                INDIA                          Male_6 months      Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1000304-EU                INDIA                          Male_6 months      Zinc                 Control                 1.2717391         0.6094848          2.6535860
6 months    ki1000304-VITAMIN-A         INDIA                          Female_6 months    Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          Female_6 months    VitA                 Control                 1.4152446         0.9489349          2.1107004
6 months    ki1000304-VITAMIN-A         INDIA                          Male_6 months      Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          Male_6 months      VitA                 Control                 0.8832090         0.6576000          1.1862197
6 months    ki1000304-Vitamin-B12       INDIA                          Male_6 months      Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1000304-Vitamin-B12       INDIA                          Male_6 months      Other                Control                 1.6296295         0.1987619         13.3611765
6 months    ki1000304-ZnMort            INDIA                          Male_6 months      Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1000304-ZnMort            INDIA                          Male_6 months      Zinc                 Control                 1.3600000         0.3924938          4.7124311
6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_6 months    Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_6 months    Other                Control                 1.4201474         0.7596520          2.6549245
6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_6 months      Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_6 months      Other                Control                 0.5375254         0.2663649          1.0847281
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_6 months    Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_6 months    Other                Control                 1.1386861         0.5138482          2.5233251
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_6 months      Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_6 months      Other                Control                 0.5937500         0.2749422          1.2822295
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6 months    Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6 months    Other                Control                 0.2463942         0.0277388          2.1886350
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6 months    Zinc                 Control                 0.4800937         0.1211828          1.9020018
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6 months      Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6 months      Other                Control                 0.5092593         0.1288998          2.0119888
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6 months      Zinc                 Control                 0.5955143         0.2024597          1.7516435
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6 months    Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6 months    Zinc                 Control           5573865.5353577   2224398.5137580   13966911.4208138
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6 months      Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6 months      Zinc                 Control                 0.7078652         0.1579995          3.1713590
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_6 months    Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_6 months    Other                Control                 0.9649123         0.2019875          4.6094729
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_6 months      Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_6 months      Other                Control                 0.5555556         0.1984084          1.5555897
6 months    ki1119695-PROBIT            BELARUS                        Female_6 months    Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1119695-PROBIT            BELARUS                        Female_6 months    Maternal             Control                 0.3665277         0.1174461          1.1438655
6 months    ki1119695-PROBIT            BELARUS                        Male_6 months      Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1119695-PROBIT            BELARUS                        Male_6 months      Maternal             Control                 0.6915138         0.3979183          1.2017325
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_6 months    Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_6 months    VitA                 Control                 0.9990680         0.6609261          1.5102096
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_6 months      Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_6 months      VitA                 Control                 1.4574762         1.0378841          2.0466996
6 months    ki1135781-COHORTS           GUATEMALA                      Female_6 months    Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      Female_6 months    Other                Control                 0.6351171         0.3585160          1.1251203
6 months    ki1135781-COHORTS           GUATEMALA                      Male_6 months      Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      Male_6 months      Other                Control                 0.6915652         0.4584789          1.0431503
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_6 months    Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_6 months    LNS                  Control                 1.3588163         0.4843957          3.8117215
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_6 months      Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_6 months      LNS                  Control                 0.8299848         0.5159724          1.3351001
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6 months    Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6 months    Maternal             Control                 0.5545961         0.2398324          1.2824660
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6 months      Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6 months      Maternal             Control                 0.8881923         0.4447119          1.7739249
6 months    ki1148112-LCNI-5            MALAWI                         Female_6 months    Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         Female_6 months    LNS                  Control                 1.5408805         0.4330264          5.4830673
6 months    ki1148112-LCNI-5            MALAWI                         Female_6 months    Other                Control                 0.8909091         0.1837151          4.3203797
6 months    ki1148112-LCNI-5            MALAWI                         Male_6 months      Control              Control                 1.0000000         1.0000000          1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         Male_6 months      LNS                  Control                 1.4896104         0.7783955          2.8506574
6 months    ki1148112-LCNI-5            MALAWI                         Male_6 months      Other                Control                 1.3385900         0.6282136          2.8522513
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_6 months    Control              Control                 1.0000000         1.0000000          1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_6 months    Maternal             Control                 0.7704062         0.6211998          0.9554506
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_6 months      Control              Control                 1.0000000         1.0000000          1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_6 months      Maternal             Control                 0.8714319         0.7448552          1.0195183
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_6 months    Control              Control                 1.0000000         1.0000000          1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_6 months    LNS                  Control                 0.6109621         0.2946482          1.2668489
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_6 months    Other                Control                 0.8613156         0.5636958          1.3160726
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_6 months      Control              Control                 1.0000000         1.0000000          1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_6 months      LNS                  Control                 1.1988389         0.8274716          1.7368749
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_6 months      Other                Control                 1.0569020         0.7162496          1.5595706
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_24 months   Control              Control                 1.0000000         1.0000000          1.0000000
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_24 months   VitA                 Control                 0.8888889         0.2753492          2.8695323
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_24 months     Control              Control                 1.0000000         1.0000000          1.0000000
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_24 months     VitA                 Control                 0.8484848         0.3794265          1.8974073
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_24 months   Control              Control                 1.0000000         1.0000000          1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_24 months   LNS                  Control                 0.6956699         0.3514375          1.3770773
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_24 months   Other                Control                 0.6678431         0.3752962          1.1884333
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_24 months     Control              Control                 1.0000000         1.0000000          1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_24 months     LNS                  Control                 1.1620354         0.6472016          2.0864074
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_24 months     Other                Control                 1.1460118         0.6777621          1.9377642
24 months   ki1000111-WASH-Kenya        KENYA                          Female_24 months   Control              Control                 1.0000000         1.0000000          1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          Female_24 months   LNS                  Control                 0.6614729         0.3525310          1.2411573
24 months   ki1000111-WASH-Kenya        KENYA                          Female_24 months   Other                Control                 0.8491751         0.5290004          1.3631337
24 months   ki1000111-WASH-Kenya        KENYA                          Male_24 months     Control              Control                 1.0000000         1.0000000          1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          Male_24 months     LNS                  Control                 0.4851064         0.2769535          0.8497031
24 months   ki1000111-WASH-Kenya        KENYA                          Male_24 months     Other                Control                 0.7283333         0.4945963          1.0725301
24 months   ki1000304-EU                INDIA                          Female_24 months   Control              Control                 1.0000000         1.0000000          1.0000000
24 months   ki1000304-EU                INDIA                          Female_24 months   Zinc                 Control                 0.8846939         0.4802498          1.6297421
24 months   ki1000304-EU                INDIA                          Male_24 months     Control              Control                 1.0000000         1.0000000          1.0000000
24 months   ki1000304-EU                INDIA                          Male_24 months     Zinc                 Control                 1.0024631         0.4910485          2.0465029
24 months   ki1000304-Vitamin-B12       INDIA                          Female_24 months   Control              Control                 1.0000000         1.0000000          1.0000000
24 months   ki1000304-Vitamin-B12       INDIA                          Female_24 months   Other                Control                 2.3333333         0.3082191         17.6641994
24 months   ki1000304-Vitamin-B12       INDIA                          Male_24 months     Control              Control                 1.0000000         1.0000000          1.0000000
24 months   ki1000304-Vitamin-B12       INDIA                          Male_24 months     Other                Control                 2.1132075         0.6641403          6.7239504
24 months   ki1000304-ZnMort            INDIA                          Female_24 months   Control              Control                 1.0000000         1.0000000          1.0000000
24 months   ki1000304-ZnMort            INDIA                          Female_24 months   Zinc                 Control                 0.7818930         0.2925242          2.0899355
24 months   ki1000304-ZnMort            INDIA                          Male_24 months     Control              Control                 1.0000000         1.0000000          1.0000000
24 months   ki1000304-ZnMort            INDIA                          Male_24 months     Zinc                 Control                 0.6491228         0.2985122          1.4115350
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_24 months   Control              Control                 1.0000000         1.0000000          1.0000000
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_24 months   Zinc                 Control                 0.9607280         0.4305515          2.1437583
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_24 months     Control              Control                 1.0000000         1.0000000          1.0000000
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_24 months     Zinc                 Control                 1.0313688         0.5209046          2.0420660
24 months   ki1119695-PROBIT            BELARUS                        Female_24 months   Control              Control                 1.0000000         1.0000000          1.0000000
24 months   ki1119695-PROBIT            BELARUS                        Female_24 months   Maternal             Control                 3.9717742         0.1997154         78.9873517
24 months   ki1119695-PROBIT            BELARUS                        Male_24 months     Control              Control                 1.0000000         1.0000000          1.0000000
24 months   ki1119695-PROBIT            BELARUS                        Male_24 months     Maternal             Control                 0.8082192         0.1318283          4.9550688
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_24 months   Control              Control                 1.0000000         1.0000000          1.0000000
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_24 months   VitA                 Control                 3.0000000         0.4492757         20.0322420
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_24 months     Control              Control                 1.0000000         1.0000000          1.0000000
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_24 months     VitA                 Control                 2.5000000         0.3648184         17.1318132
24 months   ki1135781-COHORTS           GUATEMALA                      Female_24 months   Control              Control                 1.0000000         1.0000000          1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      Female_24 months   Other                Control                 0.7521499         0.5386939          1.0501871
24 months   ki1135781-COHORTS           GUATEMALA                      Male_24 months     Control              Control                 1.0000000         1.0000000          1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      Male_24 months     Other                Control                 0.9370370         0.6450331          1.3612299
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_24 months   Control              Control                 1.0000000         1.0000000          1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_24 months   LNS                  Control                 1.1191223         0.5500880          2.2767895
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_24 months     Control              Control                 1.0000000         1.0000000          1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_24 months     LNS                  Control                 0.7986011         0.5081224          1.2551381
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_24 months     Control              Control                 1.0000000         1.0000000          1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_24 months     Maternal             Control                 1.4000000         0.1878993         10.4311196
24 months   ki1148112-LCNI-5            MALAWI                         Female_24 months   Control              Control                 1.0000000         1.0000000          1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         Female_24 months   LNS                  Control                 0.6179775         0.1868413          2.0439607
24 months   ki1148112-LCNI-5            MALAWI                         Female_24 months   Other                Control                 1.0576923         0.3239618          3.4532251
24 months   ki1148112-LCNI-5            MALAWI                         Male_24 months     Control              Control                 1.0000000         1.0000000          1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         Male_24 months     LNS                  Control                 0.7466667         0.3449905          1.6160185
24 months   ki1148112-LCNI-5            MALAWI                         Male_24 months     Other                Control                 0.2604651         0.0599393          1.1318460
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_24 months   Control              Control                 1.0000000         1.0000000          1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_24 months   Maternal             Control                 1.0181818         0.2670572          3.8819185
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_24 months     Control              Control                 1.0000000         1.0000000          1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_24 months     Maternal             Control                 0.7543210         0.3346568          1.7002498
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_24 months   Control              Control                 1.0000000         1.0000000          1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_24 months   LNS                  Control                 0.5736972         0.2343012          1.4047234
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_24 months   Other                Control                 0.7391253         0.3981072          1.3722591
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_24 months     Control              Control                 1.0000000         1.0000000          1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_24 months     LNS                  Control                 1.3265306         0.6537171          2.6918119
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_24 months     Other                Control                 0.9318182         0.4344866          1.9984166


### Parameter: PAR


agecat      studyid                     country                        intXsex            intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  -----------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Female_Birth       Control              NA                 0.0178253   -0.0659305    0.1015811
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Female_Birth       Control              NA                 0.0013806   -0.0058673    0.0086285
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Male_Birth         Control              NA                -0.0024185   -0.0096161    0.0047791
Birth       ki1135781-COHORTS           GUATEMALA                      Male_Birth         Control              NA                 0.0065752   -0.0050124    0.0181629
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Female_Birth       Control              NA                -0.0094172   -0.0163106   -0.0025237
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Male_Birth         Control              NA                -0.0074076   -0.0141881   -0.0006272
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Female_Birth       Control              NA                -0.0108333   -0.0601077    0.0384411
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Male_Birth         Control              NA                 0.0053522   -0.0439996    0.0547040
6 months    iLiNS_DYADM_LNS             MALAWI                         Female_6 months    Control              NA                -0.0213503   -0.0395515   -0.0031492
6 months    iLiNS_DYADM_LNS             MALAWI                         Male_6 months      Control              NA                -0.0067584   -0.0322560    0.0187391
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6 months    Control              NA                -0.0071489   -0.0350537    0.0207560
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6 months      Control              NA                -0.0100811   -0.0602156    0.0400534
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_6 months    Control              NA                -0.0304782   -0.0576993   -0.0032571
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_6 months      Control              NA                 0.0032875   -0.0295650    0.0361401
6 months    ki1000304-EU                INDIA                          Female_6 months    Control              NA                -0.0079755   -0.0477023    0.0317514
6 months    ki1000304-EU                INDIA                          Male_6 months      Control              NA                 0.0138889   -0.0288768    0.0566546
6 months    ki1000304-VITAMIN-A         INDIA                          Female_6 months    Control              NA                 0.0126302   -0.0018911    0.0271514
6 months    ki1000304-VITAMIN-A         INDIA                          Male_6 months      Control              NA                -0.0075272   -0.0254004    0.0103459
6 months    ki1000304-Vitamin-B12       INDIA                          Male_6 months      Control              NA                 0.0406699   -0.1153561    0.1966958
6 months    ki1000304-ZnMort            INDIA                          Male_6 months      Control              NA                 0.0130719   -0.0416468    0.0677906
6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_6 months    Control              NA                 0.0177092   -0.0134123    0.0488307
6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_6 months      Control              NA                -0.0258372   -0.0633799    0.0117056
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_6 months    Control              NA                 0.0135328   -0.0669014    0.0939669
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_6 months      Control              NA                -0.0659480   -0.1756931    0.0437971
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6 months    Control              NA                -0.0087979   -0.0240383    0.0064424
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6 months      Control              NA                -0.0088183   -0.0263897    0.0087531
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6 months    Control              NA                 0.0155763    0.0020089    0.0291437
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6 months      Control              NA                -0.0120203   -0.0708284    0.0467877
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_6 months    Control              NA                -0.0009740   -0.0436304    0.0416823
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_6 months      Control              NA                -0.0377358   -0.1024956    0.0270240
6 months    ki1119695-PROBIT            BELARUS                        Female_6 months    Control              NA                -0.0018529   -0.0044350    0.0007291
6 months    ki1119695-PROBIT            BELARUS                        Male_6 months      Control              NA                -0.0053243   -0.0139214    0.0032727
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_6 months    Control              NA                -0.0000217   -0.0096297    0.0095863
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_6 months      Control              NA                 0.0137702    0.0025645    0.0249759
6 months    ki1135781-COHORTS           GUATEMALA                      Female_6 months    Control              NA                -0.0234495   -0.0529301    0.0060311
6 months    ki1135781-COHORTS           GUATEMALA                      Male_6 months      Control              NA                -0.0299752   -0.0631964    0.0032459
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_6 months    Control              NA                 0.0079521   -0.0160428    0.0319470
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_6 months      Control              NA                -0.0158874   -0.0588659    0.0270911
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6 months    Control              NA                -0.0163597   -0.0415037    0.0087843
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6 months      Control              NA                -0.0051486   -0.0357110    0.0254139
6 months    ki1148112-LCNI-5            MALAWI                         Female_6 months    Control              NA                 0.0074830   -0.0234657    0.0384317
6 months    ki1148112-LCNI-5            MALAWI                         Male_6 months      Control              NA                 0.0321658   -0.0178757    0.0822073
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_6 months    Control              NA                -0.0054788   -0.0100395   -0.0009182
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_6 months      Control              NA                -0.0054928   -0.0118028    0.0008171
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_6 months    Control              NA                -0.0083160   -0.0226616    0.0060296
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_6 months      Control              NA                 0.0054638   -0.0122243    0.0231519
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_24 months   Control              NA                -0.0079365   -0.0861819    0.0703088
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_24 months     Control              NA                -0.0210084   -0.1234335    0.0814167
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_24 months   Control              NA                -0.0323797   -0.0813093    0.0165499
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_24 months     Control              NA                 0.0141923   -0.0340533    0.0624380
24 months   ki1000111-WASH-Kenya        KENYA                          Female_24 months   Control              NA                -0.0103681   -0.0299732    0.0092369
24 months   ki1000111-WASH-Kenya        KENYA                          Male_24 months     Control              NA                -0.0312951   -0.0592517   -0.0033385
24 months   ki1000304-EU                INDIA                          Female_24 months   Control              NA                -0.0183115   -0.1103734    0.0737504
24 months   ki1000304-EU                INDIA                          Male_24 months     Control              NA                 0.0002048   -0.0592037    0.0596132
24 months   ki1000304-Vitamin-B12       INDIA                          Female_24 months   Control              NA                 0.0714286   -0.0620537    0.2049109
24 months   ki1000304-Vitamin-B12       INDIA                          Male_24 months     Control              NA                 0.0957792   -0.0282200    0.2197784
24 months   ki1000304-ZnMort            INDIA                          Female_24 months   Control              NA                -0.0214575   -0.1051414    0.0622264
24 months   ki1000304-ZnMort            INDIA                          Male_24 months     Control              NA                -0.0576577   -0.1599272    0.0446119
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_24 months   Control              NA                -0.0035882   -0.0766234    0.0694470
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_24 months     Control              NA                 0.0036208   -0.0754806    0.0827222
24 months   ki1119695-PROBIT            BELARUS                        Female_24 months   Control              NA                 0.0084070   -0.0046475    0.0214615
24 months   ki1119695-PROBIT            BELARUS                        Male_24 months     Control              NA                -0.0035953   -0.0351369    0.0279463
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_24 months   Control              NA                 0.2424242   -0.0517933    0.5366418
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_24 months     Control              NA                 0.2000000   -0.1312944    0.5312944
24 months   ki1135781-COHORTS           GUATEMALA                      Female_24 months   Control              NA                -0.0667659   -0.1437144    0.0101825
24 months   ki1135781-COHORTS           GUATEMALA                      Male_24 months     Control              NA                -0.0121835   -0.0820825    0.0577156
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_24 months   Control              NA                 0.0115519   -0.0586829    0.0817867
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_24 months     Control              NA                -0.0473261   -0.1496592    0.0550071
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_24 months     Control              NA                 0.0446429   -0.1959731    0.2852589
24 months   ki1148112-LCNI-5            MALAWI                         Female_24 months   Control              NA                -0.0143785   -0.0771318    0.0483749
24 months   ki1148112-LCNI-5            MALAWI                         Male_24 months     Control              NA                -0.0515873   -0.1315023    0.0283277
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_24 months   Control              NA                 0.0021930   -0.1604281    0.1648141
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_24 months     Control              NA                -0.0419212   -0.1640409    0.0801985
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_24 months   Control              NA                -0.0276077   -0.0747060    0.0194906
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_24 months     Control              NA                 0.0071538   -0.0458699    0.0601774


### Parameter: PAF


agecat      studyid                     country                        intXsex            intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  -----------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Female_Birth       Control              NA                 0.1680672   -1.1684852    0.6808315
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Female_Birth       Control              NA                 0.0430539   -0.2118154    0.2443190
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Male_Birth         Control              NA                -0.0762519   -0.3286396    0.1281923
Birth       ki1135781-COHORTS           GUATEMALA                      Male_Birth         Control              NA                 0.4208145   -0.8582059    0.8194732
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Female_Birth       Control              NA                -0.0914987   -0.1605368   -0.0265677
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Male_Birth         Control              NA                -0.0704395   -0.1369695   -0.0078025
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Female_Birth       Control              NA                -0.1494253   -1.0732913    0.3627627
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Male_Birth         Control              NA                 0.0645320   -0.7671334    0.5047910
6 months    iLiNS_DYADM_LNS             MALAWI                         Female_6 months    Control              NA                -0.6298343   -1.1134252   -0.2568979
6 months    iLiNS_DYADM_LNS             MALAWI                         Male_6 months      Control              NA                -0.1058824   -0.5840792    0.2279579
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6 months    Control              NA                -0.4146341   -3.3415421    0.5390602
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6 months      Control              NA                -0.1530495   -1.2270640    0.4030153
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_6 months    Control              NA                -0.3352601   -0.6488720   -0.0812965
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_6 months      Control              NA                 0.0240052   -0.2478655    0.2366439
6 months    ki1000304-EU                INDIA                          Female_6 months    Control              NA                -0.0866667   -0.6143306    0.2685238
6 months    ki1000304-EU                INDIA                          Male_6 months      Control              NA                 0.1111111   -0.3035044    0.3938467
6 months    ki1000304-VITAMIN-A         INDIA                          Female_6 months    Control              NA                 0.1676619   -0.0461337    0.3377647
6 months    ki1000304-VITAMIN-A         INDIA                          Male_6 months      Control              NA                -0.0627268   -0.2223779    0.0760727
6 months    ki1000304-Vitamin-B12       INDIA                          Male_6 months      Control              NA                 0.3090909   -2.7234604    0.8717979
6 months    ki1000304-ZnMort            INDIA                          Male_6 months      Control              NA                 0.1176470   -0.5344598    0.4926249
6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_6 months    Control              NA                 0.1796218   -0.2301986    0.4529173
6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_6 months      Control              NA                -0.3186583   -0.8494038    0.0597728
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_6 months    Control              NA                 0.0913462   -0.6504368    0.4997374
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_6 months      Control              NA                -0.4561404   -1.4362335    0.1296628
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6 months    Control              NA                -0.8211382   -2.7650443    0.1191221
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6 months      Control              NA                -0.4778409   -1.7635822    0.2097164
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6 months    Control              NA                 0.9999998    0.9999995    0.9999999
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6 months      Control              NA                -0.3376623   -3.5631390    0.6078707
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_6 months    Control              NA                -0.0181818   -1.2254104    0.5341559
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_6 months      Control              NA                -0.2857143   -0.8646663    0.1134815
6 months    ki1119695-PROBIT            BELARUS                        Female_6 months    Control              NA                -0.4767743   -1.0936497   -0.0416558
6 months    ki1119695-PROBIT            BELARUS                        Male_6 months      Control              NA                -0.1864310   -0.5059030    0.0652661
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_6 months    Control              NA                -0.0007016   -0.3654306    0.2666023
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_6 months      Control              NA                 0.2566796    0.0187660    0.4369078
6 months    ki1135781-COHORTS           GUATEMALA                      Female_6 months    Control              NA                -0.2350280   -0.5620050    0.0235024
6 months    ki1135781-COHORTS           GUATEMALA                      Male_6 months      Control              NA                -0.1863018   -0.4095978    0.0016216
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_6 months    Control              NA                 0.2320574   -0.9010809    0.6897892
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_6 months      Control              NA                -0.1634372   -0.7000880    0.2038141
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6 months    Control              NA                -0.4206788   -1.2055298    0.0848783
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6 months      Control              NA                -0.0786765   -0.6621564    0.2999799
6 months    ki1148112-LCNI-5            MALAWI                         Female_6 months    Control              NA                 0.1964286   -1.1943296    0.7057292
6 months    ki1148112-LCNI-5            MALAWI                         Male_6 months      Control              NA                 0.2450450   -0.2447635    0.5421163
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_6 months    Control              NA                -0.1298715   -0.2420710   -0.0278073
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_6 months      Control              NA                -0.0700192   -0.1530607    0.0070418
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_6 months    Control              NA                -0.2031788   -0.6107431    0.1012600
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_6 months      Control              NA                 0.0763469   -0.2070982    0.2932347
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_24 months   Control              NA                -0.0500000   -0.6783031    0.3430865
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_24 months     Control              NA                -0.0793651   -0.5443345    0.2456110
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_24 months   Control              NA                -0.3324700   -0.9355930    0.0827223
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_24 months     Control              NA                 0.1046472   -0.3314702    0.3979161
24 months   ki1000111-WASH-Kenya        KENYA                          Female_24 months   Control              NA                -0.1625241   -0.5120822    0.1062243
24 months   ki1000111-WASH-Kenya        KENYA                          Male_24 months     Control              NA                -0.3120655   -0.6176528   -0.0642061
24 months   ki1000304-EU                INDIA                          Female_24 months   Control              NA                -0.0714738   -0.4981663    0.2336925
24 months   ki1000304-EU                INDIA                          Male_24 months     Control              NA                 0.0010811   -0.3674317    0.2702824
24 months   ki1000304-Vitamin-B12       INDIA                          Female_24 months   Control              NA                 0.5000000   -1.9438167    0.9150762
24 months   ki1000304-Vitamin-B12       INDIA                          Male_24 months     Control              NA                 0.4338235   -0.4719928    0.7822300
24 months   ki1000304-ZnMort            INDIA                          Female_24 months   Control              NA                -0.0996241   -0.5640718    0.2269069
24 months   ki1000304-ZnMort            INDIA                          Male_24 months     Control              NA                -0.2162162   -0.6657049    0.1119784
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_24 months   Control              NA                -0.0365745   -1.1256123    0.4945049
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_24 months     Control              NA                 0.0272953   -0.7956048    0.4730720
24 months   ki1119695-PROBIT            BELARUS                        Female_24 months   Control              NA                 0.6235195   -3.6192464    0.9693159
24 months   ki1119695-PROBIT            BELARUS                        Male_24 months     Control              NA                -0.1186441   -1.7573301    0.5461680
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_24 months   Control              NA                 0.5925926   -1.2187423    0.9251915
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_24 months     Control              NA                 0.5000000   -1.5127604    0.9005078
24 months   ki1135781-COHORTS           GUATEMALA                      Female_24 months   Control              NA                -0.1362025   -0.3066406    0.0120036
24 months   ki1135781-COHORTS           GUATEMALA                      Male_24 months     Control              NA                -0.0321361   -0.2340309    0.1367275
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_24 months   Control              NA                 0.0894118   -0.6535689    0.4985568
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_24 months     Control              NA                -0.2045537   -0.7383726    0.1653402
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_24 months     Control              NA                 0.2380952   -3.0643546    0.8571732
24 months   ki1148112-LCNI-5            MALAWI                         Female_24 months   Control              NA                -0.1878788   -1.3607709    0.4022902
24 months   ki1148112-LCNI-5            MALAWI                         Male_24 months     Control              NA                -0.4062500   -1.1828742    0.0940664
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_24 months   Control              NA                 0.0104167   -1.1603215    0.5466993
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_24 months     Control              NA                -0.1512158   -0.6852197    0.2135757
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_24 months   Control              NA                -0.3010965   -0.9165634    0.1167252
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_24 months     Control              NA                 0.0652015   -0.5688384    0.4429966
