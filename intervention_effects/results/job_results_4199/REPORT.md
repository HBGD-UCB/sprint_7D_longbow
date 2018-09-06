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
* intXsex

## Data Summary

agecat        studyid                     country                        intXsex               ever_stunted   n_cell       n
------------  --------------------------  -----------------------------  -------------------  -------------  -------  ------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Female_0-6 months                0       24      29
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Female_0-6 months                1        5      29
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Male_0-6 months                  0        9      14
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Male_0-6 months                  1        5      14
0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         Female_0-6 months                0        3       4
0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         Female_0-6 months                1        1       4
0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         Male_0-6 months                  0        6       6
0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         Male_0-6 months                  1        0       6
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_0-6 months                0      118     129
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_0-6 months                1       11     129
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_0-6 months                  0       91     103
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_0-6 months                  1       12     103
0-6 months    ki1000111-WASH-Kenya        KENYA                          Female_0-6 months                0       47      48
0-6 months    ki1000111-WASH-Kenya        KENYA                          Female_0-6 months                1        1      48
0-6 months    ki1000111-WASH-Kenya        KENYA                          Male_0-6 months                  0       38      44
0-6 months    ki1000111-WASH-Kenya        KENYA                          Male_0-6 months                  1        6      44
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_0-6 months                0       94     125
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_0-6 months                1       31     125
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_0-6 months                  0      121     167
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_0-6 months                  1       46     167
0-6 months    ki1000304-EU                INDIA                          Female_0-6 months                0        2       6
0-6 months    ki1000304-EU                INDIA                          Female_0-6 months                1        4       6
0-6 months    ki1000304-EU                INDIA                          Male_0-6 months                  0        5       8
0-6 months    ki1000304-EU                INDIA                          Male_0-6 months                  1        3       8
0-6 months    ki1000304-VITAMIN-A         INDIA                          Female_0-6 months                0      106     154
0-6 months    ki1000304-VITAMIN-A         INDIA                          Female_0-6 months                1       48     154
0-6 months    ki1000304-VITAMIN-A         INDIA                          Male_0-6 months                  0      121     180
0-6 months    ki1000304-VITAMIN-A         INDIA                          Male_0-6 months                  1       59     180
0-6 months    ki1000304-Vitamin-B12       INDIA                          Male_0-6 months                  0        1       1
0-6 months    ki1000304-Vitamin-B12       INDIA                          Male_0-6 months                  1        0       1
0-6 months    ki1000304-ZnMort            INDIA                          Female_0-6 months                0       61      88
0-6 months    ki1000304-ZnMort            INDIA                          Female_0-6 months                1       27      88
0-6 months    ki1000304-ZnMort            INDIA                          Male_0-6 months                  0       48      93
0-6 months    ki1000304-ZnMort            INDIA                          Male_0-6 months                  1       45      93
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_0-6 months                0      276     384
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_0-6 months                1      108     384
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_0-6 months                  0      293     408
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_0-6 months                  1      115     408
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_0-6 months                0      142     222
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_0-6 months                1       80     222
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_0-6 months                  0      115     194
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_0-6 months                  1       79     194
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Female_0-6 months                0      269     304
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Female_0-6 months                1       35     304
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Male_0-6 months                  0      282     336
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Male_0-6 months                  1       54     336
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_0-6 months                0     1046    1106
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_0-6 months                1       60    1106
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_0-6 months                  0     1029    1128
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_0-6 months                  1       99    1128
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_0-6 months                0       24      25
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_0-6 months                1        1      25
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_0-6 months                  0       17      21
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_0-6 months                  1        4      21
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_0-6 months                0      103     128
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_0-6 months                1       25     128
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_0-6 months                  0       83     113
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_0-6 months                  1       30     113
0-6 months    ki1119695-PROBIT            BELARUS                        Female_0-6 months                0     8269    8381
0-6 months    ki1119695-PROBIT            BELARUS                        Female_0-6 months                1      112    8381
0-6 months    ki1119695-PROBIT            BELARUS                        Male_0-6 months                  0     6864    7804
0-6 months    ki1119695-PROBIT            BELARUS                        Male_0-6 months                  1      940    7804
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_0-6 months                0     3784    4453
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_0-6 months                1      669    4453
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_0-6 months                  0     3723    4649
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_0-6 months                  1      926    4649
0-6 months    ki1135781-COHORTS           GUATEMALA                      Female_0-6 months                0      103     150
0-6 months    ki1135781-COHORTS           GUATEMALA                      Female_0-6 months                1       47     150
0-6 months    ki1135781-COHORTS           GUATEMALA                      Male_0-6 months                  0      102     148
0-6 months    ki1135781-COHORTS           GUATEMALA                      Male_0-6 months                  1       46     148
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_0-6 months                0      448     585
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_0-6 months                1      137     585
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_0-6 months                  0      401     612
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_0-6 months                  1      211     612
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_0-6 months                0       32      39
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_0-6 months                1        7      39
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_0-6 months                  0       22      31
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_0-6 months                  1        9      31
0-6 months    ki1148112-LCNI-5            MALAWI                         Female_0-6 months                0       97     129
0-6 months    ki1148112-LCNI-5            MALAWI                         Female_0-6 months                1       32     129
0-6 months    ki1148112-LCNI-5            MALAWI                         Male_0-6 months                  0       78     143
0-6 months    ki1148112-LCNI-5            MALAWI                         Male_0-6 months                  1       65     143
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_0-6 months                0    14722   19154
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_0-6 months                1     4432   19154
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_0-6 months                  0    14086   19564
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_0-6 months                  1     5478   19564
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_0-6 months                0     3590    4632
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_0-6 months                1     1042    4632
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_0-6 months                  0     3244    4504
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_0-6 months                  1     1260    4504
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Female_6-24 months               0      201     261
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Female_6-24 months               1       60     261
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Male_6-24 months                 0      153     233
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Male_6-24 months                 1       80     233
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Female_6-24 months               0      905    1225
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Female_6-24 months               1      320    1225
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Male_6-24 months                 0      757    1243
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Male_6-24 months                 1      486    1243
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_6-24 months               0      171     230
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_6-24 months               1       59     230
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_6-24 months                 0      177     263
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_6-24 months                 1       86     263
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6-24 months               0     1530    2403
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6-24 months               1      873    2403
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6-24 months                 0     1431    2380
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6-24 months                 1      949    2380
6-24 months   ki1000111-WASH-Kenya        KENYA                          Female_6-24 months               0     2720    3437
6-24 months   ki1000111-WASH-Kenya        KENYA                          Female_6-24 months               1      717    3437
6-24 months   ki1000111-WASH-Kenya        KENYA                          Male_6-24 months                 0     2215    3187
6-24 months   ki1000111-WASH-Kenya        KENYA                          Male_6-24 months                 1      972    3187
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Female_6-24 months               0      286     650
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Female_6-24 months               1      364     650
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Male_6-24 months                 0      319     717
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Male_6-24 months                 1      398     717
6-24 months   ki1000304-EU                INDIA                          Female_6-24 months               0      526     955
6-24 months   ki1000304-EU                INDIA                          Female_6-24 months               1      429     955
6-24 months   ki1000304-EU                INDIA                          Male_6-24 months                 0      546    1053
6-24 months   ki1000304-EU                INDIA                          Male_6-24 months                 1      507    1053
6-24 months   ki1000304-VITAMIN-A         INDIA                          Female_6-24 months               0      928    1358
6-24 months   ki1000304-VITAMIN-A         INDIA                          Female_6-24 months               1      430    1358
6-24 months   ki1000304-VITAMIN-A         INDIA                          Male_6-24 months                 0      885    1431
6-24 months   ki1000304-VITAMIN-A         INDIA                          Male_6-24 months                 1      546    1431
6-24 months   ki1000304-Vitamin-B12       INDIA                          Female_6-24 months               0      226     392
6-24 months   ki1000304-Vitamin-B12       INDIA                          Female_6-24 months               1      166     392
6-24 months   ki1000304-Vitamin-B12       INDIA                          Male_6-24 months                 0      198     412
6-24 months   ki1000304-Vitamin-B12       INDIA                          Male_6-24 months                 1      214     412
6-24 months   ki1000304-ZnMort            INDIA                          Female_6-24 months               0      413     827
6-24 months   ki1000304-ZnMort            INDIA                          Female_6-24 months               1      414     827
6-24 months   ki1000304-ZnMort            INDIA                          Male_6-24 months                 0      473    1028
6-24 months   ki1000304-ZnMort            INDIA                          Male_6-24 months                 1      555    1028
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Female_6-24 months               0      170     303
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Female_6-24 months               1      133     303
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Male_6-24 months                 0      183     324
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Male_6-24 months                 1      141     324
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Female_6-24 months               0       49     133
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Female_6-24 months               1       84     133
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Male_6-24 months                 0       44     110
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Male_6-24 months                 1       66     110
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Female_6-24 months               0      150     159
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Female_6-24 months               1        9     159
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Male_6-24 months                 0      155     183
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Male_6-24 months                 1       28     183
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6-24 months               0      772     916
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6-24 months               1      144     916
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6-24 months                 0      704     890
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6-24 months                 1      186     890
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6-24 months               0     2525    3593
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6-24 months               1     1068    3593
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6-24 months                 0     2200    3564
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6-24 months                 1     1364    3564
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Female_6-24 months               0       69      97
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Female_6-24 months               1       28      97
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Male_6-24 months                 0       59      85
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Male_6-24 months                 1       26      85
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Female_6-24 months               0     1170    1625
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Female_6-24 months               1      455    1625
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Male_6-24 months                 0      990    1640
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Male_6-24 months                 1      650    1640
6-24 months   ki1119695-PROBIT            BELARUS                        Female_6-24 months               0     7791    7964
6-24 months   ki1119695-PROBIT            BELARUS                        Female_6-24 months               1      173    7964
6-24 months   ki1119695-PROBIT            BELARUS                        Male_6-24 months                 0     5571    6243
6-24 months   ki1119695-PROBIT            BELARUS                        Male_6-24 months                 1      672    6243
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_6-24 months               0     3461    4231
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_6-24 months               1      770    4231
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_6-24 months                 0     3121    4177
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_6-24 months                 1     1056    4177
6-24 months   ki1135781-COHORTS           GUATEMALA                      Female_6-24 months               0       93     233
6-24 months   ki1135781-COHORTS           GUATEMALA                      Female_6-24 months               1      140     233
6-24 months   ki1135781-COHORTS           GUATEMALA                      Male_6-24 months                 0       86     248
6-24 months   ki1135781-COHORTS           GUATEMALA                      Male_6-24 months                 1      162     248
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_6-24 months               0      484     771
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_6-24 months               1      287     771
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_6-24 months                 0      383     701
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_6-24 months                 1      318     701
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6-24 months               0      308     410
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6-24 months               1      102     410
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6-24 months                 0      230     351
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6-24 months                 1      121     351
6-24 months   ki1148112-LCNI-5            MALAWI                         Female_6-24 months               0      209     385
6-24 months   ki1148112-LCNI-5            MALAWI                         Female_6-24 months               1      176     385
6-24 months   ki1148112-LCNI-5            MALAWI                         Male_6-24 months                 0      137     345
6-24 months   ki1148112-LCNI-5            MALAWI                         Male_6-24 months                 1      208     345
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_6-24 months               0     7670    9057
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_6-24 months               1     1387    9057
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_6-24 months                 0     7040    8734
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_6-24 months                 1     1694    8734
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_6-24 months               0     2450    3308
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_6-24 months               1      858    3308
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_6-24 months                 0     2258    3167
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_6-24 months                 1      909    3167


