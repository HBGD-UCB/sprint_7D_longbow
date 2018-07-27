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
      W: []
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

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

* sex
* agecat
* studyid
* country

## Data Summary

sex      agecat        studyid                     country                        tr          ever_stunted   n_cell       n
-------  ------------  --------------------------  -----------------------------  ---------  -------------  -------  ------
Female   0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control                0        2       4
Female   0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control                1        1       4
Female   0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA                   0        1       4
Female   0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA                   1        0       4
Male     0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control                0        3       6
Male     0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA                   0        3       6
Female   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0       20     129
Female   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1        4     129
Female   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0       37     129
Female   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1        3     129
Female   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0       61     129
Female   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1        4     129
Male     0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0       17     103
Male     0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1        2     103
Male     0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0       25     103
Male     0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1        4     103
Male     0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0       49     103
Male     0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1        6     103
Male     0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                0       11      44
Male     0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                1        1      44
Male     0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    0       12      44
Male     0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    1        0      44
Male     0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  0       15      44
Male     0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  1        5      44
Female   0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                0       14      48
Female   0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                1        1      48
Female   0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    0       11      48
Female   0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    1        0      48
Female   0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  0       22      48
Female   0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  1        0      48
Male     0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       52     167
Male     0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                1       19     167
Male     0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       69     167
Male     0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1       27     167
Female   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       47     125
Female   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                1       21     125
Female   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       47     125
Female   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1       10     125
Female   0-6 months    ki1000304-EU                INDIA                          Control                0        1       6
Female   0-6 months    ki1000304-EU                INDIA                          Control                1        2       6
Female   0-6 months    ki1000304-EU                INDIA                          Zinc                   0        1       6
Female   0-6 months    ki1000304-EU                INDIA                          Zinc                   1        2       6
Male     0-6 months    ki1000304-EU                INDIA                          Control                0        1       8
Male     0-6 months    ki1000304-EU                INDIA                          Control                1        2       8
Male     0-6 months    ki1000304-EU                INDIA                          Zinc                   0        4       8
Male     0-6 months    ki1000304-EU                INDIA                          Zinc                   1        1       8
Male     0-6 months    ki1000304-VITAMIN-A         INDIA                          Control                0       54     180
Male     0-6 months    ki1000304-VITAMIN-A         INDIA                          Control                1       28     180
Male     0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                   0       67     180
Male     0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                   1       31     180
Female   0-6 months    ki1000304-VITAMIN-A         INDIA                          Control                0       64     154
Female   0-6 months    ki1000304-VITAMIN-A         INDIA                          Control                1       25     154
Female   0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                   0       42     154
Female   0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                   1       23     154
Male     0-6 months    ki1000304-Vitamin-B12       INDIA                          Other                  0        1       1
Male     0-6 months    ki1000304-ZnMort            INDIA                          Control                0       30      93
Male     0-6 months    ki1000304-ZnMort            INDIA                          Control                1       22      93
Male     0-6 months    ki1000304-ZnMort            INDIA                          Zinc                   0       18      93
Male     0-6 months    ki1000304-ZnMort            INDIA                          Zinc                   1       23      93
Female   0-6 months    ki1000304-ZnMort            INDIA                          Control                0       24      88
Female   0-6 months    ki1000304-ZnMort            INDIA                          Control                1       13      88
Female   0-6 months    ki1000304-ZnMort            INDIA                          Zinc                   0       37      88
Female   0-6 months    ki1000304-ZnMort            INDIA                          Zinc                   1       14      88
Female   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                0      130     384
Female   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                1       45     384
Female   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  0      146     384
Female   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  1       63     384
Male     0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                0      134     408
Male     0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                1       58     408
Male     0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  0      159     408
Male     0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  1       57     408
Male     0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control                0       25     194
Male     0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control                1       21     194
Male     0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0       90     194
Male     0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       58     194
Female   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control                0       38     222
Female   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control                1       21     222
Female   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0      104     222
Female   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       59     222
Male     0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                0       78     336
Male     0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                1       17     336
Male     0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  0      204     336
Male     0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  1       37     336
Female   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                0       64     304
Female   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                1        7     304
Female   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  0      205     304
Female   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  1       28     304
Male     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      261    1128
Male     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       25    1128
Male     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      263    1128
Male     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       25    1128
Male     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      505    1128
Male     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       49    1128
Female   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      256    1106
Female   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       15    1106
Female   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      256    1106
Female   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       11    1106
Female   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      534    1106
Female   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       34    1106
Male     0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                0        3      21
Male     0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                1        0      21
Male     0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0       14      21
Male     0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1        4      21
Female   0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                0        4      25
Female   0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                1        0      25
Female   0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0       20      25
Female   0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1        1      25
Female   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control                0       49     128
Female   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control                1       16     128
Female   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       54     128
Female   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                  1        9     128
Male     0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control                0       41     113
Male     0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control                1       14     113
Male     0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       42     113
Male     0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                  1       16     113
Female   0-6 months    ki1119695-PROBIT            BELARUS                        Control                0     3980    8381
Female   0-6 months    ki1119695-PROBIT            BELARUS                        Control                1       62    8381
Female   0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               0     4289    8381
Female   0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               1       50    8381
Male     0-6 months    ki1119695-PROBIT            BELARUS                        Control                0     3294    7804
Male     0-6 months    ki1119695-PROBIT            BELARUS                        Control                1      471    7804
Male     0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               0     3570    7804
Male     0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               1      469    7804
Female   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      948    4453
Female   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      161    4453
Female   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     2836    4453
Female   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      508    4453
Male     0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      950    4649
Male     0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      227    4649
Male     0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     2773    4649
Male     0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      699    4649
Female   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                0       47     150
Female   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                1       24     150
Female   0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  0       56     150
Female   0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  1       23     150
Male     0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                0       46     148
Male     0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                1       24     148
Male     0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  0       56     148
Male     0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  1       22     148
Male     0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                0       64     612
Male     0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                1       40     612
Male     0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      337     612
Male     0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      171     612
Female   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                0       64     585
Female   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                1       20     585
Female   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      384     585
Female   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      117     585
Female   0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       14      39
Female   0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1        2      39
Female   0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0       18      39
Female   0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1        5      39
Male     0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0        4      31
Male     0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1        3      31
Male     0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0       18      31
Male     0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1        6      31
Female   0-6 months    ki1148112-LCNI-5            MALAWI                         Control                0       23     129
Female   0-6 months    ki1148112-LCNI-5            MALAWI                         Control                1        6     129
Female   0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    0       50     129
Female   0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    1       18     129
Female   0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  0       24     129
Female   0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  1        8     129
Male     0-6 months    ki1148112-LCNI-5            MALAWI                         Control                0       20     143
Male     0-6 months    ki1148112-LCNI-5            MALAWI                         Control                1       19     143
Male     0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    0       44     143
Male     0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    1       27     143
Male     0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  0       14     143
Male     0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  1       19     143
Male     0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                0     3372    9782
Male     0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                1     1461    9782
Male     0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     3671    9782
Male     0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1     1278    9782
Female   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                0     3568    9577
Female   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                1     1199    9577
Female   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     3793    9577
Female   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1     1017    9577
Female   0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                0      480    2316
Female   0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                1      135    2316
Female   0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      477    2316
Female   0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1      136    2316
Female   0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  0      838    2316
Female   0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      250    2316
Male     0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                0      426    2252
Male     0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                1      140    2252
Male     0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      457    2252
Male     0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1      178    2252
Male     0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  0      739    2252
Male     0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      312    2252
Male     6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control                0       81     194
Male     6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control                1        5     194
Male     6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                   0       98     194
Male     6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                   1       10     194
Female   6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control                0      100     187
Female   6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control                1        8     187
Female   6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                   0       73     187
Female   6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                   1        6     187
Male     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      358    1799
Male     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1       82    1799
Male     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      392    1799
Male     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1       66    1799
Male     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      722    1799
Male     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      179    1799
Female   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      371    1927
Female   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1       99    1927
Female   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      431    1927
Female   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1       76    1927
Female   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      757    1927
Female   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      193    1927
Female   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0      956    2909
Female   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1       60    2909
Female   6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      610    2909
Female   6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1       25    2909
Female   6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0     1177    2909
Female   6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1       81    2909
Male     6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0      756    2423
Male     6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1       54    2423
Male     6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      538    2423
Male     6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1       42    2423
Male     6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0      940    2423
Male     6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1       93    2423
Male     6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0      158     507
Male     6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1       85     507
Male     6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0      197     507
Male     6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1       67     507
Female   6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0      144     448
Female   6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1       65     448
Female   6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0      177     448
Female   6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1       62     448
Female   6-24 months   ki1000304-EU                INDIA                          Control                0      248     571
Female   6-24 months   ki1000304-EU                INDIA                          Control                1       12     571
Female   6-24 months   ki1000304-EU                INDIA                          Zinc                   0      294     571
Female   6-24 months   ki1000304-EU                INDIA                          Zinc                   1       17     571
Male     6-24 months   ki1000304-EU                INDIA                          Control                0      295     584
Male     6-24 months   ki1000304-EU                INDIA                          Control                1       13     584
Male     6-24 months   ki1000304-EU                INDIA                          Zinc                   0      263     584
Male     6-24 months   ki1000304-EU                INDIA                          Zinc                   1       13     584
Male     6-24 months   ki1000304-VITAMIN-A         INDIA                          Control                0      482    1078
Male     6-24 months   ki1000304-VITAMIN-A         INDIA                          Control                1       42    1078
Male     6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   0      505    1078
Male     6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   1       49    1078
Female   6-24 months   ki1000304-VITAMIN-A         INDIA                          Control                0      513    1089
Female   6-24 months   ki1000304-VITAMIN-A         INDIA                          Control                1       42    1089
Female   6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   0      500    1089
Female   6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   1       34    1089
Female   6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0       51     266
Female   6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1        6     266
Female   6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0      186     266
Female   6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1       23     266
Male     6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0       53     238
Male     6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1        4     238
Male     6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0      164     238
Male     6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1       17     238
Male     6-24 months   ki1000304-ZnMort            INDIA                          Control                0      228     473
Male     6-24 months   ki1000304-ZnMort            INDIA                          Zinc                   0      245     473
Female   6-24 months   ki1000304-ZnMort            INDIA                          Control                0      208     413
Female   6-24 months   ki1000304-ZnMort            INDIA                          Zinc                   0      205     413
Female   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0       97     302
Female   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1       47     302
Female   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0      114     302
Female   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1       44     302
Male     6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0      101     345
Male     6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1       51     345
Male     6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0      135     345
Male     6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1       58     345
Male     6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0        7     103
Male     6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1       13     103
Male     6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0       39     103
Male     6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       44     103
Female   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0       12     123
Female   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1       16     123
Female   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0       41     123
Female   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       54     123
Male     6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       53     256
Male     6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1       16     256
Male     6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0      134     256
Male     6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       53     256
Female   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       48     241
Female   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1        9     241
Female   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0      143     241
Female   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       41     241
Male     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      195     917
Male     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       41     917
Male     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      205     917
Male     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       32     917
Male     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      378     917
Male     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       66     917
Female   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      207     930
Female   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       23     930
Female   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      202     930
Female   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       20     930
Female   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      413     930
Female   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       65     930
Male     6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                0      375    2513
Male     6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                1       46    2513
Male     6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0     1874    2513
Male     6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1      218    2513
Female   6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                0      501    2813
Female   6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                1       39    2813
Female   6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0     2057    2813
Female   6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1      216    2813
Female   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                0       41      99
Female   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1        8      99
Female   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       37      99
Female   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1       13      99
Male     6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                0       33      78
Male     6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1        7      78
Male     6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       28      78
Male     6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1       10      78
Female   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0      272    1390
Female   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1       60    1390
Female   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0      950    1390
Female   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1      108    1390
Male     6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0      237    1287
Male     6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1       70    1287
Male     6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0      809    1287
Male     6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1      171    1287
Female   6-24 months   ki1119695-PROBIT            BELARUS                        Control                0     4049    8564
Female   6-24 months   ki1119695-PROBIT            BELARUS                        Control                1       62    8564
Female   6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0     4395    8564
Female   6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1       58    8564
Male     6-24 months   ki1119695-PROBIT            BELARUS                        Control                0     3446    7739
Male     6-24 months   ki1119695-PROBIT            BELARUS                        Control                1      247    7739
Male     6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0     3793    7739
Male     6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1      253    7739
Female   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0     1046    4769
Female   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      154    4769
Female   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     3146    4769
Female   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      423    4769
Male     6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      985    4548
Male     6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      167    4548
Male     6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     2873    4548
Male     6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      523    4548
Male     6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       56     310
Male     6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1       86     310
Male     6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0       84     310
Male     6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1       84     310
Female   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       54     317
Female   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1       84     317
Female   6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0       81     317
Female   6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1       98     317
Male     6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       77     550
Male     6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       18     550
Male     6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      350     550
Male     6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      105     550
Female   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       90     662
Female   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       19     662
Female   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      441     662
Female   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      112     662
Female   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0      129     508
Female   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       35     508
Female   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0      257     508
Female   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       87     508
Male     6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0      109     423
Male     6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       39     423
Male     6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0      187     423
Male     6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       88     423
Female   6-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       54     329
Female   6-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       26     329
Female   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0      124     329
Female   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       42     329
Female   6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       60     329
Female   6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       23     329
Male     6-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       48     260
Male     6-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       17     260
Male     6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0       84     260
Male     6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       49     260
Male     6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       39     260
Male     6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       23     260
Male     6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     2486    6482
Male     6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1      659    6482
Male     6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     2615    6482
Male     6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      722    6482
Female   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     2771    6822
Female   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1      577    6822
Female   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     2810    6822
Female   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      664    6822
Female   6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0      418    2235
Female   6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1      193    2235
Female   6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      434    2235
Female   6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1      165    2235
Female   6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0      728    2235
Female   6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      297    2235
Male     6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0      371    2077
Male     6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1      174    2077
Male     6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      429    2077
Male     6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1      166    2077
Male     6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0      660    2077
Male     6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      277    2077
Male     0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control                0       81     263
Male     0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control                1       34     263
Male     0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                   0       96     263
Male     0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                   1       52     263
Female   0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control                0       99     231
Female   0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control                1       29     231
Female   0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                   0       72     231
Female   0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                   1       31     231
Male     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      347    2396
Male     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1      233    2396
Male     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      384    2396
Male     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1      210    2396
Male     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      704    2396
Male     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      518    2396
Female   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      364    2421
Female   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1      232    2421
Female   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      424    2421
Female   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1      193    2421
Female   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      749    2421
Female   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      459    2421
Female   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0      964    3481
Female   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1      246    3481
Female   0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      614    3481
Female   0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1      124    3481
Female   0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0     1185    3481
Female   0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1      348    3481
Male     0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0      757    3224
Male     0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1      332    3224
Male     0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      541    3224
Male     0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1      195    3224
Male     0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0      948    3224
Male     0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1      451    3224
Male     0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0      205     923
Male     0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1      249     923
Male     0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0      252     923
Male     0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1      217     923
Female   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0      178     802
Female   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1      203     802
Female   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0      213     802
Female   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1      208     802
Female   0-24 months   ki1000304-EU                INDIA                          Control                0      237     959
Female   0-24 months   ki1000304-EU                INDIA                          Control                1      223     959
Female   0-24 months   ki1000304-EU                INDIA                          Zinc                   0      289     959
Female   0-24 months   ki1000304-EU                INDIA                          Zinc                   1      210     959
Male     0-24 months   ki1000304-EU                INDIA                          Control                0      289    1057
Male     0-24 months   ki1000304-EU                INDIA                          Control                1      279    1057
Male     0-24 months   ki1000304-EU                INDIA                          Zinc                   0      258    1057
Male     0-24 months   ki1000304-EU                INDIA                          Zinc                   1      231    1057
Male     0-24 months   ki1000304-VITAMIN-A         INDIA                          Control                0      468    1844
Male     0-24 months   ki1000304-VITAMIN-A         INDIA                          Control                1      456    1844
Male     0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   0      501    1844
Male     0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   1      419    1844
Female   0-24 months   ki1000304-VITAMIN-A         INDIA                          Control                0      510    1699
Female   0-24 months   ki1000304-VITAMIN-A         INDIA                          Control                1      355    1699
Female   0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   0      491    1699
Female   0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   1      343    1699
Female   0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0       50     392
Female   0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1       42     392
Female   0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0      176     392
Female   0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1      124     392
Male     0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0       49     412
Male     0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1       57     412
Male     0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0      149     412
Male     0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1      157     412
Male     0-24 months   ki1000304-ZnMort            INDIA                          Control                0      258    1121
Male     0-24 months   ki1000304-ZnMort            INDIA                          Control                1      310    1121
Male     0-24 months   ki1000304-ZnMort            INDIA                          Zinc                   0      263    1121
Male     0-24 months   ki1000304-ZnMort            INDIA                          Zinc                   1      290    1121
Female   0-24 months   ki1000304-ZnMort            INDIA                          Control                0      232     915
Female   0-24 months   ki1000304-ZnMort            INDIA                          Control                1      213     915
Female   0-24 months   ki1000304-ZnMort            INDIA                          Zinc                   0      242     915
Female   0-24 months   ki1000304-ZnMort            INDIA                          Zinc                   1      228     915
Female   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0       90     441
Female   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1      110     441
Female   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0      105     441
Female   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1      136     441
Male     0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0       86     508
Male     0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1      153     508
Male     0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0      120     508
Male     0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1      149     508
Male     0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0        8     195
Male     0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1       39     195
Male     0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0       40     195
Male     0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1      108     195
Female   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0       12     223
Female   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1       47     223
Female   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0       46     223
Female   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1      118     223
Male     0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       52     336
Male     0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1       43     336
Male     0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0      132     336
Male     0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1      109     336
Female   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       49     305
Female   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1       22     305
Female   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0      146     305
Female   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       88     305
Male     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      210    1138
Male     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       77    1138
Male     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      215    1138
Male     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       75    1138
Male     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      409    1138
Male     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1      152    1138
Female   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      223    1117
Female   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       52    1117
Female   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      223    1117
Female   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       46    1117
Female   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      451    1117
Female   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1      122    1117
Male     0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                0      368    3569
Male     0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                1      204    3569
Male     0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0     1833    3569
Male     0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1     1164    3569
Female   0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                0      497    3595
Female   0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                1      144    3595
Female   0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0     2029    3595
Female   0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1      925    3595
Female   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                0       41     136
Female   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1       28     136
Female   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       34     136
Female   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1       33     136
Male     0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                0       32     123
Male     0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1       29     123
Male     0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       27     123
Male     0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1       35     123
Male     0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0      233    1640
Male     0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1      164    1640
Male     0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0      757    1640
Male     0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1      486    1640
Female   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0      265    1625
Female   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1      135    1625
Female   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0      905    1625
Female   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1      320    1625
Female   0-24 months   ki1119695-PROBIT            BELARUS                        Control                0     3978    8663
Female   0-24 months   ki1119695-PROBIT            BELARUS                        Control                1      192    8663
Female   0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0     4359    8663
Female   0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1      134    8663
Male     0-24 months   ki1119695-PROBIT            BELARUS                        Control                0     2952    8072
Male     0-24 months   ki1119695-PROBIT            BELARUS                        Control                1      921    8072
Male     0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0     3311    8072
Male     0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1      888    8072
Female   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0     1026    5774
Female   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      422    5774
Female   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     3093    5774
Female   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1     1233    5774
Male     0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      989    6035
Male     0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      533    6035
Male     0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     2861    6035
Male     0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1     1652    6035
Male     0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       50     648
Male     0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1      271     648
Male     0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0       85     648
Male     0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1      242     648
Female   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       60     602
Female   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1      229     602
Female   0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0       87     602
Female   0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1      226     602
Male     0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       76     968
Male     0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       92     968
Male     0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      363     968
Male     0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      437     968
Female   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       85     963
Female   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       67     963
Female   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      454     963
Female   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      357     963
Female   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0      124     603
Female   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       76     603
Female   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0      249     603
Female   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1      154     603
Male     0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0      104     553
Male     0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       86     553
Male     0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0      172     553
Male     0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1      191     553
Male     0-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       42     419
Male     0-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       69     419
Male     0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0       72     419
Male     0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1      138     419
Male     0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       32     419
Male     0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       66     419
Female   0-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       54     421
Female   0-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       44     421
Female   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0      107     421
Female   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1      105     421
Female   0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       52     421
Female   0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       59     421
Male     0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     3142   11613
Male     0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1     2567   11613
Male     0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     3417   11613
Male     0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1     2487   11613
Female   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     3508   11320
Female   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1     2131   11320
Female   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     3691   11320
Female   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1     1990   11320
Female   0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0      384    2722
Female   0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1      355    2722
Female   0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      394    2722
Female   0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1      323    2722
Female   0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0      668    2722
Female   0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      598    2722
Male     0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0      341    2718
Male     0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1      353    2718
Male     0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      380    2718
Male     0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1      394    2718
Male     0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0      592    2718
Male     0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      658    2718
Female   0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                0       14      29
Female   0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                1        2      29
Female   0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    0       10      29
Female   0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    1        3      29
Male     0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                0        4      14
Male     0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                1        3      14
Male     0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    0        5      14
Male     0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    1        2      14
Female   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0      236    1058
Female   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1       28    1058
Female   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0      714    1058
Female   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1       80    1058
Male     6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0      197     980
Male     6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1       40     980
Male     6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0      612     980
Male     6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1      131     980
Female   6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0      129     328
Female   6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       35     328
Female   6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0      125     328
Female   6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1       39     328
Male     6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0      109     288
Male     6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       39     288
Male     6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       90     288
Male     6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1       50     288
Female   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0      229    1225
Female   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1       71    1225
Female   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0      676    1225
Female   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1      249    1225
Male     0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0      184    1243
Male     0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1      128    1243
Male     0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0      573    1243
Male     0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1      358    1243
Female   0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0      124     397
Female   0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       76     397
Female   0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0      122     397
Female   0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1       75     397
Male     0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0      104     374
Male     0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       86     374
Male     0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       84     374
Male     0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1      100     374