The following strata were considered:

* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXsex: Female_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXsex: Male_0-6 months
* agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXsex: Female_0-6 months
* agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXsex: Male_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXsex: Female_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXsex: Male_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXsex: Female_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXsex: Male_0-6 months
* agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXsex: Female_0-6 months
* agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXsex: Male_0-6 months
* agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA, intXsex: Female_0-6 months
* agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA, intXsex: Male_0-6 months
* agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXsex: Female_0-6 months
* agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXsex: Male_0-6 months
* agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXsex: Male_0-6 months
* agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA, intXsex: Female_0-6 months
* agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA, intXsex: Male_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXsex: Female_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXsex: Male_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXsex: Female_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXsex: Male_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXsex: Female_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXsex: Male_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXsex: Female_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXsex: Male_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXsex: Female_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXsex: Male_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXsex: Female_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXsex: Male_0-6 months
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXsex: Female_0-6 months
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXsex: Male_0-6 months
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXsex: Female_0-6 months
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXsex: Male_0-6 months
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXsex: Female_0-6 months
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXsex: Male_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXsex: Female_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXsex: Male_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXsex: Female_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXsex: Male_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXsex: Female_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXsex: Male_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXsex: Female_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXsex: Male_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXsex: Female_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXsex: Male_0-6 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXsex: Female_6-24 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXsex: Male_6-24 months
* agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO, intXsex: Female_6-24 months
* agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO, intXsex: Male_6-24 months
* agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXsex: Female_6-24 months
* agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXsex: Male_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXsex: Female_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXsex: Male_6-24 months
* agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXsex: Female_6-24 months
* agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXsex: Male_6-24 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXsex: Female_6-24 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXsex: Male_6-24 months
* agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA, intXsex: Female_6-24 months
* agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA, intXsex: Male_6-24 months
* agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXsex: Female_6-24 months
* agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA, intXsex: Male_6-24 months
* agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXsex: Female_6-24 months
* agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXsex: Male_6-24 months
* agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA, intXsex: Female_6-24 months
* agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA, intXsex: Male_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXsex: Female_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXsex: Male_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXsex: Female_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXsex: Male_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXsex: Female_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXsex: Male_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXsex: Female_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXsex: Male_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXsex: Female_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXsex: Male_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXsex: Female_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA, intXsex: Male_6-24 months
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO, intXsex: Female_6-24 months
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO, intXsex: Male_6-24 months
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXsex: Female_6-24 months
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXsex: Male_6-24 months
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXsex: Female_6-24 months
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXsex: Male_6-24 months
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXsex: Female_6-24 months
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA, intXsex: Male_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXsex: Female_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXsex: Male_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXsex: Female_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXsex: Male_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXsex: Female_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXsex: Male_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXsex: Female_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXsex: Male_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXsex: Female_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXsex: Male_6-24 months

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXsex: Female_0-6 months
* agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXsex: Male_0-6 months
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA, intXsex: Female_0-6 months
* agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA, intXsex: Female_0-6 months
* agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA, intXsex: Male_0-6 months
* agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA, intXsex: Male_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXsex: Female_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXsex: Male_0-6 months

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
![](/tmp/bf1d87bf-1a63-450b-b8ef-45cb979dd6ad/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bf1d87bf-1a63-450b-b8ef-45cb979dd6ad/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bf1d87bf-1a63-450b-b8ef-45cb979dd6ad/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bf1d87bf-1a63-450b-b8ef-45cb979dd6ad/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                     country                        intXsex              intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------------  -----------------------------  -------------------  -------------------  ---------------  ----------  -----------  ----------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Female_0-6 months    Control              NA                0.1250000   -0.0399176   0.2899176
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Female_0-6 months    LNS                  NA                0.2307692   -0.0023154   0.4638539
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Male_0-6 months      Control              NA                0.4285714    0.0481333   0.8090095
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Male_0-6 months      LNS                  NA                0.2857143   -0.0615766   0.6330052
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_0-6 months    Control              NA                0.1666667    0.0169859   0.3163475
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_0-6 months    LNS                  NA                0.0750000   -0.0069425   0.1569425
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_0-6 months    Other                NA                0.0615385    0.0028892   0.1201878
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_0-6 months      Control              NA                0.1052632   -0.0334047   0.2439310
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_0-6 months      LNS                  NA                0.1379310    0.0118152   0.2640469
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_0-6 months      Other                NA                0.1090909    0.0262974   0.1918844
0-6 months    ki1000111-WASH-Kenya        KENYA                          Male_0-6 months      Control              NA                0.0833333   -0.0748514   0.2415181
0-6 months    ki1000111-WASH-Kenya        KENYA                          Male_0-6 months      LNS                  NA                0.0000000    0.0000000   0.0000000
0-6 months    ki1000111-WASH-Kenya        KENYA                          Male_0-6 months      Other                NA                0.2500000    0.0580333   0.4419667
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_0-6 months    Control              NA                0.3088235    0.1985713   0.4190758
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_0-6 months    Maternal             NA                0.1754386    0.0763032   0.2745740
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_0-6 months      Control              NA                0.2676056    0.1643192   0.3708921
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_0-6 months      Maternal             NA                0.2812500    0.1910406   0.3714594
0-6 months    ki1000304-VITAMIN-A         INDIA                          Female_0-6 months    Control              NA                0.2808989    0.1872209   0.3745769
0-6 months    ki1000304-VITAMIN-A         INDIA                          Female_0-6 months    VitA                 NA                0.3538462    0.2372239   0.4704684
0-6 months    ki1000304-VITAMIN-A         INDIA                          Male_0-6 months      Control              NA                0.3414634    0.2385403   0.4443865
0-6 months    ki1000304-VITAMIN-A         INDIA                          Male_0-6 months      VitA                 NA                0.3163265    0.2239978   0.4086553
0-6 months    ki1000304-ZnMort            INDIA                          Female_0-6 months    Control              NA                0.3513514    0.1966463   0.5060564
0-6 months    ki1000304-ZnMort            INDIA                          Female_0-6 months    Zinc                 NA                0.2745098    0.1513300   0.3976896
0-6 months    ki1000304-ZnMort            INDIA                          Male_0-6 months      Control              NA                0.4230769    0.2880680   0.5580859
0-6 months    ki1000304-ZnMort            INDIA                          Male_0-6 months      Zinc                 NA                0.5609756    0.4082471   0.7137041
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_0-6 months    Control              NA                0.2571429    0.1510377   0.3632480
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_0-6 months    Other                NA                0.3014354    0.2866714   0.3161994
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_0-6 months      Control              NA                0.3020833    0.2059554   0.3982112
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_0-6 months      Other                NA                0.2638889    0.2250995   0.3026783
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_0-6 months    Control              NA                0.3559322    0.2334842   0.4783803
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_0-6 months    Other                NA                0.3619632    0.2880214   0.4359049
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_0-6 months      Control              NA                0.4565217    0.3122062   0.6008373
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_0-6 months      Other                NA                0.3918919    0.3130398   0.4707439
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Female_0-6 months    Control              NA                0.0985916    0.0291347   0.1680484
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Female_0-6 months    Other                NA                0.1201717    0.0783515   0.1619918
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Male_0-6 months      Control              NA                0.1789474    0.1017537   0.2561410
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Male_0-6 months      Other                NA                0.1535270    0.1079458   0.1991082
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_0-6 months    Control              NA                0.0553506    0.0281137   0.0825874
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_0-6 months    Other                NA                0.0411985    0.0173482   0.0650488
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_0-6 months    Zinc                 NA                0.0598592    0.0403413   0.0793770
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_0-6 months      Control              NA                0.0874126    0.0546648   0.1201604
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_0-6 months      Other                NA                0.0868056    0.0542744   0.1193367
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_0-6 months      Zinc                 NA                0.0884477    0.0647928   0.1121025
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_0-6 months    Control              NA                0.2461538    0.1410208   0.3512869
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_0-6 months    Other                NA                0.1428571    0.0561093   0.2296050
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_0-6 months      Control              NA                0.2545455    0.1389102   0.3701807
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_0-6 months      Other                NA                0.2758621    0.1603251   0.3913990
0-6 months    ki1119695-PROBIT            BELARUS                        Female_0-6 months    Control              NA                0.0153389    0.0081229   0.0225550
0-6 months    ki1119695-PROBIT            BELARUS                        Female_0-6 months    Maternal             NA                0.0115234    0.0071139   0.0159329
0-6 months    ki1119695-PROBIT            BELARUS                        Male_0-6 months      Control              NA                0.1250996    0.0923040   0.1578952
0-6 months    ki1119695-PROBIT            BELARUS                        Male_0-6 months      Maternal             NA                0.1161179    0.0902693   0.1419664
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_0-6 months    Control              NA                0.1451758    0.1244402   0.1659114
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_0-6 months    VitA                 NA                0.1519139    0.1397469   0.1640808
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_0-6 months      Control              NA                0.1928632    0.1703206   0.2154059
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_0-6 months      VitA                 NA                0.2013249    0.1879854   0.2146644
0-6 months    ki1135781-COHORTS           GUATEMALA                      Female_0-6 months    Control              NA                0.3380282    0.2276285   0.4484278
0-6 months    ki1135781-COHORTS           GUATEMALA                      Female_0-6 months    Other                NA                0.2911392    0.1906272   0.3916512
0-6 months    ki1135781-COHORTS           GUATEMALA                      Male_0-6 months      Control              NA                0.3428571    0.2312845   0.4544298
0-6 months    ki1135781-COHORTS           GUATEMALA                      Male_0-6 months      Other                NA                0.2820513    0.1818476   0.3822550
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_0-6 months    Control              NA                0.2380952    0.1469350   0.3292555
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_0-6 months    LNS                  NA                0.2335329    0.1964545   0.2706114
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_0-6 months      Control              NA                0.3846154    0.2910375   0.4781933
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_0-6 months      LNS                  NA                0.3366142    0.2954878   0.3777406
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_0-6 months    Control              NA                0.1250000   -0.0391677   0.2891677
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_0-6 months    Maternal             NA                0.2173913    0.0466187   0.3881639
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_0-6 months      Control              NA                0.4285714    0.0559122   0.8012307
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_0-6 months      Maternal             NA                0.2500000    0.0738984   0.4261016
0-6 months    ki1148112-LCNI-5            MALAWI                         Female_0-6 months    Control              NA                0.2068966    0.0588901   0.3549030
0-6 months    ki1148112-LCNI-5            MALAWI                         Female_0-6 months    LNS                  NA                0.2647059    0.1594380   0.3699738
0-6 months    ki1148112-LCNI-5            MALAWI                         Female_0-6 months    Other                NA                0.2500000    0.0993866   0.4006134
0-6 months    ki1148112-LCNI-5            MALAWI                         Male_0-6 months      Control              NA                0.4871795    0.3297570   0.6446020
0-6 months    ki1148112-LCNI-5            MALAWI                         Male_0-6 months      LNS                  NA                0.3802817    0.2669653   0.4935981
0-6 months    ki1148112-LCNI-5            MALAWI                         Male_0-6 months      Other                NA                0.5757576    0.4065414   0.7449737
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_0-6 months    Control              NA                0.2515209    0.2372315   0.2658102
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_0-6 months    Maternal             NA                0.2114345    0.1990283   0.2238407
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_0-6 months      Control              NA                0.3022967    0.2865291   0.3180643
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_0-6 months      Maternal             NA                0.2582340    0.2442654   0.2722026
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_0-6 months    Control              NA                0.2195122    0.1810202   0.2580042
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_0-6 months    LNS                  NA                0.2218597    0.1828839   0.2608356
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_0-6 months    Other                NA                0.2297794    0.2009016   0.2586572
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_0-6 months      Control              NA                0.2473498    0.2012082   0.2934914
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_0-6 months      LNS                  NA                0.2803150    0.2440938   0.3165361
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_0-6 months      Other                NA                0.2968601    0.2656538   0.3280665
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Female_6-24 months   Control              NA                0.2461538    0.1719623   0.3203454
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Female_6-24 months   LNS                  NA                0.2137405    0.1434053   0.2840756
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Male_6-24 months     Control              NA                0.2857143    0.2063234   0.3651052
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Male_6-24 months     LNS                  NA                0.4112150    0.3176858   0.5047441
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Female_6-24 months   Control              NA                0.2366667    0.1716685   0.3016648
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Female_6-24 months   Zinc                 NA                0.2691892    0.2271212   0.3112572
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Male_6-24 months     Control              NA                0.4102564    0.3125674   0.5079454
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Male_6-24 months     Zinc                 NA                0.3845328    0.2856391   0.4834264
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_6-24 months   Control              NA                0.2204724    0.1482145   0.2927303
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_6-24 months   VitA                 NA                0.3009709    0.2121969   0.3897448
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_6-24 months     Control              NA                0.2956522    0.2120898   0.3792145
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_6-24 months     VitA                 NA                0.3513514    0.2742929   0.4284098
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6-24 months   Control              NA                0.3857868    0.3465333   0.4250403
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6-24 months   LNS                  NA                0.3109656    0.2742548   0.3476765
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6-24 months   Other                NA                0.3788510    0.3514100   0.4062919
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6-24 months     Control              NA                0.4003466    0.3603595   0.4403337
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6-24 months     LNS                  NA                0.3497453    0.3112242   0.3882665
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6-24 months     Other                NA                0.4217463    0.3939610   0.4495316
6-24 months   ki1000111-WASH-Kenya        KENYA                          Female_6-24 months   Control              NA                0.2048495    0.1819731   0.2277259
6-24 months   ki1000111-WASH-Kenya        KENYA                          Female_6-24 months   LNS                  NA                0.1700960    0.1428183   0.1973738
6-24 months   ki1000111-WASH-Kenya        KENYA                          Female_6-24 months   Other                NA                0.2301587    0.2089385   0.2513789
6-24 months   ki1000111-WASH-Kenya        KENYA                          Male_6-24 months     Control              NA                0.3067655    0.2792455   0.3342856
6-24 months   ki1000111-WASH-Kenya        KENYA                          Male_6-24 months     LNS                  NA                0.2682256    0.2360158   0.3004354
6-24 months   ki1000111-WASH-Kenya        KENYA                          Male_6-24 months     Other                NA                0.3229544    0.2982884   0.3476204
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Female_6-24 months   Control              NA                0.5771812    0.5210496   0.6333128
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Female_6-24 months   Maternal             NA                0.5454545    0.4933976   0.5975115
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Male_6-24 months     Control              NA                0.5927978    0.5420805   0.6435151
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Male_6-24 months     Maternal             NA                0.5168539    0.4649083   0.5687996
6-24 months   ki1000304-EU                INDIA                          Female_6-24 months   Control              NA                0.4825328    0.4367452   0.5283203
6-24 months   ki1000304-EU                INDIA                          Female_6-24 months   Zinc                 NA                0.4185111    0.3751179   0.4619043
6-24 months   ki1000304-EU                INDIA                          Male_6-24 months     Control              NA                0.4893993    0.4481973   0.5306013
6-24 months   ki1000304-EU                INDIA                          Male_6-24 months     Zinc                 NA                0.4722793    0.4279193   0.5166393
6-24 months   ki1000304-VITAMIN-A         INDIA                          Female_6-24 months   Control              NA                0.3138686    0.2791038   0.3486335
6-24 months   ki1000304-VITAMIN-A         INDIA                          Female_6-24 months   VitA                 NA                0.3194651    0.2842250   0.3547052
6-24 months   ki1000304-VITAMIN-A         INDIA                          Male_6-24 months     Control              NA                0.4005642    0.3644827   0.4366456
6-24 months   ki1000304-VITAMIN-A         INDIA                          Male_6-24 months     VitA                 NA                0.3628809    0.3277957   0.3979661
6-24 months   ki1000304-Vitamin-B12       INDIA                          Female_6-24 months   Control              NA                0.4565217    0.3546085   0.5584350
6-24 months   ki1000304-Vitamin-B12       INDIA                          Female_6-24 months   Other                NA                0.4133333    0.3575393   0.4691274
6-24 months   ki1000304-Vitamin-B12       INDIA                          Male_6-24 months     Control              NA                0.5377358    0.4427077   0.6327640
6-24 months   ki1000304-Vitamin-B12       INDIA                          Male_6-24 months     Other                NA                0.5130719    0.4570011   0.5691427
6-24 months   ki1000304-ZnMort            INDIA                          Female_6-24 months   Control              NA                0.4901961    0.4416597   0.5387324
6-24 months   ki1000304-ZnMort            INDIA                          Female_6-24 months   Zinc                 NA                0.5107399    0.4628467   0.5586330
6-24 months   ki1000304-ZnMort            INDIA                          Male_6-24 months     Control              NA                0.5581395    0.5152700   0.6010090
6-24 months   ki1000304-ZnMort            INDIA                          Male_6-24 months     Zinc                 NA                0.5214844    0.4781938   0.5647749
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Female_6-24 months   Control              NA                0.4305556    0.3059506   0.5551605
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Female_6-24 months   Other                NA                0.4465409    0.3729503   0.5201315
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Male_6-24 months     Control              NA                0.4701987    0.3768237   0.5635737
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Male_6-24 months     Other                NA                0.4046243    0.2972334   0.5120152
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Female_6-24 months   Control              NA                0.7027027    0.5548711   0.8505343
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Female_6-24 months   Other                NA                0.6041667    0.5059725   0.7023609
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Male_6-24 months     Control              NA                0.7083333    0.5256547   0.8910120
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Male_6-24 months     Other                NA                0.5697674    0.4646482   0.6748867
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Female_6-24 months   Control              NA                0.0769231   -0.0069713   0.1608175
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Female_6-24 months   Other                NA                0.0500000    0.0108822   0.0891178
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Male_6-24 months     Control              NA                0.1923077    0.0848945   0.2997209
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Male_6-24 months     Other                NA                0.1374046    0.0782884   0.1965208
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6-24 months   Control              NA                0.1466667    0.1004159   0.1929174
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6-24 months   Other                NA                0.1357466    0.0905637   0.1809295
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6-24 months   Zinc                 NA                0.1723404    0.1381774   0.2065034
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6-24 months     Control              NA                0.2183406    0.1648040   0.2718772
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6-24 months     Other                NA                0.1973684    0.1456766   0.2490602
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6-24 months     Zinc                 NA                0.2101617    0.1717649   0.2485584
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6-24 months   Control              NA                0.2250000    0.1926436   0.2573564
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6-24 months   Zinc                 NA                0.3129021    0.2961762   0.3296281
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6-24 months     Control              NA                0.3566434    0.3173830   0.3959037
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6-24 months     Zinc                 NA                0.3877005    0.3702400   0.4051611
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Female_6-24 months   Control              NA                0.2040816    0.0906494   0.3175139
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Female_6-24 months   Other                NA                0.3750000    0.2373319   0.5126681
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Male_6-24 months     Control              NA                0.2888889    0.1556761   0.4221016
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Male_6-24 months     Other                NA                0.3250000    0.1789904   0.4710096
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Female_6-24 months   Control              NA                0.3375000    0.2609498   0.4140502
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Female_6-24 months   LNS                  NA                0.2612245    0.2224237   0.3000252
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Male_6-24 months     Control              NA                0.4130982    0.3524776   0.4737188
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Male_6-24 months     LNS                  NA                0.3909895    0.3211405   0.4608386
6-24 months   ki1119695-PROBIT            BELARUS                        Female_6-24 months   Control              NA                0.0287447    0.0127355   0.0447540
6-24 months   ki1119695-PROBIT            BELARUS                        Female_6-24 months   Maternal             NA                0.0153404    0.0103934   0.0202873
6-24 months   ki1119695-PROBIT            BELARUS                        Male_6-24 months     Control              NA                0.1168875    0.0901708   0.1436043
6-24 months   ki1119695-PROBIT            BELARUS                        Male_6-24 months     Maternal             NA                0.0993939    0.0788276   0.1199603
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_6-24 months   Control              NA                0.1844106    0.1609727   0.2078486
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_6-24 months   VitA                 NA                0.1811891    0.1677981   0.1945800
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_6-24 months     Control              NA                0.2408622    0.2152019   0.2665226
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_6-24 months     VitA                 NA                0.2569132    0.2415552   0.2722711
6-24 months   ki1135781-COHORTS           GUATEMALA                      Female_6-24 months   Control              NA                0.6571429    0.5661570   0.7481287
6-24 months   ki1135781-COHORTS           GUATEMALA                      Female_6-24 months   Other                NA                0.5546875    0.4684028   0.6409722
6-24 months   ki1135781-COHORTS           GUATEMALA                      Male_6-24 months     Control              NA                0.7438017    0.6658636   0.8217397
6-24 months   ki1135781-COHORTS           GUATEMALA                      Male_6-24 months     Other                NA                0.5669291    0.4805781   0.6532802
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_6-24 months   Control              NA                0.3700787    0.2860519   0.4541056
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_6-24 months   LNS                  NA                0.3726708    0.3353030   0.4100386
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_6-24 months     Control              NA                0.4369748    0.3477929   0.5261567
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_6-24 months     LNS                  NA                0.4570447    0.4165444   0.4975449
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6-24 months   Control              NA                0.2461538    0.1720141   0.3202936
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6-24 months   Maternal             NA                0.2500000    0.1992191   0.3007809
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6-24 months     Control              NA                0.2857143    0.2064961   0.3649325
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6-24 months     Maternal             NA                0.3777778    0.3142418   0.4413138
6-24 months   ki1148112-LCNI-5            MALAWI                         Female_6-24 months   Control              NA                0.4222222    0.3200477   0.5243967
6-24 months   ki1148112-LCNI-5            MALAWI                         Female_6-24 months   LNS                  NA                0.4507772    0.3804879   0.5210665
6-24 months   ki1148112-LCNI-5            MALAWI                         Female_6-24 months   Other                NA                0.5000000    0.4028411   0.5971589
6-24 months   ki1148112-LCNI-5            MALAWI                         Male_6-24 months     Control              NA                0.5617978    0.4585666   0.6650289
6-24 months   ki1148112-LCNI-5            MALAWI                         Male_6-24 months     LNS                  NA                0.6201117    0.5489060   0.6913174
6-24 months   ki1148112-LCNI-5            MALAWI                         Male_6-24 months     Other                NA                0.6103896    0.5013079   0.7194713
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_6-24 months   Control              NA                0.1507706    0.1299092   0.1716320
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_6-24 months   Maternal             NA                0.1554585    0.1368789   0.1740381
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_6-24 months     Control              NA                0.1935328    0.1719060   0.2151596
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_6-24 months     Maternal             NA                0.1943355    0.1779541   0.2107169
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_6-24 months   Control              NA                0.2863388    0.2391269   0.3335507
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_6-24 months   LNS                  NA                0.2388060    0.1843675   0.2932444
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_6-24 months   Other                NA                0.2549277    0.2180486   0.2918069
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_6-24 months     Control              NA                0.2949640    0.2405781   0.3493499
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_6-24 months     LNS                  NA                0.2652124    0.2221877   0.3082371
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_6-24 months     Other                NA                0.2954856    0.2553017   0.3356696


### Parameter: E(Y)


agecat        studyid                     country                        intXsex              intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------------  -----------------------------  -------------------  -------------------  ---------------  ----------  ----------  ----------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Female_0-6 months    NA                   NA                0.1724138   0.0324996   0.3123280
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Male_0-6 months      NA                   NA                0.3571429   0.0966747   0.6176110
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_0-6 months    NA                   NA                0.0852713   0.0368885   0.1336541
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_0-6 months      NA                   NA                0.1165049   0.0542430   0.1787667
0-6 months    ki1000111-WASH-Kenya        KENYA                          Male_0-6 months      NA                   NA                0.1363636   0.0337917   0.2389356
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_0-6 months    NA                   NA                0.2480000   0.1719898   0.3240102
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_0-6 months      NA                   NA                0.2754491   0.2074898   0.3434084
0-6 months    ki1000304-VITAMIN-A         INDIA                          Female_0-6 months    NA                   NA                0.3116883   0.2382952   0.3850814
0-6 months    ki1000304-VITAMIN-A         INDIA                          Male_0-6 months      NA                   NA                0.3277778   0.2590127   0.3965428
0-6 months    ki1000304-ZnMort            INDIA                          Female_0-6 months    NA                   NA                0.3068182   0.2099118   0.4037246
0-6 months    ki1000304-ZnMort            INDIA                          Male_0-6 months      NA                   NA                0.4838710   0.3817540   0.5859880
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_0-6 months    NA                   NA                0.2812500   0.2299211   0.3325789
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_0-6 months      NA                   NA                0.2818627   0.2313276   0.3323979
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_0-6 months    NA                   NA                0.3603604   0.2970626   0.4236581
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_0-6 months      NA                   NA                0.4072165   0.3379010   0.4765320
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Female_0-6 months    NA                   NA                0.1151316   0.0791928   0.1510704
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Male_0-6 months      NA                   NA                0.1607143   0.1213857   0.2000428
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_0-6 months    NA                   NA                0.0542495   0.0408943   0.0676048
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_0-6 months      NA                   NA                0.0877660   0.0712463   0.1042857
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_0-6 months    NA                   NA                0.1953125   0.1263640   0.2642610
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_0-6 months      NA                   NA                0.2654867   0.1837042   0.3472692
0-6 months    ki1119695-PROBIT            BELARUS                        Female_0-6 months    NA                   NA                0.0133636   0.0091047   0.0176224
0-6 months    ki1119695-PROBIT            BELARUS                        Male_0-6 months      NA                   NA                0.1204511   0.0994209   0.1414812
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_0-6 months    NA                   NA                0.1502358   0.1397402   0.1607314
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_0-6 months      NA                   NA                0.1991826   0.1877009   0.2106644
0-6 months    ki1135781-COHORTS           GUATEMALA                      Female_0-6 months    NA                   NA                0.3133333   0.2388548   0.3878119
0-6 months    ki1135781-COHORTS           GUATEMALA                      Male_0-6 months      NA                   NA                0.3108108   0.2359927   0.3856289
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_0-6 months    NA                   NA                0.2341880   0.1998413   0.2685347
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_0-6 months      NA                   NA                0.3447712   0.3070844   0.3824581
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_0-6 months    NA                   NA                0.1794872   0.0574715   0.3015029
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_0-6 months      NA                   NA                0.2903226   0.1278955   0.4527496
0-6 months    ki1148112-LCNI-5            MALAWI                         Female_0-6 months    NA                   NA                0.2480620   0.1732426   0.3228814
0-6 months    ki1148112-LCNI-5            MALAWI                         Male_0-6 months      NA                   NA                0.4545455   0.3726477   0.5364432
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_0-6 months    NA                   NA                0.2313877   0.2218044   0.2409710
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_0-6 months      NA                   NA                0.2800041   0.2693469   0.2906613
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_0-6 months    NA                   NA                0.2249568   0.2050797   0.2448340
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_0-6 months      NA                   NA                0.2797513   0.2584842   0.3010185
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Female_6-24 months   NA                   NA                0.2298851   0.1787411   0.2810290
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Male_6-24 months     NA                   NA                0.3433476   0.2820532   0.4046421
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Female_6-24 months   NA                   NA                0.2612245   0.2207687   0.3016803
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Male_6-24 months     NA                   NA                0.3909895   0.3187412   0.4632379
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_6-24 months   NA                   NA                0.2565217   0.1999595   0.3130840
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_6-24 months     NA                   NA                0.3269962   0.2701924   0.3838000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6-24 months   NA                   NA                0.3632959   0.3440623   0.3825295
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6-24 months     NA                   NA                0.3987395   0.3790639   0.4184150
6-24 months   ki1000111-WASH-Kenya        KENYA                          Female_6-24 months   NA                   NA                0.2086122   0.1950263   0.2221980
6-24 months   ki1000111-WASH-Kenya        KENYA                          Male_6-24 months     NA                   NA                0.3049890   0.2890022   0.3209759
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Female_6-24 months   NA                   NA                0.5600000   0.5218103   0.5981897
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Male_6-24 months     NA                   NA                0.5550907   0.5186900   0.5914913
6-24 months   ki1000304-EU                INDIA                          Female_6-24 months   NA                   NA                0.4492147   0.4176507   0.4807787
6-24 months   ki1000304-EU                INDIA                          Male_6-24 months     NA                   NA                0.4814815   0.4512881   0.5116749
6-24 months   ki1000304-VITAMIN-A         INDIA                          Female_6-24 months   NA                   NA                0.3166421   0.2918926   0.3413916
6-24 months   ki1000304-VITAMIN-A         INDIA                          Male_6-24 months     NA                   NA                0.3815514   0.3563741   0.4067286
6-24 months   ki1000304-Vitamin-B12       INDIA                          Female_6-24 months   NA                   NA                0.4234694   0.3744935   0.4724452
6-24 months   ki1000304-Vitamin-B12       INDIA                          Male_6-24 months     NA                   NA                0.5194175   0.4711150   0.5677200
6-24 months   ki1000304-ZnMort            INDIA                          Female_6-24 months   NA                   NA                0.5006046   0.4665067   0.5347025
6-24 months   ki1000304-ZnMort            INDIA                          Male_6-24 months     NA                   NA                0.5398833   0.5094010   0.5703655
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Female_6-24 months   NA                   NA                0.4389439   0.3682232   0.5096646
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Male_6-24 months     NA                   NA                0.4351852   0.3594850   0.5108854
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Female_6-24 months   NA                   NA                0.6315789   0.5492889   0.7138690
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Male_6-24 months     NA                   NA                0.6000000   0.5080312   0.6919688
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Female_6-24 months   NA                   NA                0.0566038   0.0205717   0.0926359
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Male_6-24 months     NA                   NA                0.1530055   0.1007049   0.2053060
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6-24 months   NA                   NA                0.1572052   0.1336205   0.1807900
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6-24 months     NA                   NA                0.2089888   0.1822618   0.2357158
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6-24 months   NA                   NA                0.2972446   0.2822982   0.3121911
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6-24 months     NA                   NA                0.3827160   0.3667565   0.3986756
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Female_6-24 months   NA                   NA                0.2886598   0.1980147   0.3793049
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Male_6-24 months     NA                   NA                0.3058824   0.2073447   0.4044200
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Female_6-24 months   NA                   NA                0.2800000   0.2443139   0.3156861
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Male_6-24 months     NA                   NA                0.3963415   0.3415080   0.4511749
6-24 months   ki1119695-PROBIT            BELARUS                        Female_6-24 months   NA                   NA                0.0217228   0.0131009   0.0303446
6-24 months   ki1119695-PROBIT            BELARUS                        Male_6-24 months     NA                   NA                0.1076406   0.0902131   0.1250680
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_6-24 months   NA                   NA                0.1819901   0.1703627   0.1936174
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_6-24 months     NA                   NA                0.2528130   0.2396310   0.2659951
6-24 months   ki1135781-COHORTS           GUATEMALA                      Female_6-24 months   NA                   NA                0.6008584   0.5378420   0.6638748
6-24 months   ki1135781-COHORTS           GUATEMALA                      Male_6-24 months     NA                   NA                0.6532258   0.5938712   0.7125804
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_6-24 months   NA                   NA                0.3722438   0.3381000   0.4063876
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_6-24 months     NA                   NA                0.4536377   0.4167574   0.4905179
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6-24 months   NA                   NA                0.2487805   0.2068840   0.2906770
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6-24 months     NA                   NA                0.3447293   0.2948320   0.3946267
6-24 months   ki1148112-LCNI-5            MALAWI                         Female_6-24 months   NA                   NA                0.4571429   0.4073174   0.5069683
6-24 months   ki1148112-LCNI-5            MALAWI                         Male_6-24 months     NA                   NA                0.6028986   0.5511925   0.6546046
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_6-24 months   NA                   NA                0.1531412   0.1391942   0.1670882
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_6-24 months     NA                   NA                0.1939547   0.1805602   0.2073491
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_6-24 months   NA                   NA                0.2593712   0.2336448   0.2850976
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_6-24 months     NA                   NA                0.2870224   0.2607375   0.3133073


### Parameter: RR


agecat        studyid                     country                        intXsex              intervention_level   baseline_level     estimate    ci_lower     ci_upper
------------  --------------------------  -----------------------------  -------------------  -------------------  ---------------  ----------  ----------  -----------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Female_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Female_0-6 months    LNS                  Control           1.8461538   0.3504737    9.7247932
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Male_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Male_0-6 months      LNS                  Control           0.6666667   0.1479894    3.0032187
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_0-6 months    LNS                  Control           0.4500000   0.1093925    1.8511326
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_0-6 months    Other                Control           0.3692308   0.0996729    1.3677872
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_0-6 months      LNS                  Control           1.3103448   0.2636132    6.5133438
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_0-6 months      Other                Control           1.0363636   0.2265915    4.7400256
0-6 months    ki1000111-WASH-Kenya        KENYA                          Male_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000111-WASH-Kenya        KENYA                          Male_0-6 months      LNS                  Control           0.0000000   0.0000000    0.0000003
0-6 months    ki1000111-WASH-Kenya        KENYA                          Male_0-6 months      Other                Control           3.0000000   0.3871155   23.2488765
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_0-6 months    Maternal             Control           0.5680869   0.2911600    1.1084034
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_0-6 months      Maternal             Control           1.0509868   0.6362822    1.7359803
0-6 months    ki1000304-VITAMIN-A         INDIA                          Female_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304-VITAMIN-A         INDIA                          Female_0-6 months    VitA                 Control           1.2596923   0.7881965    2.0132348
0-6 months    ki1000304-VITAMIN-A         INDIA                          Male_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304-VITAMIN-A         INDIA                          Male_0-6 months      VitA                 Control           0.9263848   0.6089353    1.4093267
0-6 months    ki1000304-ZnMort            INDIA                          Female_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304-ZnMort            INDIA                          Female_0-6 months    Zinc                 Control           0.7812971   0.4166642    1.4650291
0-6 months    ki1000304-ZnMort            INDIA                          Male_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304-ZnMort            INDIA                          Male_0-6 months      Zinc                 Control           1.3259424   0.8716678    2.0169647
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_0-6 months    Other                Control           1.1722488   0.7736479    1.7762179
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_0-6 months      Other                Control           0.8735632   0.6154550    1.2399163
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_0-6 months    Other                Control           1.0169442   0.6816095    1.5172550
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_0-6 months      Other                Control           0.8584299   0.5901536    1.2486611
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Female_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Female_0-6 months    Other                Control           1.2188841   0.5555365    2.6743131
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Male_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Male_0-6 months      Other                Control           0.8579448   0.5081967    1.4483945
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_0-6 months    Other                Control           0.7443197   0.3481666    1.5912260
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_0-6 months    Zinc                 Control           1.0814554   0.5992984    1.9515251
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_0-6 months      Other                Control           0.9930556   0.5845750    1.6869679
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_0-6 months      Zinc                 Control           1.0118412   0.6385661    1.6033148
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_0-6 months    Other                Control           0.5803571   0.2762340    1.2193084
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_0-6 months      Other                Control           1.0837438   0.5842278    2.0103472
0-6 months    ki1119695-PROBIT            BELARUS                        Female_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1119695-PROBIT            BELARUS                        Female_0-6 months    Maternal             Control           0.7512508   0.4092821    1.3789457
0-6 months    ki1119695-PROBIT            BELARUS                        Male_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1119695-PROBIT            BELARUS                        Male_0-6 months      Maternal             Control           0.9282032   0.6587064    1.3079593
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_0-6 months    VitA                 Control           1.0464130   0.8883534    1.2325952
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_0-6 months      VitA                 Control           1.0438740   0.9126350    1.1939854
0-6 months    ki1135781-COHORTS           GUATEMALA                      Female_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS           GUATEMALA                      Female_0-6 months    Other                Control           0.8612869   0.5354917    1.3852973
0-6 months    ki1135781-COHORTS           GUATEMALA                      Male_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS           GUATEMALA                      Male_0-6 months      Other                Control           0.8226496   0.5081358    1.3318335
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_0-6 months    LNS                  Control           0.9808383   0.6480187    1.4845927
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_0-6 months      LNS                  Control           0.8751969   0.6666019    1.1490659
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_0-6 months    Maternal             Control           1.7391304   0.3764533    8.0343950
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_0-6 months      Maternal             Control           0.5833333   0.1905097    1.7861437
0-6 months    ki1148112-LCNI-5            MALAWI                         Female_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-LCNI-5            MALAWI                         Female_0-6 months    LNS                  Control           1.2794118   0.5643558    2.9004653
0-6 months    ki1148112-LCNI-5            MALAWI                         Female_0-6 months    Other                Control           1.2083333   0.4742550    3.0786588
0-6 months    ki1148112-LCNI-5            MALAWI                         Male_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-LCNI-5            MALAWI                         Male_0-6 months      LNS                  Control           0.7805782   0.5029464    1.2114658
0-6 months    ki1148112-LCNI-5            MALAWI                         Male_0-6 months      Other                Control           1.1818182   0.7635759    1.8291492
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_0-6 months    Maternal             Control           0.8406241   0.7746827    0.9121786
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_0-6 months      Maternal             Control           0.8542401   0.7923993    0.9209072
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_0-6 months    LNS                  Control           1.0106942   0.7885070    1.2954899
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_0-6 months    Other                Control           1.0467729   0.8436211    1.2988454
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_0-6 months      Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_0-6 months      LNS                  Control           1.1332733   0.9033060    1.4217867
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_0-6 months      Other                Control           1.2001631   0.9688445    1.4867107
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Female_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Female_6-24 months   LNS                  Control           0.8683206   0.5557516    1.3566864
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Male_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Male_6-24 months     LNS                  Control           1.4392523   1.0050511    2.0610367
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Female_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Female_6-24 months   Zinc                 Control           1.1374191   0.8736897    1.4807570
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Male_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Male_6-24 months     Zinc                 Control           0.9372986   0.6356118    1.3821780
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_6-24 months   VitA                 Control           1.3651179   0.8783728    2.1215899
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_6-24 months     VitA                 Control           1.1883943   0.8309821    1.6995324
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6-24 months   LNS                  Control           0.8060556   0.6897307    0.9419992
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6-24 months   Other                Control           0.9820216   0.8667202    1.1126617
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6-24 months     LNS                  Control           0.8736063   0.7529094    1.0136518
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6-24 months     Other                Control           1.0534529   0.9346540    1.1873516
6-24 months   ki1000111-WASH-Kenya        KENYA                          Female_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000111-WASH-Kenya        KENYA                          Female_6-24 months   LNS                  Control           0.8303463   0.6829514    1.0095520
6-24 months   ki1000111-WASH-Kenya        KENYA                          Female_6-24 months   Other                Control           1.1235504   0.9720751    1.2986295
6-24 months   ki1000111-WASH-Kenya        KENYA                          Male_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000111-WASH-Kenya        KENYA                          Male_6-24 months     LNS                  Control           0.8743668   0.7526541    1.0157618
6-24 months   ki1000111-WASH-Kenya        KENYA                          Male_6-24 months     Other                Control           1.0527727   0.9357646    1.1844116
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Female_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Female_6-24 months   Maternal             Control           0.9450317   0.8246513    1.0829849
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Male_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Male_6-24 months     Maternal             Control           0.8718891   0.7640816    0.9949077
6-24 months   ki1000304-EU                INDIA                          Female_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-EU                INDIA                          Female_6-24 months   Zinc                 Control           0.8673216   0.7535976    0.9982074
6-24 months   ki1000304-EU                INDIA                          Male_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-EU                INDIA                          Male_6-24 months     Zinc                 Control           0.9650183   0.8506592    1.0947513
6-24 months   ki1000304-VITAMIN-A         INDIA                          Female_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-VITAMIN-A         INDIA                          Female_6-24 months   VitA                 Control           1.0178306   0.8705340    1.1900502
6-24 months   ki1000304-VITAMIN-A         INDIA                          Male_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-VITAMIN-A         INDIA                          Male_6-24 months     VitA                 Control           0.9059245   0.7937851    1.0339059
6-24 months   ki1000304-Vitamin-B12       INDIA                          Female_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-Vitamin-B12       INDIA                          Female_6-24 months   Other                Control           0.9053968   0.6974960    1.1752661
6-24 months   ki1000304-Vitamin-B12       INDIA                          Male_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-Vitamin-B12       INDIA                          Male_6-24 months     Other                Control           0.9541337   0.7751242    1.1744841
6-24 months   ki1000304-ZnMort            INDIA                          Female_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-ZnMort            INDIA                          Female_6-24 months   Zinc                 Control           1.0419093   0.9090856    1.1941395
6-24 months   ki1000304-ZnMort            INDIA                          Male_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304-ZnMort            INDIA                          Male_6-24 months     Zinc                 Control           0.9343262   0.8344136    1.0462022
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Female_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Female_6-24 months   Other                Control           1.0371272   0.7434285    1.4468545
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Male_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Male_6-24 months     Other                Control           0.8605390   0.6176817    1.1988818
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Female_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Female_6-24 months   Other                Control           0.8597756   0.6590680    1.1216053
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Male_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Male_6-24 months     Other                Control           0.8043776   0.5857961    1.1045195
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Female_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Female_6-24 months   Other                Control           0.6500000   0.1698226    2.4878900
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Male_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Male_6-24 months     Other                Control           0.7145038   0.3530291    1.4461008
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6-24 months   Other                Control           0.9255450   0.5851532    1.4639477
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6-24 months   Zinc                 Control           1.1750484   0.8096392    1.7053752
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6-24 months     Other                Control           0.9039474   0.6314387    1.2940621
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6-24 months     Zinc                 Control           0.9625404   0.7089578    1.3068253
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6-24 months   Zinc                 Control           1.3906761   1.1928797    1.6212701
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6-24 months     Zinc                 Control           1.0870819   0.9651786    1.2243818
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Female_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Female_6-24 months   Other                Control           1.8375000   0.9439261    3.5769817
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Male_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Male_6-24 months     Other                Control           1.1250000   0.5909591    2.1416457
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Female_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Female_6-24 months   LNS                  Control           0.7739985   0.5902455    1.0149568
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Male_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Male_6-24 months     LNS                  Control           0.9464808   0.7511831    1.1925533
6-24 months   ki1119695-PROBIT            BELARUS                        Female_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1119695-PROBIT            BELARUS                        Female_6-24 months   Maternal             Control           0.5336758   0.2808650    1.0140452
6-24 months   ki1119695-PROBIT            BELARUS                        Male_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1119695-PROBIT            BELARUS                        Male_6-24 months     Maternal             Control           0.8503383   0.6251690    1.1566076
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_6-24 months   VitA                 Control           0.9825303   0.8481932    1.1381438
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_6-24 months     VitA                 Control           1.0666396   0.9439824    1.2052343
6-24 months   ki1135781-COHORTS           GUATEMALA                      Female_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS           GUATEMALA                      Female_6-24 months   Other                Control           0.8440897   0.6854047    1.0395135
6-24 months   ki1135781-COHORTS           GUATEMALA                      Male_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS           GUATEMALA                      Male_6-24 months     Other                Control           0.7622047   0.6335504    0.9169847
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_6-24 months   LNS                  Control           1.0070041   0.7856634    1.2907018
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_6-24 months     LNS                  Control           1.0459292   0.8372847    1.3065660
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6-24 months   Maternal             Control           1.0156250   0.7062534    1.4605157
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6-24 months     Maternal             Control           1.3222222   0.9560248    1.8286885
6-24 months   ki1148112-LCNI-5            MALAWI                         Female_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-LCNI-5            MALAWI                         Female_6-24 months   LNS                  Control           1.0676302   0.8005652    1.4237869
6-24 months   ki1148112-LCNI-5            MALAWI                         Female_6-24 months   Other                Control           1.1842105   0.8682481    1.6151542
6-24 months   ki1148112-LCNI-5            MALAWI                         Male_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-LCNI-5            MALAWI                         Male_6-24 months     LNS                  Control           1.1037989   0.8887659    1.3708582
6-24 months   ki1148112-LCNI-5            MALAWI                         Male_6-24 months     Other                Control           1.0864935   0.8408290    1.4039337
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_6-24 months   Maternal             Control           1.0310930   0.8588281    1.2379110
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_6-24 months     Maternal             Control           1.0041476   0.8729932    1.1550060
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_6-24 months   LNS                  Control           0.8339979   0.6295432    1.1048529
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_6-24 months   Other                Control           0.8903010   0.7149732    1.1086233
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_6-24 months     Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_6-24 months     LNS                  Control           0.8991347   0.7033238    1.1494609
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_6-24 months     Other                Control           1.0017684   0.7966437    1.2597098


### Parameter: PAR


agecat        studyid                     country                        intXsex              intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------------  -----------------------------  -------------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Female_0-6 months    Control              NA                 0.0474138   -0.0820559    0.1768835
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Male_0-6 months      Control              NA                -0.0714286   -0.3318967    0.1890396
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_0-6 months    Control              NA                -0.0813953   -0.2094919    0.0467012
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_0-6 months      Control              NA                 0.0112417   -0.1152937    0.1377770
0-6 months    ki1000111-WASH-Kenya        KENYA                          Male_0-6 months      Control              NA                 0.0530303   -0.0949387    0.2009993
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_0-6 months    Control              NA                -0.0608235   -0.1294374    0.0077904
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_0-6 months      Control              NA                 0.0078435   -0.0709949    0.0866819
0-6 months    ki1000304-VITAMIN-A         INDIA                          Female_0-6 months    Control              NA                 0.0307894   -0.0326056    0.0941844
0-6 months    ki1000304-VITAMIN-A         INDIA                          Male_0-6 months      Control              NA                -0.0136856   -0.0889867    0.0616154
0-6 months    ki1000304-ZnMort            INDIA                          Female_0-6 months    Control              NA                -0.0445332   -0.1594178    0.0703515
0-6 months    ki1000304-ZnMort            INDIA                          Male_0-6 months      Control              NA                 0.0607940   -0.0301562    0.1517443
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_0-6 months    Control              NA                 0.0241071   -0.0369529    0.0851671
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_0-6 months      Control              NA                -0.0202206   -0.0777082    0.0372670
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_0-6 months    Control              NA                 0.0044282   -0.1005985    0.1094548
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_0-6 months      Control              NA                -0.0493052   -0.1748238    0.0762133
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Female_0-6 months    Control              NA                 0.0165400   -0.0456083    0.0786884
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Male_0-6 months      Control              NA                -0.0182331   -0.0825448    0.0460787
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_0-6 months    Control              NA                -0.0011010   -0.0246947    0.0224927
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_0-6 months      Control              NA                 0.0003534   -0.0279575    0.0286642
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_0-6 months    Control              NA                -0.0508413   -0.1185259    0.0168432
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_0-6 months      Control              NA                 0.0109413   -0.0729835    0.0948661
0-6 months    ki1119695-PROBIT            BELARUS                        Female_0-6 months    Control              NA                -0.0019754   -0.0063418    0.0023910
0-6 months    ki1119695-PROBIT            BELARUS                        Male_0-6 months      Control              NA                -0.0046486   -0.0261595    0.0168624
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_0-6 months    Control              NA                 0.0050600   -0.0129944    0.0231143
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_0-6 months      Control              NA                 0.0063194   -0.0132431    0.0258819
0-6 months    ki1135781-COHORTS           GUATEMALA                      Female_0-6 months    Control              NA                -0.0246948   -0.1034164    0.0540267
0-6 months    ki1135781-COHORTS           GUATEMALA                      Male_0-6 months      Control              NA                -0.0320463   -0.1112337    0.0471410
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_0-6 months    Control              NA                -0.0039072   -0.0881887    0.0803743
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_0-6 months      Control              NA                -0.0398441   -0.1247025    0.0450142
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_0-6 months    Control              NA                 0.0544872   -0.0859592    0.1949336
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_0-6 months      Control              NA                -0.1382488   -0.4584671    0.1819694
0-6 months    ki1148112-LCNI-5            MALAWI                         Female_0-6 months    Control              NA                 0.0411655   -0.0917054    0.1740364
0-6 months    ki1148112-LCNI-5            MALAWI                         Male_0-6 months      Control              NA                -0.0326340   -0.1666927    0.1014246
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_0-6 months    Control              NA                -0.0201332   -0.0298226   -0.0104438
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_0-6 months      Control              NA                -0.0222926   -0.0331194   -0.0114658
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_0-6 months    Control              NA                 0.0054446   -0.0275627    0.0384519
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_0-6 months      Control              NA                 0.0324015   -0.0065020    0.0713050
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Female_6-24 months   Control              NA                -0.0162688   -0.0676185    0.0350810
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Male_6-24 months     Control              NA                 0.0576334    0.0006857    0.1145810
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Female_6-24 months   Control              NA                 0.0245578   -0.0237737    0.0728893
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Male_6-24 months     Control              NA                -0.0192669   -0.1347556    0.0962219
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_6-24 months   Control              NA                 0.0360493   -0.0154722    0.0875708
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_6-24 months     Control              NA                 0.0313440   -0.0327093    0.0953973
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6-24 months   Control              NA                -0.0224909   -0.0564446    0.0114628
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6-24 months     Control              NA                -0.0016071   -0.0364036    0.0331894
6-24 months   ki1000111-WASH-Kenya        KENYA                          Female_6-24 months   Control              NA                 0.0037627   -0.0147762    0.0223015
6-24 months   ki1000111-WASH-Kenya        KENYA                          Male_6-24 months     Control              NA                -0.0017765   -0.0241396    0.0205866
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Female_6-24 months   Control              NA                -0.0171812   -0.0586566    0.0242942
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Male_6-24 months     Control              NA                -0.0377071   -0.0738606   -0.0015537
6-24 months   ki1000304-EU                INDIA                          Female_6-24 months   Control              NA                -0.0333181   -0.0662104   -0.0004258
6-24 months   ki1000304-EU                INDIA                          Male_6-24 months     Control              NA                -0.0079178   -0.0359228    0.0200872
6-24 months   ki1000304-VITAMIN-A         INDIA                          Female_6-24 months   Control              NA                 0.0027735   -0.0217593    0.0273063
6-24 months   ki1000304-VITAMIN-A         INDIA                          Male_6-24 months     Control              NA                -0.0190128   -0.0444239    0.0063982
6-24 months   ki1000304-Vitamin-B12       INDIA                          Female_6-24 months   Control              NA                -0.0330524   -0.1219891    0.0558843
6-24 months   ki1000304-Vitamin-B12       INDIA                          Male_6-24 months     Control              NA                -0.0183184   -0.1002744    0.0636377
6-24 months   ki1000304-ZnMort            INDIA                          Female_6-24 months   Control              NA                 0.0104085   -0.0241458    0.0449628
6-24 months   ki1000304-ZnMort            INDIA                          Male_6-24 months     Control              NA                -0.0182563   -0.0486210    0.0121084
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Female_6-24 months   Control              NA                 0.0083883   -0.0678913    0.0846680
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Male_6-24 months     Control              NA                -0.0350135   -0.1157054    0.0456784
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Female_6-24 months   Control              NA                -0.0711238   -0.1994451    0.0571976
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Male_6-24 months     Control              NA                -0.1083333   -0.2734625    0.0567958
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Female_6-24 months   Control              NA                -0.0203193   -0.0902038    0.0495652
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Male_6-24 months     Control              NA                -0.0393022   -0.1271433    0.0485389
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6-24 months   Control              NA                 0.0105386   -0.0300138    0.0510909
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6-24 months     Control              NA                -0.0093518   -0.0552381    0.0365344
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6-24 months   Control              NA                 0.0722446    0.0422886    0.1022007
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6-24 months     Control              NA                 0.0260727   -0.0100011    0.0621465
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Female_6-24 months   Control              NA                 0.0845782   -0.0053323    0.1744886
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Male_6-24 months     Control              NA                 0.0169935   -0.0760969    0.1100838
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Female_6-24 months   Control              NA                -0.0575000   -0.1249049    0.0099049
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Male_6-24 months     Control              NA                -0.0167568   -0.0867735    0.0532599
6-24 months   ki1119695-PROBIT            BELARUS                        Female_6-24 months   Control              NA                -0.0070220   -0.0160207    0.0019767
6-24 months   ki1119695-PROBIT            BELARUS                        Male_6-24 months     Control              NA                -0.0092470   -0.0269072    0.0084133
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_6-24 months   Control              NA                -0.0024206   -0.0227025    0.0178614
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_6-24 months     Control              NA                 0.0119508   -0.0103162    0.0342178
6-24 months   ki1135781-COHORTS           GUATEMALA                      Female_6-24 months   Control              NA                -0.0562845   -0.1254817    0.0129127
6-24 months   ki1135781-COHORTS           GUATEMALA                      Male_6-24 months     Control              NA                -0.0905758   -0.1511558   -0.0299959
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_6-24 months   Control              NA                 0.0021651   -0.0746482    0.0789784
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_6-24 months     Control              NA                 0.0166629   -0.0646591    0.0979848
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6-24 months   Control              NA                 0.0026266   -0.0587436    0.0639969
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6-24 months     Control              NA                 0.0590151   -0.0062519    0.1242820
6-24 months   ki1148112-LCNI-5            MALAWI                         Female_6-24 months   Control              NA                 0.0349206   -0.0547529    0.1245941
6-24 months   ki1148112-LCNI-5            MALAWI                         Male_6-24 months     Control              NA                 0.0411008   -0.0473976    0.1295992
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_6-24 months   Control              NA                 0.0023706   -0.0117601    0.0165013
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_6-24 months     Control              NA                 0.0004218   -0.0138358    0.0146795
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_6-24 months   Control              NA                -0.0269676   -0.0676978    0.0137626
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_6-24 months     Control              NA                -0.0079416   -0.0536798    0.0377966


### Parameter: PAF


agecat        studyid                     country                        intXsex              intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------------  -----------------------------  -------------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Female_0-6 months    Control              NA                 0.2750000   -0.9773248    0.7341737
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Male_0-6 months      Control              NA                -0.2000000   -1.2124907    0.3491498
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Female_0-6 months    Control              NA                -0.9545455   -3.0808417    0.0638578
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Male_0-6 months      Control              NA                 0.0964912   -2.0029163    0.7281549
0-6 months    ki1000111-WASH-Kenya        KENYA                          Male_0-6 months      Control              NA                 0.3888889   -2.4222461    0.8908738
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female_0-6 months    Control              NA                -0.2452562   -0.5527843    0.0013661
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male_0-6 months      Control              NA                 0.0284752   -0.3043371    0.2763677
0-6 months    ki1000304-VITAMIN-A         INDIA                          Female_0-6 months    Control              NA                 0.0987828   -0.1290830    0.2806618
0-6 months    ki1000304-VITAMIN-A         INDIA                          Male_0-6 months      Control              NA                -0.0417528   -0.2987882    0.1644143
0-6 months    ki1000304-ZnMort            INDIA                          Female_0-6 months    Control              NA                -0.1451451   -0.5881097    0.1742652
0-6 months    ki1000304-ZnMort            INDIA                          Male_0-6 months      Control              NA                 0.1256410   -0.0855345    0.2957353
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Female_0-6 months    Control              NA                 0.0857143   -0.1751937    0.2886974
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Male_0-6 months      Control              NA                -0.0717391   -0.2877036    0.1080053
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female_0-6 months    Control              NA                 0.0122881   -0.3267224    0.2646730
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male_0-6 months      Control              NA                -0.1210787   -0.4763437    0.1486959
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Female_0-6 months    Control              NA                 0.1436620   -0.6057305    0.5433139
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Male_0-6 months      Control              NA                -0.1134503   -0.5941750    0.2223115
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_0-6 months    Control              NA                -0.0202952   -0.5625625    0.3337852
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_0-6 months      Control              NA                 0.0040263   -0.3769086    0.2795719
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Female_0-6 months    Control              NA                -0.2603077   -0.6529235    0.0390508
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Male_0-6 months      Control              NA                 0.0412121   -0.3331406    0.3104447
0-6 months    ki1119695-PROBIT            BELARUS                        Female_0-6 months    Control              NA                -0.1478184   -0.5049222    0.1245480
0-6 months    ki1119695-PROBIT            BELARUS                        Male_0-6 months      Control              NA                -0.0385929   -0.2320919    0.1245173
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female_0-6 months    Control              NA                 0.0336801   -0.0942685    0.1466682
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male_0-6 months      Control              NA                 0.0317267   -0.0716311    0.1251158
0-6 months    ki1135781-COHORTS           GUATEMALA                      Female_0-6 months    Control              NA                -0.0788133   -0.3617032    0.1453071
0-6 months    ki1135781-COHORTS           GUATEMALA                      Male_0-6 months      Control              NA                -0.1031056   -0.3896989    0.1243844
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Female_0-6 months    Control              NA                -0.0166840   -0.4484959    0.2864001
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Male_0-6 months      Control              NA                -0.1155669   -0.3910307    0.1053472
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female_0-6 months    Control              NA                 0.3035714   -1.0839705    0.7672651
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male_0-6 months      Control              NA                -0.4761905   -2.1303856    0.3038754
0-6 months    ki1148112-LCNI-5            MALAWI                         Female_0-6 months    Control              NA                 0.1659483   -0.5832621    0.5606272
0-6 months    ki1148112-LCNI-5            MALAWI                         Male_0-6 months      Control              NA                -0.0717949   -0.4115885    0.1862046
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Female_0-6 months    Control              NA                -0.0870106   -0.1294911   -0.0461277
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Male_0-6 months      Control              NA                -0.0796153   -0.1188631   -0.0417443
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Female_0-6 months    Control              NA                 0.0242030   -0.1341425    0.1604408
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Male_0-6 months      Control              NA                 0.1158225   -0.0361132    0.2454784
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Female_6-24 months   Control              NA                -0.0707692   -0.3189008    0.1306801
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Male_6-24 months     Control              NA                 0.1678571   -0.0153388    0.3179993
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Female_6-24 months   Control              NA                 0.0940104   -0.1131032    0.2625867
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Male_6-24 months     Control              NA                -0.0492772   -0.3970826    0.2119416
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female_6-24 months   Control              NA                 0.1405312   -0.0844920    0.3188639
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male_6-24 months     Control              NA                 0.0958544   -0.1227612    0.2719028
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female_6-24 months   Control              NA                -0.0619080   -0.1596176    0.0275685
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male_6-24 months     Control              NA                -0.0040305   -0.0952016    0.0795509
6-24 months   ki1000111-WASH-Kenya        KENYA                          Female_6-24 months   Control              NA                 0.0180366   -0.0749723    0.1029983
6-24 months   ki1000111-WASH-Kenya        KENYA                          Male_6-24 months     Control              NA                -0.0058248   -0.0818879    0.0648906
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Female_6-24 months   Control              NA                -0.0306807   -0.1075214    0.0408287
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Male_6-24 months     Control              NA                -0.0679297   -0.1353565   -0.0045072
6-24 months   ki1000304-EU                INDIA                          Female_6-24 months   Control              NA                -0.0741696   -0.1500939   -0.0032576
6-24 months   ki1000304-EU                INDIA                          Male_6-24 months     Control              NA                -0.0164447   -0.0763139    0.0400944
6-24 months   ki1000304-VITAMIN-A         INDIA                          Female_6-24 months   Control              NA                 0.0087591   -0.0718270    0.0832863
6-24 months   ki1000304-VITAMIN-A         INDIA                          Male_6-24 months     Control              NA                -0.0498303   -0.1186130    0.0147230
6-24 months   ki1000304-Vitamin-B12       INDIA                          Female_6-24 months   Control              NA                -0.0780513   -0.3100612    0.1128699
6-24 months   ki1000304-Vitamin-B12       INDIA                          Male_6-24 months     Control              NA                -0.0352671   -0.2057597    0.1111180
6-24 months   ki1000304-ZnMort            INDIA                          Female_6-24 months   Control              NA                 0.0207919   -0.0507393    0.0874535
6-24 months   ki1000304-ZnMort            INDIA                          Male_6-24 months     Control              NA                -0.0338152   -0.0916651    0.0209691
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Female_6-24 months   Control              NA                 0.0191103   -0.1726451    0.1795091
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Male_6-24 months     Control              NA                -0.0804565   -0.2881012    0.0937154
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Female_6-24 months   Control              NA                -0.1126126   -0.3373064    0.0743282
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Male_6-24 months     Control              NA                -0.1805556   -0.4949393    0.0677137
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Female_6-24 months   Control              NA                -0.3589744   -2.3271330    0.4449241
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Male_6-24 months     Control              NA                -0.2568681   -0.9787612    0.2016634
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female_6-24 months   Control              NA                 0.0670370   -0.2299412    0.2923077
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male_6-24 months     Control              NA                -0.0447481   -0.2890466    0.1532513
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female_6-24 months   Control              NA                 0.2430478    0.1355567    0.3371726
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male_6-24 months     Control              NA                 0.0681254   -0.0310712    0.1577786
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Female_6-24 months   Control              NA                 0.2930029   -0.0893295    0.5411445
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Male_6-24 months     Control              NA                 0.0555556   -0.3034100    0.3156602
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Female_6-24 months   Control              NA                -0.2053571   -0.4732605    0.0138296
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Male_6-24 months     Control              NA                -0.0422786   -0.2386957    0.1229931
6-24 months   ki1119695-PROBIT            BELARUS                        Female_6-24 months   Control              NA                -0.3232543   -0.7171497   -0.0197143
6-24 months   ki1119695-PROBIT            BELARUS                        Male_6-24 months     Control              NA                -0.0859060   -0.2611128    0.0649592
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female_6-24 months   Control              NA                -0.0133006   -0.1311036    0.0922334
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male_6-24 months     Control              NA                 0.0472713   -0.0449919    0.1313885
6-24 months   ki1135781-COHORTS           GUATEMALA                      Female_6-24 months   Control              NA                -0.0936735   -0.2161828    0.0164952
6-24 months   ki1135781-COHORTS           GUATEMALA                      Male_6-24 months     Control              NA                -0.1386593   -0.2382934   -0.0470418
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female_6-24 months   Control              NA                 0.0058163   -0.2235129    0.1921613
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male_6-24 months     Control              NA                 0.0367317   -0.1603184    0.2003179
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Female_6-24 months   Control              NA                 0.0105581   -0.2695980    0.2288934
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male_6-24 months     Control              NA                 0.1711924   -0.0412767    0.3403079
6-24 months   ki1148112-LCNI-5            MALAWI                         Female_6-24 months   Control              NA                 0.0763889   -0.1422805    0.2531979
6-24 months   ki1148112-LCNI-5            MALAWI                         Male_6-24 months     Control              NA                 0.0681720   -0.0910587    0.2041644
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female_6-24 months   Control              NA                 0.0154799   -0.0814277    0.1037035
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male_6-24 months     Control              NA                 0.0021749   -0.0741470    0.0730740
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female_6-24 months   Control              NA                -0.1039729   -0.2736342    0.0430878
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male_6-24 months     Control              NA                -0.0276690   -0.1998502    0.1198039