The following strata were considered:

* sex: Female, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* sex: Female, agecat: 0-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* sex: Female, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* sex: Female, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* sex: Female, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* sex: Female, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* sex: Female, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* sex: Female, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* sex: Female, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* sex: Female, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* sex: Female, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* sex: Female, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* sex: Female, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* sex: Female, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* sex: Female, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* sex: Female, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* sex: Female, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* sex: Female, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* sex: Female, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* sex: Female, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* sex: Female, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* sex: Female, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* sex: Female, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* sex: Female, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* sex: Female, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* sex: Female, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* sex: Female, agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* sex: Female, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* sex: Female, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* sex: Female, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* sex: Female, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* sex: Female, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* sex: Female, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* sex: Female, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* sex: Female, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* sex: Female, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* sex: Female, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* sex: Female, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* sex: Female, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* sex: Female, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* sex: Female, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* sex: Female, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* sex: Female, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* sex: Female, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* sex: Female, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* sex: Female, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* sex: Female, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* sex: Female, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* sex: Female, agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* sex: Female, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* sex: Female, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* sex: Female, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* sex: Female, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* sex: Female, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* sex: Female, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* sex: Female, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* sex: Female, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* sex: Female, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* sex: Female, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* sex: Female, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* sex: Female, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* sex: Female, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* sex: Female, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* sex: Female, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* sex: Female, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* sex: Female, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* sex: Female, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* sex: Female, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* sex: Female, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* sex: Female, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* sex: Female, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* sex: Female, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* sex: Male, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* sex: Male, agecat: 0-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* sex: Male, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* sex: Male, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* sex: Male, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* sex: Male, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* sex: Male, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* sex: Male, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* sex: Male, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* sex: Male, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* sex: Male, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* sex: Male, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* sex: Male, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* sex: Male, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* sex: Male, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* sex: Male, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* sex: Male, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* sex: Male, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* sex: Male, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* sex: Male, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* sex: Male, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* sex: Male, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* sex: Male, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* sex: Male, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* sex: Male, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* sex: Male, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* sex: Male, agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* sex: Male, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* sex: Male, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* sex: Male, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* sex: Male, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* sex: Male, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* sex: Male, agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* sex: Male, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* sex: Male, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* sex: Male, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* sex: Male, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* sex: Male, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* sex: Male, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* sex: Male, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* sex: Male, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* sex: Male, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* sex: Male, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* sex: Male, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* sex: Male, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* sex: Male, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* sex: Male, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* sex: Male, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* sex: Male, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* sex: Male, agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* sex: Male, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* sex: Male, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* sex: Male, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* sex: Male, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* sex: Male, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* sex: Male, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* sex: Male, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* sex: Male, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* sex: Male, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* sex: Male, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* sex: Male, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* sex: Male, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* sex: Male, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* sex: Male, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* sex: Male, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* sex: Male, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* sex: Male, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* sex: Male, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* sex: Male, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* sex: Male, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* sex: Male, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* sex: Male, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* sex: Male, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* sex: Female, agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* sex: Male, agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* sex: Female, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* sex: Male, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* sex: Male, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* sex: Female, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* sex: Female, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* sex: Male, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* sex: Male, agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* sex: Male, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* sex: Female, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* sex: Female, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* sex: Male, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* sex: Male, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* sex: Female, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* sex: Male, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##           ever_stunted
## tr           0
##   Control  208
##   LNS        0
##   Maternal   0
##   Other      0
##   VitA       0
##   Zinc     205
##           ever_stunted
## tr           0
##   Control  228
##   LNS        0
##   Maternal   0
##   Other      0
##   VitA       0
##   Zinc     245
```




# Results Detail

## Results Plots
![](/tmp/b9d6599e-cf1b-4873-9b24-c7e8efc47ceb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b9d6599e-cf1b-4873-9b24-c7e8efc47ceb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b9d6599e-cf1b-4873-9b24-c7e8efc47ceb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b9d6599e-cf1b-4873-9b24-c7e8efc47ceb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


sex      agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Female   0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.3800000   0.3460681   0.4139319
Female   0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.3807107   0.3470221   0.4143992
Female   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                0.2366667   0.1716685   0.3016648
Female   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 NA                0.2691892   0.2271212   0.3112572
Female   0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                0.2265625   0.1862917   0.2668333
Female   0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                 NA                0.3009709   0.2613881   0.3405537
Female   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3892617   0.3501089   0.4284146
Female   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3128039   0.2762131   0.3493947
Female   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3799669   0.3525900   0.4073438
Female   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2033058   0.1806260   0.2259855
Female   0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.1680217   0.1410430   0.1950004
Female   0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2270059   0.2060336   0.2479782
Female   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.5328084   0.5089940   0.5566228
Female   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.4940618   0.4689761   0.5191474
Female   0-24 months   ki1000304-EU                INDIA                          Control              NA                0.4847826   0.4390880   0.5304772
Female   0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4208417   0.3775023   0.4641810
Female   0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4104046   0.3937101   0.4270991
Female   0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.4112710   0.3948731   0.4276688
Female   0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.4565217   0.4326033   0.4804402
Female   0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.4133333   0.3706338   0.4560329
Female   0-24 months   ki1000304-ZnMort            INDIA                          Control              NA                0.4786517   0.4322131   0.5250903
Female   0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.4851064   0.4398985   0.5303142
Female   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.5500000   0.4962587   0.6037413
Female   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.5643154   0.5290019   0.5996288
Female   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.7966102   0.7693748   0.8238455
Female   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.7195122   0.6688345   0.7701899
Female   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.3098592   0.2847783   0.3349400
Female   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.3760684   0.3283736   0.4237632
Female   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1890909   0.1427891   0.2353927
Female   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1710037   0.1259899   0.2160175
Female   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2129145   0.1793810   0.2464480
Female   0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.2246490   0.1923357   0.2569623
Female   0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.3131347   0.2964082   0.3298612
Female   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.4057971   0.3467963   0.4647979
Female   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.4925373   0.4333443   0.5517304
Female   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.3375000   0.3186569   0.3563431
Female   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.2612245   0.2319747   0.2904743
Female   0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0460432   0.0362670   0.0558193
Female   0-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0298242   0.0261097   0.0335387
Female   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2914365   0.2855662   0.2973067
Female   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.2850208   0.2749413   0.2951003
Female   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.7923875   0.7699199   0.8148552
Female   0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7220447   0.6962189   0.7478706
Female   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4407895   0.4283250   0.4532539
Female   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4401973   0.4114101   0.4689845
Female   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3800000   0.3576697   0.4023303
Female   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.3821340   0.3504019   0.4138661
Female   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.4489796   0.3503860   0.5475732
Female   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4952830   0.4279005   0.5626655
Female   0-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.5315315   0.4385905   0.6244726
Female   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3779039   0.3702038   0.3856039
Female   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3502904   0.3431055   0.3574754
Female   0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.4803789   0.4359540   0.5248038
Female   0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4504881   0.4026916   0.4982847
Female   0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4723539   0.4381739   0.5065338
Female   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3088235   0.2488463   0.3688008
Female   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.1754386   0.1302328   0.2206444
Female   0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.2808989   0.2267603   0.3350375
Female   0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3538462   0.3046225   0.4030698
Female   0-6 months    ki1000304-ZnMort            INDIA                          Control              NA                0.3513514   0.1966463   0.5060564
Female   0-6 months    ki1000304-ZnMort            INDIA                          Zinc                 NA                0.2745098   0.1513300   0.3976896
Female   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2571429   0.2087877   0.3054981
Female   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3014354   0.2933998   0.3094710
Female   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.3559322   0.3233897   0.3884747
Female   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.3619632   0.3076726   0.4162538
Female   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.0985916   0.0823697   0.1148134
Female   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.1201717   0.0881187   0.1522246
Female   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0553506   0.0281137   0.0825874
Female   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0411985   0.0173482   0.0650488
Female   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0598592   0.0403413   0.0793770
Female   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.2461538   0.1927660   0.2995417
Female   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.1428571   0.1001610   0.1855533
Female   0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0153389   0.0118588   0.0188191
Female   0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0115234   0.0092405   0.0138063
Female   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1451758   0.1400117   0.1503399
Female   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1519139   0.1427770   0.1610507
Female   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.3380282   0.2857723   0.3902840
Female   0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.2911392   0.2382029   0.3440756
Female   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2380952   0.2250056   0.2511849
Female   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2335329   0.2017786   0.2652873
Female   0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.2068966   0.0588901   0.3549030
Female   0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2647059   0.1594380   0.3699738
Female   0-6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.2500000   0.0993866   0.4006134
Female   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2515209   0.2444083   0.2586335
Female   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2114345   0.2052036   0.2176655
Female   0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2195122   0.1810202   0.2580042
Female   0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2218597   0.1828839   0.2608356
Female   0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2297794   0.2009016   0.2586572
Female   6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2134146   0.1820136   0.2448157
Female   6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2378049   0.2051760   0.2704338
Female   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                0.1060606   0.0567082   0.1554130
Female   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 NA                0.1007557   0.0731612   0.1283502
Female   6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                0.0740741   0.0454716   0.1026766
Female   6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                 NA                0.0759494   0.0512040   0.1006948
Female   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2106383   0.1737644   0.2475122
Female   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1499014   0.1188204   0.1809823
Female   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2031579   0.1775660   0.2287498
Female   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0590551   0.0445578   0.0735524
Female   6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0393701   0.0242415   0.0544986
Female   6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0643879   0.0508225   0.0779533
Female   6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3110048   0.2816945   0.3403151
Female   6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.2594142   0.2297359   0.2890925
Female   6-24 months   ki1000304-EU                INDIA                          Control              NA                0.0461538   0.0206277   0.0716800
Female   6-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.0546624   0.0293760   0.0799487
Female   6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.0756757   0.0644566   0.0868947
Female   6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.0636704   0.0535109   0.0738299
Female   6-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.1052632   0.0881588   0.1223675
Female   6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.1100478   0.0766490   0.1434467
Female   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3263889   0.2759693   0.3768085
Female   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2784810   0.2441989   0.3127632
Female   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.5714286   0.5295312   0.6133260
Female   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.5684211   0.4911810   0.6456611
Female   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.1578947   0.1354591   0.1803304
Female   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.2228261   0.1768232   0.2688290
Female   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1000000   0.0612083   0.1387917
Female   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0900901   0.0524073   0.1277729
Female   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1359833   0.1052385   0.1667281
Female   6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.0722222   0.0503856   0.0940589
Female   6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.0950286   0.0829707   0.1070865
Female   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.1632653   0.1117832   0.2147474
Female   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.2600000   0.1982830   0.3217170
Female   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.1807229   0.1664229   0.1950229
Female   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1020794   0.0829803   0.1211785
Female   6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0150815   0.0099680   0.0201950
Female   6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0130249   0.0110991   0.0149508
Female   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1283333   0.1235712   0.1330955
Female   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1185206   0.1105838   0.1264573
Female   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.6086957   0.5731921   0.6441992
Female   6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.5474860   0.5062474   0.5887246
Female   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.1743119   0.1625764   0.1860475
Female   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2025316   0.1745300   0.2305333
Female   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2134146   0.1931509   0.2336784
Female   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2529070   0.2217712   0.2840427
Female   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3250000   0.2222084   0.4277916
Female   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2530120   0.1867778   0.3192463
Female   6-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.2771084   0.1806741   0.3735427
Female   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1723417   0.1647733   0.1799101
Female   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.1911341   0.1835575   0.1987107
Female   6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3158756   0.2704670   0.3612842
Female   6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2754591   0.2293020   0.3216162
Female   6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2897561   0.2556656   0.3238466
Male     0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.4526316   0.4165312   0.4887319
Male     0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.5434783   0.5080427   0.5789138
Male     0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                0.4102564   0.3125674   0.5079454
Male     0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 NA                0.3845328   0.2856391   0.4834264
Male     0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                0.2956522   0.2591135   0.3321908
Male     0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                 NA                0.3513514   0.3079877   0.3947150
Male     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4017241   0.3618180   0.4416303
Male     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3535354   0.3150820   0.3919887
Male     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4238953   0.3961823   0.4516082
Male     0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.3048669   0.2775211   0.3322126
Male     0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2649457   0.2330586   0.2968327
Male     0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3223731   0.2978779   0.3468683
Male     0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.5484581   0.5259297   0.5709866
Male     0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.4626866   0.4397449   0.4856283
Male     0-24 months   ki1000304-EU                INDIA                          Control              NA                0.4911972   0.4500650   0.5323294
Male     0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4723926   0.4281230   0.5166623
Male     0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4935065   0.4773490   0.5096640
Male     0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.4554348   0.4393751   0.4714945
Male     0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.5377358   0.5132868   0.5621848
Male     0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.5130719   0.4714271   0.5547167
Male     0-24 months   ki1000304-ZnMort            INDIA                          Control              NA                0.5457746   0.5048099   0.5867394
Male     0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.5244123   0.4827703   0.5660542
Male     0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.6401674   0.6054543   0.6748804
Male     0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.5539033   0.5139278   0.5938789
Male     0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.8297872   0.8038240   0.8557504
Male     0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.7297297   0.6752869   0.7841726
Male     0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.4526316   0.4242896   0.4809736
Male     0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.4522822   0.4071436   0.4974207
Male     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2682927   0.2170100   0.3195754
Male     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2586207   0.2082020   0.3090394
Male     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2709447   0.2341506   0.3077388
Male     0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.3566434   0.3173830   0.3959037
Male     0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.3883884   0.3709367   0.4058400
Male     0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.4754098   0.4130041   0.5378156
Male     0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.5645161   0.5020513   0.6269810
Male     0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.4130982   0.3984236   0.4277729
Male     0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3909895   0.3380491   0.4439300
Male     0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.2378002   0.2210533   0.2545470
Male     0-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.2114789   0.1943721   0.2285857
Male     0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3501971   0.3441526   0.3562416
Male     0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.3660536   0.3555428   0.3765645
Male     0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.8442368   0.8245703   0.8639032
Male     0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7400612   0.7160534   0.7640689
Male     0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5476190   0.5345500   0.5606881
Male     0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5462500   0.5177236   0.5747764
Male     0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.4526316   0.4282483   0.4770148
Male     0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.5261708   0.4924138   0.5599278
Male     0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.6216216   0.5312917   0.7119516
Male     0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.6571429   0.5928676   0.7214181
Male     0-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.6734694   0.5805139   0.7664248
Male     0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4496409   0.4420184   0.4572635
Male     0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.4212398   0.4141160   0.4283637
Male     0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.5086455   0.4564700   0.5608210
Male     0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.5090439   0.4691843   0.5489036
Male     0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.5264000   0.4912235   0.5615765
Male     0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.2676056   0.2236934   0.3115178
Male     0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.2812500   0.2293931   0.3331069
Male     0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3414634   0.2945762   0.3883506
Male     0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3163265   0.2660587   0.3665944
Male     0-6 months    ki1000304-ZnMort            INDIA                          Control              NA                0.4230769   0.2880680   0.5580859
Male     0-6 months    ki1000304-ZnMort            INDIA                          Zinc                 NA                0.5609756   0.4082471   0.7137041
Male     0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3020833   0.2568467   0.3473200
Male     0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2638889   0.2433533   0.2844244
Male     0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.4565217   0.4223026   0.4907409
Male     0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.3918919   0.3317367   0.4520471
Male     0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.1789474   0.1571218   0.2007730
Male     0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.1535270   0.1208333   0.1862206
Male     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0874126   0.0546648   0.1201604
Male     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0868056   0.0542744   0.1193367
Male     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0884477   0.0647928   0.1121025
Male     0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.2545455   0.1982628   0.3108281
Male     0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.2758621   0.2165599   0.3351642
Male     0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.1250996   0.1092775   0.1409217
Male     0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1161179   0.1027398   0.1294959
Male     0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1928632   0.1871560   0.1985704
Male     0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.2013249   0.1913626   0.2112872
Male     0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.3428571   0.2900863   0.3956280
Male     0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.2820513   0.2292412   0.3348613
Male     0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3846154   0.3687133   0.4005175
Male     0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3366142   0.3024766   0.3707518
Male     0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.4871795   0.3297570   0.6446020
Male     0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3802817   0.2669653   0.4935981
Male     0-6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.5757576   0.4065414   0.7449737
Male     0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3022967   0.2945064   0.3100870
Male     0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2582340   0.2511668   0.2653011
Male     0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2473498   0.2012082   0.2934914
Male     0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2803150   0.2440938   0.3165361
Male     0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2968601   0.2656538   0.3280665
Male     6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2635135   0.2268496   0.3001774
Male     6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.3571429   0.3184349   0.3958508
Male     6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                0.1687764   0.0930820   0.2444708
Male     6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 NA                0.1763122   0.1236788   0.2289457
Male     6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                0.0581395   0.0361586   0.0801205
Male     6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                 NA                0.0925926   0.0620807   0.1231045
Male     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1863636   0.1499689   0.2227583
Male     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1441048   0.1119322   0.1762774
Male     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1986681   0.1726080   0.2247283
Male     6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0666667   0.0494849   0.0838484
Male     6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0724138   0.0513172   0.0935103
Male     6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0900290   0.0725711   0.1074870
Male     6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3497942   0.3210266   0.3785618
Male     6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.2537879   0.2264265   0.2811492
Male     6-24 months   ki1000304-EU                INDIA                          Control              NA                0.0422078   0.0197340   0.0646816
Male     6-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.0471014   0.0220861   0.0721168
Male     6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.0801527   0.0688466   0.0914588
Male     6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.0884477   0.0762908   0.1006045
Male     6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3355263   0.2925837   0.3784689
Male     6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3005181   0.2783702   0.3226660
Male     6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.6500000   0.6092117   0.6907883
Male     6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.5301205   0.4431746   0.6170664
Male     6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.2318841   0.2049915   0.2587766
Male     6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.2834225   0.2361479   0.3306970
Male     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1737288   0.1253644   0.2220933
Male     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1350211   0.0914885   0.1785537
Male     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1486486   0.1155410   0.1817563
Male     6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.1092637   0.0794575   0.1390698
Male     6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.1042065   0.0911115   0.1173015
Male     6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.1750000   0.1142241   0.2357759
Male     6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.2631579   0.1945076   0.3318082
Male     6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.2280130   0.2150166   0.2410094
Male     6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1744898   0.1423346   0.2066450
Male     6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0668833   0.0548684   0.0788982
Male     6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0625309   0.0559281   0.0691337
Male     6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1449653   0.1398151   0.1501155
Male     6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1540047   0.1449388   0.1630706
Male     6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.6056338   0.5687541   0.6425135
Male     6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.5000000   0.4589595   0.5410405
Male     6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.1894737   0.1758498   0.2030976
Male     6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2307692   0.1987137   0.2628248
Male     6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2635135   0.2385925   0.2884345
Male     6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.3200000   0.2840604   0.3559396
Male     6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.2615385   0.1544951   0.3685819
Male     6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3684211   0.2862829   0.4505592
Male     6-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.3709677   0.2504937   0.4914418
Male     6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2095390   0.2020016   0.2170763
Male     6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2163620   0.2086184   0.2241056
Male     6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3192661   0.2680085   0.3705236
Male     6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2789916   0.2390354   0.3189478
Male     6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2956243   0.2585968   0.3326518


### Parameter: E(Y)


sex      agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Female   0-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.3803526   0.3325374   0.4281678
Female   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   NA                   NA                0.2612245   0.2207687   0.3016803
Female   0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         NA                   NA                0.2597403   0.2030712   0.3164093
Female   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3651384   0.3459557   0.3843210
Female   0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2062626   0.1928192   0.2197059
Female   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.5124688   0.4778536   0.5470840
Female   0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.4515120   0.4199994   0.4830245
Female   0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4108299   0.3874291   0.4342307
Female   0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.4234694   0.3744935   0.4724452
Female   0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.4819672   0.4495734   0.5143610
Female   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.5578231   0.4936867   0.6219595
Female   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.7399103   0.6822041   0.7976165
Female   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.3606557   0.3066767   0.4146348
Female   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1969561   0.1736231   0.2202891
Female   0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.2973574   0.2824135   0.3123014
Female   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.4485294   0.3646341   0.5324248
Female   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.2800000   0.2443139   0.3156861
Female   0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0376313   0.0263668   0.0488958
Female   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2866297   0.2749652   0.2982942
Female   0-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7558140   0.7214678   0.7901602
Female   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4402908   0.4089210   0.4716605
Female   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.3814262   0.3426245   0.4202279
Female   0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4940618   0.4462469   0.5418766
Female   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3640459   0.3534457   0.3746461
Female   0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4687730   0.4451819   0.4923640
Female   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2480000   0.1719898   0.3240102
Female   0-6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3116883   0.2382952   0.3850814
Female   0-6 months    ki1000304-ZnMort            INDIA                          NA                   NA                0.3068182   0.2099118   0.4037246
Female   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2812500   0.2299211   0.3325789
Female   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.3603604   0.2970626   0.4236581
Female   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.1151316   0.0791928   0.1510704
Female   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0542495   0.0408943   0.0676048
Female   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.1953125   0.1263640   0.2642610
Female   0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0133636   0.0091047   0.0176224
Female   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1502358   0.1397402   0.1607314
Female   0-6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.3133333   0.2388548   0.3878119
Female   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2341880   0.1998413   0.2685347
Female   0-6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.2480620   0.1732426   0.3228814
Female   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2313877   0.2218044   0.2409710
Female   0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2249568   0.2050797   0.2448340
Female   6-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2256098   0.1803061   0.2709134
Female   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   NA                   NA                0.1020794   0.0757243   0.1284345
Female   6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         NA                   NA                0.0748663   0.0370450   0.1126877
Female   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1909704   0.1734161   0.2085248
Female   6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0570643   0.0486334   0.0654952
Female   6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2834821   0.2417019   0.3252624
Female   6-24 months   ki1000304-EU                INDIA                          NA                   NA                0.0507881   0.0327632   0.0688130
Female   6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.0697888   0.0546491   0.0849285
Female   6-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.1090226   0.0714979   0.1465472
Female   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3013245   0.2372714   0.3653776
Female   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.5691057   0.4812338   0.6569776
Female   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.2074689   0.1561677   0.2587700
Female   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1161290   0.0955272   0.1367308
Female   6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.0906506   0.0800387   0.1012624
Female   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.2121212   0.1311824   0.2930600
Female   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1208633   0.0942559   0.1474707
Female   6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0140121   0.0084680   0.0195563
Female   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1209897   0.1117331   0.1302463
Female   6-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.5741325   0.5196135   0.6286515
Female   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.1978852   0.1675133   0.2282571
Female   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2401575   0.2029737   0.2773413
Female   6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.2765957   0.2281869   0.3250046
Female   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1819115   0.1712038   0.1926191
Female   6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2930649   0.2695705   0.3165592
Male     0-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.4973262   0.4465167   0.5481357
Male     0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   NA                   NA                0.3909895   0.3187412   0.4632379
Male     0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         NA                   NA                0.3269962   0.2701924   0.3838000
Male     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4010851   0.3814562   0.4207141
Male     0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.3033499   0.2874791   0.3192206
Male     0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.5048754   0.4726030   0.5371479
Male     0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.4824976   0.4523593   0.5126360
Male     0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4745119   0.4517143   0.4973096
Male     0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.5194175   0.4711150   0.5677200
Male     0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.5352364   0.5060266   0.5644462
Male     0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.5944882   0.5342468   0.6547295
Male     0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.7538462   0.6932295   0.8144628
Male     0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.4523810   0.3990822   0.5056797
Male     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2671353   0.2414168   0.2928538
Male     0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.3833006   0.3673477   0.3992536
Male     0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.5203252   0.4316751   0.6089753
Male     0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3963415   0.3415080   0.4511749
Male     0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.2241080   0.1987285   0.2494876
Male     0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3620547   0.3499285   0.3741809
Male     0-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7916667   0.7603737   0.8229596
Male     0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5464876   0.5151100   0.5778652
Male     0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.5009042   0.4591558   0.5426525
Male     0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.6515513   0.6058737   0.6972290
Male     0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.4352019   0.4246780   0.4457258
Male     0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.5169242   0.4931068   0.5407416
Male     0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2754491   0.2074898   0.3434084
Male     0-6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3277778   0.2590127   0.3965428
Male     0-6 months    ki1000304-ZnMort            INDIA                          NA                   NA                0.4838710   0.3817540   0.5859880
Male     0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2818627   0.2313276   0.3323979
Male     0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.4072165   0.3379010   0.4765320
Male     0-6 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.1607143   0.1213857   0.2000428
Male     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0877660   0.0712463   0.1042857
Male     0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.2654867   0.1837042   0.3472692
Male     0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.1204511   0.0994209   0.1414812
Male     0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1991826   0.1877009   0.2106644
Male     0-6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.3108108   0.2359927   0.3856289
Male     0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3447712   0.3070844   0.3824581
Male     0-6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4545455   0.3726477   0.5364432
Male     0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2800041   0.2693469   0.2906613
Male     0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2797513   0.2584842   0.3010185
Male     6-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.3090278   0.2554221   0.3626335
Male     6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   NA                   NA                0.1744898   0.1307163   0.2182633
Male     6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         NA                   NA                0.0773196   0.0396371   0.1150021
Male     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1817676   0.1639418   0.1995935
Male     6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0780025   0.0673223   0.0886827
Male     6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2998028   0.2598818   0.3397237
Male     6-24 months   ki1000304-EU                INDIA                          NA                   NA                0.0445205   0.0277786   0.0612624
Male     6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.0844156   0.0678120   0.1010191
Male     6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3159420   0.2659292   0.3659549
Male     6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.5533981   0.4569203   0.6498758
Male     6-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.2695313   0.2150705   0.3239920
Male     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1515812   0.1283577   0.1748048
Male     6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.1050537   0.0930631   0.1170444
Male     6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.2179487   0.1257346   0.3101629
Male     6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1872572   0.1514569   0.2230575
Male     6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0646078   0.0507508   0.0784648
Male     6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1517150   0.1412878   0.1621423
Male     6-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.5483871   0.4928995   0.6038747
Male     6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2236364   0.1887813   0.2584914
Male     6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.3002364   0.2564230   0.3440499
Male     6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3423077   0.2845223   0.4000931
Male     6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2130515   0.2022457   0.2238574
Male     6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2970631   0.2726928   0.3214334


### Parameter: RR


sex      agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Female   0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Female   0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.0018702   0.8835172   1.1360773
Female   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
Female   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 Control           1.1374191   0.8736897   1.4807570
Female   0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
Female   0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                 Control           1.3284232   1.0648994   1.6571595
Female   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Female   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8035824   0.6887003   0.9376281
Female   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9761218   0.8625227   1.1046826
Female   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Female   0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8264481   0.6796799   1.0049090
Female   0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.1165736   0.9660117   1.2906019
Female   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
Female   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.9272785   0.8666277   0.9921738
Female   0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Female   0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.8681039   0.7549904   0.9981642
Female   0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Female   0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 Control           1.0021110   0.9466261   1.0608480
Female   0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Female   0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           0.9053968   0.8063691   1.0165858
Female   0-24 months   ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Female   0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Control           1.0134852   0.8859171   1.1594224
Female   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Female   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0260279   0.9137903   1.1520513
Female   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Female   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.9032174   0.8351994   0.9767748
Female   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Female   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.2136752   1.0441463   1.4107290
Female   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Female   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9043466   0.6312478   1.2955970
Female   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1259901   0.8415746   1.5065255
Female   0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
Female   0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.3938845   1.1956110   1.6250385
Female   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Female   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           1.2137527   1.0050956   1.4657267
Female   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
Female   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.7739985   0.6829948   0.8771276
Female   0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Female   0-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.6477437   0.5066691   0.8280985
Female   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Female   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9779861   0.9389831   1.0186091
Female   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Female   0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.9112268   0.8705704   0.9537817
Female   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Female   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9986565   0.9299799   1.0724047
Female   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Female   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.0056158   0.9083473   1.1133000
Female   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Female   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1031304   0.8519975   1.4282865
Female   0-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.1838657   0.8941144   1.5675153
Female   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Female   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9269300   0.9004969   0.9541390
Female   0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Female   0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9377767   0.8146580   1.0795023
Female   0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9832944   0.8743240   1.1058461
Female   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
Female   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.5680869   0.4114173   0.7844170
Female   0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Female   0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           1.2596923   0.9931980   1.5976923
Female   0-6 months    ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Female   0-6 months    ki1000304-ZnMort            INDIA                          Zinc                 Control           0.7812971   0.4166642   1.4650291
Female   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Female   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.1722488   0.9694533   1.4174661
Female   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Female   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           1.0169442   0.8531188   1.2122292
Female   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Female   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.2188841   0.8909590   1.6675048
Female   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Female   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.7443197   0.3481666   1.5912260
Female   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0814554   0.5992984   1.9515251
Female   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Female   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           0.5803571   0.4011624   0.8395962
Female   0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Female   0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7512508   0.5556141   1.0157731
Female   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Female   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0464130   0.9757895   1.1221479
Female   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Female   0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8612869   0.6784211   1.0934435
Female   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Female   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9808383   0.8470335   1.1357801
Female   0-6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Female   0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.2794118   0.5643558   2.9004653
Female   0-6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.2083333   0.4742550   3.0786588
Female   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Female   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8406241   0.8069750   0.8756763
Female   0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Female   0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0106942   0.7885070   1.2954899
Female   0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0467729   0.8436211   1.2988454
Female   6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Female   6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.1142857   0.9112196   1.3626052
Female   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
Female   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 Control           0.9499820   0.5850647   1.5425059
Female   6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
Female   6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                 Control           1.0253165   0.6186438   1.6993200
Female   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Female   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7116530   0.5425231   0.9335087
Female   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9644870   0.7773774   1.1966326
Female   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Female   6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.6666668   0.4225484   1.0518194
Female   6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0903021   0.7889570   1.5067470
Female   6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
Female   6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.8341165   0.7192068   0.9673857
Female   6-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Female   6-24 months   ki1000304-EU                INDIA                          Zinc                 Control           1.1843515   0.5758966   2.4356602
Female   6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Female   6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.8413590   0.6766895   1.0461001
Female   6-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Female   6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           1.0454545   0.7409633   1.4750733
Female   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Female   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8532184   0.7002838   1.0395523
Female   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Female   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.9947368   0.8524153   1.1608208
Female   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Female   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.4112319   1.0983823   1.8131896
Female   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Female   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9009010   0.5092426   1.5937837
Female   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.3598326   0.8679384   2.1305023
Female   6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
Female   6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.3157806   0.9479353   1.8263679
Female   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Female   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           1.5925000   1.0731715   2.3631417
Female   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
Female   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.5648393   0.4607604   0.6924282
Female   6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Female   6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.8636367   0.5974872   1.2483420
Female   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Female   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9235371   0.8554707   0.9970193
Female   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Female   6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8994413   0.8177096   0.9893423
Female   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Female   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1618921   0.9962776   1.3550371
Female   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Female   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.1850498   1.0144145   1.3843879
Female   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Female   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.7784986   0.5163584   1.1737198
Female   6-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           0.8526413   0.5327670   1.3645689
Female   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Female   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.1090418   1.0453131   1.1766558
Female   6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Female   6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8720493   0.6992806   1.0875032
Female   6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9173108   0.7617970   1.1045712
Male     0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Male     0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.2007078   1.0831733   1.3309959
Male     0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
Male     0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 Control           0.9372986   0.6356118   1.3821780
Male     0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
Male     0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                 Control           1.1883943   0.9979453   1.4151888
Male     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Male     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8800451   0.7595070   1.0197133
Male     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0551899   0.9368806   1.1884393
Male     0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8690537   0.7479253   1.0097991
Male     0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0574227   0.9401455   1.1893295
Male     0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
Male     0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.8436133   0.7910068   0.8997184
Male     0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.9617169   0.8481388   1.0905048
Male     0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.9228547   0.8795001   0.9683464
Male     0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           0.9541337   0.8693706   1.0471612
Male     0-24 months   ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Control           0.9608587   0.8614017   1.0717989
Male     0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8652477   0.7906181   0.9469219
Male     0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.8794179   0.8110728   0.9535220
Male     0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Male     0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           0.9992280   0.8881713   1.1241712
Male     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Male     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9639498   0.7336368   1.2665658
Male     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0098849   0.7988062   1.2767397
Male     0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
Male     0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.0890106   0.9669286   1.2265064
Male     0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Male     0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           1.1874305   1.0001090   1.4098375
Male     0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
Male     0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.9464808   0.8228666   1.0886647
Male     0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Male     0-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.8893136   0.7995221   0.9891894
Male     0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Male     0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0452788   1.0108396   1.0808914
Male     0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Male     0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8766038   0.8422841   0.9123219
Male     0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Male     0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9975000   0.9418399   1.0564495
Male     0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Male     0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.1624704   1.0690539   1.2640498
Male     0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Male     0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0571429   0.8872795   1.2595253
Male     0-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.0834073   0.8866494   1.3238280
Male     0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Male     0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9368361   0.9146592   0.9595506
Male     0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Male     0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0007832   0.8795751   1.1386942
Male     0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0349054   0.9156282   1.1697206
Male     0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
Male     0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           1.0509868   0.8211124   1.3452158
Male     0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.9263848   0.7508995   1.1428812
Male     0-6 months    ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     0-6 months    ki1000304-ZnMort            INDIA                          Zinc                 Control           1.3259424   0.8716678   2.0169647
Male     0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8735632   0.7380249   1.0339931
Male     0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.8584299   0.7236313   1.0183388
Male     0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Male     0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                Control           0.8579448   0.6712452   1.0965730
Male     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Male     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9930556   0.5845750   1.6869679
Male     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0118412   0.6385661   1.6033148
Male     0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Male     0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           1.0837438   0.7961524   1.4752209
Male     0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Male     0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.9282032   0.7826151   1.1008747
Male     0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Male     0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0438740   0.9853897   1.1058293
Male     0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Male     0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8226496   0.6455822   1.0482822
Male     0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Male     0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8751969   0.7844086   0.9764931
Male     0-6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Male     0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.7805782   0.5029464   1.2114658
Male     0-6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.1818182   0.7635759   1.8291492
Male     0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Male     0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8542401   0.8227234   0.8869642
Male     0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Male     0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.1332733   0.9033060   1.4217867
Male     0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.2001631   0.9688445   1.4867107
Male     6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Male     6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.3553114   1.1361718   1.6167176
Male     6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
Male     6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 Control           1.0446501   0.6094761   1.7905439
Male     6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
Male     6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                 Control           1.5925926   0.9644834   2.6297510
Male     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Male     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7732453   0.5747752   1.0402472
Male     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0660242   0.8425538   1.3487656
Male     6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.0862069   0.7361813   1.6026561
Male     6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.3504356   0.9781394   1.8644340
Male     6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
Male     6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.7255348   0.6335317   0.8308987
Male     6-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     6-24 months   ki1000304-EU                INDIA                          Zinc                 Control           1.1159420   0.5260569   2.3672852
Male     6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 Control           1.1034898   0.9062223   1.3436987
Male     6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8956619   0.7724605   1.0385129
Male     6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.8155700   0.6842211   0.9721336
Male     6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Male     6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.2222594   0.9975494   1.4975880
Male     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Male     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.7771946   0.5076131   1.1899446
Male     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.8556361   0.5990374   1.2221494
Male     6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
Male     6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           0.9537160   0.7062874   1.2878246
Male     6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Male     6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           1.5037594   0.9739578   2.3217560
Male     6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
Male     6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.7652624   0.6306147   0.9286597
Male     6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Male     6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.9349255   0.7595535   1.1507888
Male     6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Male     6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0623559   0.9917657   1.1379704
Male     6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Male     6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8255814   0.7453732   0.9144206
Male     6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Male     6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.2179487   1.0415956   1.4241603
Male     6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Male     6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.2143590   1.0485318   1.4064120
Male     6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Male     6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.4086687   0.8838909   2.2450142
Male     6-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.4184061   0.8411874   2.3917093
Male     6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Male     6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.0325622   0.9814701   1.0863140
Male     6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Male     6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8738530   0.7047031   1.0836039
Male     6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9259498   0.7553750   1.1350429


### Parameter: PAR


sex      agecat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Female   0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0003526   -0.0333360    0.0340412
Female   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                 0.0245578   -0.0237737    0.0728893
Female   0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.0331778   -0.0066926    0.0730481
Female   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0241234   -0.0579784    0.0097316
Female   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0029568   -0.0154145    0.0213280
Female   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0203396   -0.0454610    0.0047818
Female   0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0332706   -0.0661028   -0.0004384
Female   0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0004253   -0.0159726    0.0168232
Female   0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0330524   -0.0757904    0.0096857
Female   0-24 months   ki1000304-ZnMort            INDIA                          Control              NA                 0.0033155   -0.0299754    0.0366064
Female   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0078231   -0.0276664    0.0433126
Female   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0566999   -0.1075747   -0.0058251
Female   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0507966    0.0029982    0.0985950
Female   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0078652   -0.0325411    0.0482715
Female   0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0727085    0.0427899    0.1026270
Female   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0427323   -0.0169110    0.1023757
Female   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0575000   -0.0889805   -0.0260195
Female   0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0084119   -0.0132025   -0.0036212
Female   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0048067   -0.0148865    0.0052730
Female   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0365736   -0.0625518   -0.0105954
Female   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0004987   -0.0292859    0.0282885
Female   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0014262   -0.0303060    0.0331584
Female   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0450822   -0.0414129    0.1315773
Female   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0138579   -0.0211844   -0.0065315
Female   0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0116059   -0.0498316    0.0266197
Female   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0608235   -0.1075171   -0.0141300
Female   0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0307894   -0.0187642    0.0803430
Female   0-6 months    ki1000304-ZnMort            INDIA                          Control              NA                -0.0445332   -0.1594178    0.0703515
Female   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0241071    0.0056528    0.0425615
Female   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.0044282   -0.0498635    0.0587199
Female   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0165400   -0.0155294    0.0486095
Female   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0011010   -0.0246947    0.0224927
Female   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0508413   -0.0944720   -0.0072107
Female   0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0019754   -0.0043384    0.0003876
Female   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0050600   -0.0040773    0.0141972
Female   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0246948   -0.0777644    0.0283748
Female   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0039072   -0.0356618    0.0278474
Female   0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0411655   -0.0917054    0.1740364
Female   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0201332   -0.0265994   -0.0136670
Female   0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0054446   -0.0275627    0.0384519
Female   6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0121951   -0.0204606    0.0448508
Female   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                -0.0039812   -0.0421313    0.0341689
Female   6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.0007922   -0.0239535    0.0255380
Female   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0196679   -0.0513630    0.0120272
Female   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0019908   -0.0135858    0.0096041
Female   6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0275226   -0.0572967    0.0022514
Female   6-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0046342   -0.0149386    0.0242071
Female   6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0058869   -0.0160527    0.0042789
Female   6-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0037594   -0.0296403    0.0371591
Female   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0250644   -0.0636642    0.0135354
Female   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0023229   -0.0795633    0.0749175
Female   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0495741    0.0034390    0.0957093
Female   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0161290   -0.0182937    0.0505517
Female   6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0184283   -0.0017305    0.0385871
Female   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0488559   -0.0135995    0.1113114
Female   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0598596   -0.0831756   -0.0365436
Female   6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0010693   -0.0030687    0.0009300
Female   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0073436   -0.0152813    0.0005941
Female   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0345632   -0.0759373    0.0068110
Female   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0235733   -0.0044398    0.0515863
Female   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0267428   -0.0044344    0.0579200
Female   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0484043   -0.1365575    0.0397490
Female   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0095698    0.0019991    0.0171405
Female   6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0228107   -0.0613590    0.0157376
Male     0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0446946    0.0089403    0.0804490
Male     0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                -0.0192669   -0.1347556    0.0962219
Male     0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.0313440   -0.0121485    0.0748366
Male     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0006390   -0.0353780    0.0341000
Male     0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0015170   -0.0237542    0.0207203
Male     0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0435827   -0.0666908   -0.0204747
Male     0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0086995   -0.0366615    0.0192624
Male     0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0189946   -0.0350777   -0.0029114
Male     0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0183184   -0.0599762    0.0233395
Male     0-24 months   ki1000304-ZnMort            INDIA                          Control              NA                -0.0105383   -0.0393611    0.0182846
Male     0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0456792   -0.0961366    0.0047783
Male     0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0759411   -0.1307160   -0.0211662
Male     0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0002506   -0.0453892    0.0448879
Male     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0011574   -0.0454839    0.0431692
Male     0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0266573   -0.0094232    0.0627378
Male     0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0449154   -0.0180478    0.1078785
Male     0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0167568   -0.0695900    0.0360765
Male     0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0136921   -0.0318906    0.0045063
Male     0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0118576    0.0013453    0.0223699
Male     0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0525701   -0.0769110   -0.0282292
Male     0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0011314   -0.0296578    0.0273949
Male     0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0482726    0.0143848    0.0821604
Male     0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0299297   -0.0470299    0.1068892
Male     0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0144390   -0.0217207   -0.0071573
Male     0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0082787   -0.0353139    0.0518712
Male     0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0078435   -0.0440236    0.0597105
Male     0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0136856   -0.0639870    0.0366157
Male     0-6 months    ki1000304-ZnMort            INDIA                          Control              NA                 0.0607940   -0.0301562    0.1517443
Male     0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0202206   -0.0448188    0.0043776
Male     0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0493052   -0.1095853    0.0109748
Male     0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0182331   -0.0509497    0.0144835
Male     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0003534   -0.0279575    0.0286642
Male     0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0109413   -0.0483937    0.0702762
Male     0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0046486   -0.0181977    0.0089006
Male     0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0063194   -0.0036434    0.0162823
Male     0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0320463   -0.0850839    0.0209913
Male     0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0398441   -0.0740117   -0.0056766
Male     0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0326340   -0.1666927    0.1014246
Male     0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0222926   -0.0295886   -0.0149967
Male     0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0324015   -0.0065020    0.0713050
Male     6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0455143    0.0064077    0.0846209
Male     6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                 0.0057134   -0.0641248    0.0755517
Male     6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.0191801   -0.0114273    0.0497874
Male     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0045960   -0.0361302    0.0269382
Male     6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0113358   -0.0032211    0.0258927
Male     6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0499915   -0.0776701   -0.0223128
Male     6-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0023128   -0.0135811    0.0182067
Male     6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0042629   -0.0078964    0.0164222
Male     6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0195843   -0.0442410    0.0050724
Male     6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0966019   -0.1840335   -0.0091704
Male     6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0376472   -0.0097106    0.0850050
Male     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0221476   -0.0630677    0.0187725
Male     6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.0042099   -0.0313119    0.0228920
Male     6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0429487   -0.0264035    0.1123010
Male     6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0407558   -0.0746377   -0.0068740
Male     6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0022755   -0.0090222    0.0044713
Male     6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0067498   -0.0023168    0.0158164
Male     6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0572467   -0.0987046   -0.0157888
Male     6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0341627    0.0020805    0.0662448
Male     6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0367229    0.0006873    0.0727585
Male     6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0807692   -0.0144584    0.1759968
Male     6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0035126   -0.0042298    0.0112550
Male     6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0222030   -0.0650656    0.0206597


### Parameter: PAF


sex      agecat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Female   0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0009272   -0.0915999    0.0856114
Female   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                 0.0940104   -0.1131032    0.2625867
Female   0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.1277344   -0.0186820    0.2531062
Female   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0660664   -0.1629521    0.0227478
Female   0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0143350   -0.0788778    0.0994945
Female   0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0396894   -0.0919602    0.0100793
Female   0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0736871   -0.1490714   -0.0032483
Female   0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0010352   -0.0396440    0.0401226
Female   0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0780513   -0.1926307    0.0255201
Female   0-24 months   ki1000304-ZnMort            INDIA                          Control              NA                 0.0068792   -0.0646539    0.0736060
Female   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0140244   -0.0507717    0.0748248
Female   0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0766307   -0.1533196   -0.0050412
Female   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.1408451    0.0186093    0.2478560
Female   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0399339   -0.1887520    0.2246264
Female   0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.2445153    0.1372025    0.3384808
Female   0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0952720   -0.0341439    0.2084925
Female   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.2053571   -0.3486299   -0.0773051
Female   0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.2235336   -0.4070881   -0.0639237
Female   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0167699   -0.0531638    0.0183664
Female   0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0483897   -0.0850802   -0.0129398
Female   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0011327   -0.0687762    0.0622296
Female   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0037391   -0.0826889    0.0832679
Female   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0912480   -0.1020311    0.2506290
Female   0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0380665   -0.0591808   -0.0173731
Female   0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0247581   -0.1096777    0.0536629
Female   0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.2452562   -0.5121814   -0.0254477
Female   0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0987828   -0.0577155    0.2321258
Female   0-6 months    ki1000304-ZnMort            INDIA                          Control              NA                -0.1451451   -0.5881097    0.1742652
Female   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0857143    0.0214271    0.1457782
Female   0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.0122881   -0.1483193    0.1504325
Female   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.1436620   -0.1325333    0.3525004
Female   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0202952   -0.5625625    0.3337852
Female   0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.2603077   -0.5868781   -0.0009436
Female   0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1478184   -0.3753715    0.0420863
Female   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0336801   -0.0269269    0.0907103
Female   0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0788133   -0.2784781    0.0896691
Female   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0166840   -0.1643280    0.1122377
Female   0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1659483   -0.5832621    0.5606272
Female   0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0870106   -0.1179200   -0.0569557
Female   0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0242030   -0.1341425    0.1604408
Female   6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0540541   -0.0935099    0.1817049
Female   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                -0.0390011   -0.4869289    0.2739913
Female   6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.0105820   -0.3770167    0.2890806
Female   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1029891   -0.2819445    0.0509847
Female   6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0348876   -0.2593279    0.1495525
Female   6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0970877   -0.2190680    0.0126872
Female   6-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0912467   -0.3868600    0.4045307
Female   6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0843528   -0.2550609    0.0631364
Female   6-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0344828   -0.3116891    0.2892954
Female   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0831807   -0.2322936    0.0478889
Female   6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0040816   -0.1500392    0.1233517
Female   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.2389474    0.0469657    0.3922558
Female   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.1388889   -0.2138219    0.3891095
Female   6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.2032898   -0.0518071    0.3965175
Female   6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.2303207   -0.0423486    0.4316621
Female   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.4952668   -0.8163514   -0.2309417
Female   6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0763156   -0.2451962    0.0696605
Female   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0606961   -0.1326615    0.0066968
Female   6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0602007   -0.1395203    0.0135977
Female   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1191260   -0.0150607    0.2355738
Female   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1113555   -0.0122663    0.2198801
Female   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.1750000   -0.5409232    0.1040274
Female   6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0526067    0.0122845    0.0912829
Female   6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0778351   -0.2178067    0.0460485
Male     0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0898698    0.0216796    0.1533071
Male     0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                -0.0492772   -0.3970826    0.2119416
Male     0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.0958544   -0.0333107    0.2088737
Male     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0015932   -0.0920610    0.0813802
Male     0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0050007   -0.0810460    0.0656952
Male     0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0863238   -0.1373560   -0.0375813
Male     0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0180302   -0.0776745    0.0383130
Male     0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0400297   -0.0759121   -0.0053440
Male     0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0352671   -0.1217350    0.0445354
Male     0-24 months   ki1000304-ZnMort            INDIA                          Control              NA                -0.0196890   -0.0750022    0.0327781
Male     0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0768378   -0.1721756    0.0107458
Male     0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.1007382   -0.1837767   -0.0235245
Male     0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0005540   -0.1055400    0.0944621
Male     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0043325   -0.1847600    0.1486177
Male     0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0695467   -0.0295183    0.1590792
Male     0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0863217   -0.0317536    0.1908843
Male     0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0422786   -0.1909128    0.0878050
Male     0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0610961   -0.1512508    0.0219985
Male     0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0327508    0.0042494    0.0604363
Male     0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0664043   -0.0997445   -0.0340749
Male     0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0020704   -0.0557673    0.0488954
Male     0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0963709    0.0329298    0.1556502
Male     0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0459360   -0.0799320    0.1571339
Male     0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0331777   -0.0506179   -0.0160269
Male     0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0160153   -0.0721366    0.0969192
Male     0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0284752   -0.1728884    0.1952684
Male     0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0417528   -0.2146711    0.1065492
Male     0-6 months    ki1000304-ZnMort            INDIA                          Control              NA                 0.1256410   -0.0855345    0.2957353
Male     0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0717391   -0.1696943    0.0180129
Male     0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.1210787   -0.3003049    0.0334440
Male     0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.1134503   -0.3654765    0.0920594
Male     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0040263   -0.3769086    0.2795719
Male     0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0412121   -0.1991289    0.2333817
Male     0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0385929   -0.1624782    0.0720900
Male     0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0317267   -0.0179457    0.0789752
Male     0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1031056   -0.3093208    0.0706311
Male     0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1155669   -0.2319272   -0.0101972
Male     0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0717949   -0.4115885    0.1862046
Male     0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0796153   -0.1081987   -0.0517692
Male     0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1158225   -0.0361132    0.2454784
Male     6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.1472821    0.0306513    0.2498800
Male     6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                 0.0327436   -0.4609794    0.3596180
Male     6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.2480620   -0.1294282    0.4993832
Male     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0252850   -0.2143015    0.1343095
Male     6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.1453263   -0.0621057    0.3122463
Male     6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.1667479   -0.2808912   -0.0627762
Male     6-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0519481   -0.3808550    0.3490971
Male     6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0504991   -0.0968019    0.1780175
Male     6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0619870   -0.1488588    0.0183160
Male     6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.1745614   -0.3761151   -0.0025284
Male     6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.1396765   -0.0263437    0.2788415
Male     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.1461102   -0.4498141    0.0939744
Male     6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.0400741   -0.3328295    0.1883777
Male     6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.1970588   -0.1118295    0.4201319
Male     6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.2176463   -0.4590513   -0.0161826
Male     6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0352196   -0.1494854    0.0676875
Male     6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0444897   -0.0143742    0.0999378
Male     6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1043911   -0.1914376   -0.0237042
Male     6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1527599    0.0216566    0.2662948
Male     6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1223133    0.0098367    0.2220131
Male     6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.2359551   -0.0987928    0.4687218
Male     6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0164870   -0.0199165    0.0515911
Male     6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0747416   -0.2286534    0.0598898
