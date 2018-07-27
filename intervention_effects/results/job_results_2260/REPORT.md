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

* meducyrs
* agecat
* studyid
* country

## Data Summary

meducyrs   agecat        studyid                     country                        tr          ever_stunted   n_cell       n
---------  ------------  --------------------------  -----------------------------  ---------  -------------  -------  ------
Q3         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0       11      69
Q3         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1        2      69
Q3         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0       17      69
Q3         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1        1      69
Q3         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0       36      69
Q3         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1        2      69
Q2         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0        9      71
Q2         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1        2      71
Q2         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0       19      71
Q2         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1        3      71
Q2         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0       36      71
Q2         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1        2      71
Q4         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0       10      56
Q4         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1        1      56
Q4         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0       16      56
Q4         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1        1      56
Q4         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0       26      56
Q4         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1        2      56
Q1         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0        7      36
Q1         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1        1      36
Q1         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0       10      36
Q1         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1        2      36
Q1         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0       12      36
Q1         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1        4      36
Q1         0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                0       12      53
Q1         0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                1        2      53
Q1         0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    0       13      53
Q1         0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    1        0      53
Q1         0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  0       23      53
Q1         0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  1        3      53
Q3         0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                0        3      19
Q3         0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                1        0      19
Q3         0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    0        8      19
Q3         0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    1        0      19
Q3         0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  0        7      19
Q3         0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  1        1      19
Q4         0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                0       10      20
Q4         0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                1        0      20
Q4         0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    0        2      20
Q4         0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    1        0      20
Q4         0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  0        7      20
Q4         0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  1        1      20
Q1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       22      65
Q1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                1       10      65
Q1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       28      65
Q1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        5      65
Q4         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                0        3       9
Q4         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                1        0       9
Q4         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0        5       9
Q4         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        1       9
Q3         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                0        9      16
Q3         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                1        1      16
Q3         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0        5      16
Q3         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        1      16
Q2         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                0        1       7
Q2         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                1        1       7
Q2         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0        3       7
Q2         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        2       7
Q1         0-6 months    ki1000304-EU                INDIA                          Control                0        1       7
Q1         0-6 months    ki1000304-EU                INDIA                          Control                1        3       7
Q1         0-6 months    ki1000304-EU                INDIA                          Zinc                   0        1       7
Q1         0-6 months    ki1000304-EU                INDIA                          Zinc                   1        2       7
Q2         0-6 months    ki1000304-EU                INDIA                          Control                0        0       5
Q2         0-6 months    ki1000304-EU                INDIA                          Control                1        1       5
Q2         0-6 months    ki1000304-EU                INDIA                          Zinc                   0        3       5
Q2         0-6 months    ki1000304-EU                INDIA                          Zinc                   1        1       5
Q3         0-6 months    ki1000304-EU                INDIA                          Control                0        1       2
Q3         0-6 months    ki1000304-EU                INDIA                          Zinc                   0        1       2
Q1         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control                0       48     164
Q1         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control                1       32     164
Q1         0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                   0       49     164
Q1         0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                   1       35     164
Q2         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control                0       45     111
Q2         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control                1       14     111
Q2         0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                   0       36     111
Q2         0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                   1       16     111
Q3         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control                0       24      54
Q3         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control                1        6      54
Q3         0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                   0       21      54
Q3         0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                   1        3      54
Q4         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control                0        1       5
Q4         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control                1        1       5
Q4         0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                   0        3       5
Q4         0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                   1        0       5
Q1         0-6 months    ki1000304-Vitamin-B12       INDIA                          Other                  0        1       1
Q1         0-6 months    ki1000304-ZnMort            INDIA                          Control                0       24      93
Q1         0-6 months    ki1000304-ZnMort            INDIA                          Control                1       21      93
Q1         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                   0       25      93
Q1         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                   1       23      93
Q3         0-6 months    ki1000304-ZnMort            INDIA                          Control                0        9      17
Q3         0-6 months    ki1000304-ZnMort            INDIA                          Control                1        2      17
Q3         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                   0        4      17
Q3         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                   1        2      17
Q2         0-6 months    ki1000304-ZnMort            INDIA                          Control                0       21      71
Q2         0-6 months    ki1000304-ZnMort            INDIA                          Control                1       12      71
Q2         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                   0       26      71
Q2         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                   1       12      71
Q2         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                0       90     248
Q2         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                1       33     248
Q2         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  0       87     248
Q2         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  1       38     248
Q1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                0      106     362
Q1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                1       55     362
Q1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  0      132     362
Q1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  1       69     362
Q3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                0       58     161
Q3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                1       15     161
Q3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  0       76     161
Q3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  1       12     161
Q4         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                0       10      21
Q4         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                1        0      21
Q4         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  0       10      21
Q4         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  1        1      21
Q1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control                0       50     336
Q1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control                1       35     336
Q1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0      158     336
Q1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       93     336
Q2         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control                0        8      40
Q2         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control                1        5      40
Q2         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0       15      40
Q2         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       12      40
Q4         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control                0        2      16
Q4         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control                1        0      16
Q4         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0        9      16
Q4         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1        5      16
Q3         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control                0        3      24
Q3         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control                1        2      24
Q3         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0       12      24
Q3         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1        7      24
Q1         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                0       52     253
Q1         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                1        9     253
Q1         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  0      165     253
Q1         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  1       27     253
Q3         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                0       27     134
Q3         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                1        6     134
Q3         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  0       92     134
Q3         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  1        9     134
Q2         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                0       60     241
Q2         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                1        8     241
Q2         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  0      144     241
Q2         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  1       29     241
Q4         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                0        3      12
Q4         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                1        1      12
Q4         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  0        8      12
Q4         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  1        0      12
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      478    2064
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       35    2064
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      481    2064
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       31    2064
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      960    2064
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       79    2064
Q3         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0       23      91
Q3         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1        2      91
Q3         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0       19      91
Q3         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1        1      91
Q3         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0       44      91
Q3         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1        2      91
Q1         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0       14      67
Q1         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1        2      67
Q1         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0       16      67
Q1         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1        3      67
Q1         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0       31      67
Q1         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1        1      67
Q4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0        1       4
Q4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1        1       4
Q4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0        1       4
Q4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1        0       4
Q4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0        1       4
Q4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1        0       4
Q1         0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0       25      29
Q1         0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1        4      29
Q2         0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0        6       7
Q2         0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1        1       7
Q4         0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0        1       1
Q1         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control                0       17      39
Q1         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control                1        4      39
Q1         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       13      39
Q1         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                  1        5      39
Q2         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control                0       24      68
Q2         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control                1       12      68
Q2         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       28      68
Q2         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                  1        4      68
Q3         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control                0       12      28
Q3         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control                1        3      28
Q3         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       11      28
Q3         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                  1        2      28
Q4         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control                0       33     101
Q4         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control                1       11     101
Q4         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       43     101
Q4         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                  1       14     101
Q3         0-6 months    ki1119695-PROBIT            BELARUS                        Control                0     5892   12845
Q3         0-6 months    ki1119695-PROBIT            BELARUS                        Control                1      437   12845
Q3         0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               0     6099   12845
Q3         0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               1      417   12845
Q4         0-6 months    ki1119695-PROBIT            BELARUS                        Control                0     1162    2720
Q4         0-6 months    ki1119695-PROBIT            BELARUS                        Control                1       69    2720
Q4         0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               0     1424    2720
Q4         0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               1       65    2720
Q2         0-6 months    ki1119695-PROBIT            BELARUS                        Control                0      216     593
Q2         0-6 months    ki1119695-PROBIT            BELARUS                        Control                1       26     593
Q2         0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               0      318     593
Q2         0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               1       33     593
Q1         0-6 months    ki1119695-PROBIT            BELARUS                        Control                0        4      27
Q1         0-6 months    ki1119695-PROBIT            BELARUS                        Control                1        1      27
Q1         0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               0       18      27
Q1         0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               1        4      27
Q3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      592    2943
Q3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      144    2943
Q3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     1785    2943
Q3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      422    2943
Q4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                0     1226    5736
Q4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      216    5736
Q4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     3572    5736
Q4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      722    5736
Q1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                0       23     139
Q1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                1        9     139
Q1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0       83     139
Q1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1       24     139
Q2         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                0       55     270
Q2         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                1       19     270
Q2         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0      157     270
Q2         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1       39     270
Q2         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                0       23      54
Q2         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                1        7      54
Q2         0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  0       15      54
Q2         0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  1        9      54
Q1         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                0       68     236
Q1         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                1       38     236
Q1         0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  0       94     236
Q1         0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  1       36     236
Q3         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                0        2       6
Q3         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                1        1       6
Q3         0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  0        3       6
Q3         0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  1        0       6
Q3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                0       32     339
Q3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                1       17     339
Q3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      209     339
Q3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       81     339
Q4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                0       44     350
Q4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                1       12     350
Q4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      219     350
Q4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       75     350
Q1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                0       26     233
Q1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                1       15     233
Q1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      128     233
Q1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       64     233
Q2         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                0       20     238
Q2         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                1       14     238
Q2         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      143     238
Q2         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       61     238
Q3         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0        4      21
Q3         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1        2      21
Q3         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0        9      21
Q3         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1        6      21
Q1         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0        6      16
Q1         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1        3      16
Q1         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0        6      16
Q1         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1        1      16
Q2         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0        2       9
Q2         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0        7       9
Q4         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0        6      24
Q4         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1        0      24
Q4         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0       14      24
Q4         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1        4      24
Q1         0-6 months    ki1148112-LCNI-5            MALAWI                         Control                0       30     194
Q1         0-6 months    ki1148112-LCNI-5            MALAWI                         Control                1       16     194
Q1         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    0       66     194
Q1         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    1       35     194
Q1         0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  0       23     194
Q1         0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  1       24     194
Q2         0-6 months    ki1148112-LCNI-5            MALAWI                         Control                0        9      66
Q2         0-6 months    ki1148112-LCNI-5            MALAWI                         Control                1        7      66
Q2         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    0       25      66
Q2         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    1        8      66
Q2         0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  0       14      66
Q2         0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  1        3      66
Q3         0-6 months    ki1148112-LCNI-5            MALAWI                         Control                0        4       7
Q3         0-6 months    ki1148112-LCNI-5            MALAWI                         Control                1        1       7
Q3         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    0        1       7
Q3         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    1        1       7
Q3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                0     2662    6915
Q3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                1      829    6915
Q3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     2739    6915
Q3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      685    6915
Q1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                0     2241    6779
Q1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                1     1095    6779
Q1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     2523    6779
Q1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      920    6779
Q2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                0     1511    4450
Q2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                1      673    4450
Q2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     1648    4450
Q2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      618    4450
Q4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                0      517    1193
Q4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                1       61    1193
Q4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0      545    1193
Q4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1       70    1193
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                0      362    1813
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                1      120    1813
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      360    1813
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1      113    1813
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  0      631    1813
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      227    1813
Q2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                0        6      46
Q2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                1        3      46
Q2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0       12      46
Q2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1        4      46
Q2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  0       15      46
Q2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  1        6      46
Q4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                0        4      15
Q4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                1        1      15
Q4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0        3      15
Q4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1        1      15
Q4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  0        2      15
Q4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  1        4      15
Q3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                0       13      63
Q3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                1        4      63
Q3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0       13      63
Q3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1        5      63
Q3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  0       18      63
Q3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  1       10      63
Q4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      240    1120
Q4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1       33    1120
Q4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      263    1120
Q4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1       22    1120
Q4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      484    1120
Q4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1       78    1120
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      194    1014
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1       44    1014
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      221    1014
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1       37    1014
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      413    1014
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      105    1014
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      128     725
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1       52     725
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      151     725
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1       39     725
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      267     725
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1       88     725
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      167     867
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1       52     867
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      188     867
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1       44     867
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      315     867
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      101     867
Q4         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0      433    1380
Q4         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1       23    1380
Q4         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      295    1380
Q4         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1       13    1380
Q4         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0      581    1380
Q4         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1       35    1380
Q1         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0      863    2719
Q1         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1       66    2719
Q1         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      583    2719
Q1         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1       39    2719
Q1         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0     1065    2719
Q1         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1      103    2719
Q3         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0      413    1229
Q3         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1       25    1229
Q3         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      270    1229
Q3         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1       14    1229
Q3         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0      471    1229
Q3         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1       36    1229
Q3         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0        8      11
Q3         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0        3      11
Q4         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0        4       6
Q4         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0        2       6
Q1         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       23      41
Q1         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       18      41
Q2         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0        3       9
Q2         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0        6       9
Q1         6-24 months   ki1000304-EU                INDIA                          Control                0      186     401
Q1         6-24 months   ki1000304-EU                INDIA                          Control                1       12     401
Q1         6-24 months   ki1000304-EU                INDIA                          Zinc                   0      191     401
Q1         6-24 months   ki1000304-EU                INDIA                          Zinc                   1       12     401
Q3         6-24 months   ki1000304-EU                INDIA                          Control                0      109     241
Q3         6-24 months   ki1000304-EU                INDIA                          Control                1        2     241
Q3         6-24 months   ki1000304-EU                INDIA                          Zinc                   0      123     241
Q3         6-24 months   ki1000304-EU                INDIA                          Zinc                   1        7     241
Q2         6-24 months   ki1000304-EU                INDIA                          Control                0      226     456
Q2         6-24 months   ki1000304-EU                INDIA                          Control                1       11     456
Q2         6-24 months   ki1000304-EU                INDIA                          Zinc                   0      209     456
Q2         6-24 months   ki1000304-EU                INDIA                          Zinc                   1       10     456
Q4         6-24 months   ki1000304-EU                INDIA                          Control                0       22      52
Q4         6-24 months   ki1000304-EU                INDIA                          Zinc                   0       30      52
Q1         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control                0      433     979
Q1         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control                1       52     979
Q1         6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   0      442     979
Q1         6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   1       52     979
Q2         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control                0      344     740
Q2         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control                1       25     740
Q2         6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   0      344     740
Q2         6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   1       27     740
Q3         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control                0      192     394
Q3         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control                1        6     394
Q3         6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   0      192     394
Q3         6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   1        4     394
Q4         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control                0       26      54
Q4         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control                1        1      54
Q4         6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   0       27      54
Q4         6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   1        0      54
Q3         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0       24     123
Q3         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1        3     123
Q3         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0       82     123
Q3         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1       14     123
Q4         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0       31     184
Q4         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1        1     184
Q4         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0      144     184
Q4         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1        8     184
Q1         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0       26     103
Q1         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1        4     103
Q1         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0       65     103
Q1         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1        8     103
Q2         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0       23      93
Q2         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1        2      93
Q2         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0       58      93
Q2         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1       10      93
Q1         6-24 months   ki1000304-ZnMort            INDIA                          Control                0      200     411
Q1         6-24 months   ki1000304-ZnMort            INDIA                          Zinc                   0      211     411
Q2         6-24 months   ki1000304-ZnMort            INDIA                          Control                0      180     347
Q2         6-24 months   ki1000304-ZnMort            INDIA                          Zinc                   0      167     347
Q3         6-24 months   ki1000304-ZnMort            INDIA                          Control                0       56     126
Q3         6-24 months   ki1000304-ZnMort            INDIA                          Zinc                   0       70     126
Q4         6-24 months   ki1000304-ZnMort            INDIA                          Zinc                   0        2       2
Q2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0       63     212
Q2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1       34     212
Q2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0       91     212
Q2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1       24     212
Q1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0       73     262
Q1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1       47     262
Q1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0       87     262
Q1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1       55     262
Q3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0       53     153
Q3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1       16     153
Q3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0       62     153
Q3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1       22     153
Q4         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0        9      20
Q4         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1        1      20
Q4         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0        9      20
Q4         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1        1      20
Q1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0       15     179
Q1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1       25     179
Q1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0       62     179
Q1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       77     179
Q4         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0        1      11
Q4         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1        1      11
Q4         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0        4      11
Q4         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1        5      11
Q3         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0        1      15
Q3         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1        2      15
Q3         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0        6      15
Q3         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1        6      15
Q2         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0        2      21
Q2         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1        1      21
Q2         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0        8      21
Q2         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       10      21
Q1         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       29     184
Q1         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1       13     184
Q1         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0       93     184
Q1         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       49     184
Q3         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       24     109
Q3         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1        2     109
Q3         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0       75     109
Q3         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1        8     109
Q2         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       44     193
Q2         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1       10     193
Q2         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0      102     193
Q2         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       37     193
Q4         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0        4      11
Q4         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0        7      11
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      374    1705
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       58    1705
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      374    1705
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       47    1705
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      727    1705
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1      125    1705
Q3         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0       15      75
Q3         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1        4      75
Q3         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0       17      75
Q3         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1        2      75
Q3         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0       36      75
Q3         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1        1      75
Q1         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0       10      57
Q1         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1        2      57
Q1         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0       13      57
Q1         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1        3      57
Q1         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0       24      57
Q1         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1        5      57
Q4         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0        2       4
Q4         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0        1       4
Q4         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0        1       4
Q1         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0     2883    3229
Q1         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1      346    3229
Q4         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0      183     196
Q4         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1       13     196
Q2         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0      549     611
Q2         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1       62     611
Q4         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                0       33      76
Q4         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1        3      76
Q4         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       33      76
Q4         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1        7      76
Q2         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                0       21      55
Q2         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1        7      55
Q2         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       16      55
Q2         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1       11      55
Q3         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                0        9      23
Q3         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1        1      23
Q3         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       10      23
Q3         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1        3      23
Q1         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                0        7      18
Q1         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1        4      18
Q1         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0        5      18
Q1         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1        2      18
Q3         6-24 months   ki1119695-PROBIT            BELARUS                        Control                0     6071   12941
Q3         6-24 months   ki1119695-PROBIT            BELARUS                        Control                1      261   12941
Q3         6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0     6356   12941
Q3         6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1      253   12941
Q4         6-24 months   ki1119695-PROBIT            BELARUS                        Control                0     1195    2742
Q4         6-24 months   ki1119695-PROBIT            BELARUS                        Control                1       38    2742
Q4         6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0     1470    2742
Q4         6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1       39    2742
Q2         6-24 months   ki1119695-PROBIT            BELARUS                        Control                0      223     591
Q2         6-24 months   ki1119695-PROBIT            BELARUS                        Control                1       10     591
Q2         6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0      340     591
Q2         6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1       18     591
Q1         6-24 months   ki1119695-PROBIT            BELARUS                        Control                0        6      29
Q1         6-24 months   ki1119695-PROBIT            BELARUS                        Control                1        0      29
Q1         6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0       22      29
Q1         6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1        1      29
Q3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      634    2947
Q3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      117    2947
Q3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     1817    2947
Q3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      379    2947
Q4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0     1312    5941
Q4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      182    5941
Q4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     3947    5941
Q4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      500    5941
Q1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0       29     137
Q1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1        8     137
Q1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0       77     137
Q1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1       23     137
Q2         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0       54     277
Q2         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1       14     277
Q2         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0      168     277
Q2         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1       41     277
Q2         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       28     109
Q2         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1       46     109
Q2         6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0       13     109
Q2         6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1       22     109
Q1         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       76     493
Q1         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1      115     493
Q1         6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0      146     493
Q1         6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1      156     493
Q4         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0        1       2
Q4         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1        1       2
Q3         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0        2      16
Q3         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1        7      16
Q3         6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0        3      16
Q3         6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1        4      16
Q3         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       46     339
Q3         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1        8     339
Q3         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      217     339
Q3         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       68     339
Q1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       37     266
Q1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1        9     266
Q1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      157     266
Q1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       63     266
Q4         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       46     370
Q4         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       14     370
Q4         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      260     370
Q4         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       50     370
Q2         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       32     210
Q2         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1        5     210
Q2         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      138     210
Q2         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       35     210
Q1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       51     221
Q1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       23     221
Q1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0      102     221
Q1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       45     221
Q3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       65     251
Q3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       19     251
Q3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0      126     251
Q3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       41     251
Q4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       73     264
Q4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       15     264
Q4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0      134     264
Q4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       42     264
Q2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       49     195
Q2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       17     195
Q2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0       82     195
Q2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       47     195
Q1         6-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       67     395
Q1         6-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       29     395
Q1         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0      134     395
Q1         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       67     395
Q1         6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       67     395
Q1         6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       31     395
Q2         6-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       26     164
Q2         6-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       12     164
Q2         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0       65     164
Q2         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       20     164
Q2         6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       27     164
Q2         6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       14     164
Q3         6-24 months   ki1148112-LCNI-5            MALAWI                         Control                0        5      18
Q3         6-24 months   ki1148112-LCNI-5            MALAWI                         Control                1        2      18
Q3         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0        4      18
Q3         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1        3      18
Q3         6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0        3      18
Q3         6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1        1      18
Q4         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0        1       1
Q3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     2122    5106
Q3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1      425    5106
Q3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     2111    5106
Q3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      448    5106
Q1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     1539    4212
Q1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1      494    4212
Q1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     1619    4212
Q1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      560    4212
Q2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     1142    2953
Q2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1      281    2953
Q2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     1216    2953
Q2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      314    2953
Q4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0      450    1019
Q4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1       33    1019
Q4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0      474    1019
Q4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1       62    1019
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0      313    1697
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1      148    1697
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      331    1697
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1      128    1697
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0      553    1697
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      224    1697
Q2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0        5      47
Q2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1        5      47
Q2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0       16      47
Q2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1        0      47
Q2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0       11      47
Q2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1       10      47
Q4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0        2      11
Q4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1        3      11
Q4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0        2      11
Q4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1        1      11
Q4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0        3      11
Q4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1        0      11
Q3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0       12      56
Q3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1        6      56
Q3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0       11      56
Q3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1        2      56
Q3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0       20      56
Q3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1        5      56
Q4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      236    1299
Q4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1       99    1299
Q4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      262    1299
Q4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1       54    1299
Q4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      478    1299
Q4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      170    1299
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      191    1287
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1      106    1287
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      216    1287
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1      102    1287
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      404    1287
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      268    1287
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      126    1049
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1      123    1049
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      150    1049
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1      127    1049
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      259    1049
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      264    1049
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      158    1182
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1      137    1182
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      180    1182
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1      120    1182
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      312    1182
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      275    1182
Q1         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0      872    3546
Q1         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1      349    3546
Q1         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      587    3546
Q1         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1      178    3546
Q1         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0     1076    3546
Q1         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1      484    3546
Q4         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0      435    1609
Q4         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1      101    1609
Q4         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      293    1609
Q4         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1       60    1609
Q4         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0      583    1609
Q4         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1      137    1609
Q3         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0      411    1542
Q3         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1      126    1542
Q3         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      275    1542
Q3         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1       79    1542
Q3         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0      474    1542
Q3         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1      177    1542
Q1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       45     123
Q1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1       18     123
Q1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       46     123
Q1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1       14     123
Q3         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       17      30
Q3         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1        4      30
Q3         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0        8      30
Q3         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        1      30
Q4         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0        7      15
Q4         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1        0      15
Q4         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0        7      15
Q4         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        1      15
Q2         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0        4      18
Q2         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1        1      18
Q2         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0        9      18
Q2         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        4      18
Q1         0-24 months   ki1000304-EU                INDIA                          Control                0      185     808
Q1         0-24 months   ki1000304-EU                INDIA                          Control                1      229     808
Q1         0-24 months   ki1000304-EU                INDIA                          Zinc                   0      185     808
Q1         0-24 months   ki1000304-EU                INDIA                          Zinc                   1      209     808
Q3         0-24 months   ki1000304-EU                INDIA                          Control                0      105     329
Q3         0-24 months   ki1000304-EU                INDIA                          Control                1       54     329
Q3         0-24 months   ki1000304-EU                INDIA                          Zinc                   0      122     329
Q3         0-24 months   ki1000304-EU                INDIA                          Zinc                   1       48     329
Q2         0-24 months   ki1000304-EU                INDIA                          Control                0      216     807
Q2         0-24 months   ki1000304-EU                INDIA                          Control                1      210     807
Q2         0-24 months   ki1000304-EU                INDIA                          Zinc                   0      206     807
Q2         0-24 months   ki1000304-EU                INDIA                          Zinc                   1      175     807
Q4         0-24 months   ki1000304-EU                INDIA                          Control                0       20      64
Q4         0-24 months   ki1000304-EU                INDIA                          Control                1        8      64
Q4         0-24 months   ki1000304-EU                INDIA                          Zinc                   0       30      64
Q4         0-24 months   ki1000304-EU                INDIA                          Zinc                   1        6      64
Q1         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control                0      425    1816
Q1         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control                1      499    1816
Q1         0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   0      435    1816
Q1         0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   1      457    1816
Q2         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control                0      341    1147
Q2         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control                1      228    1147
Q2         0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   0      341    1147
Q2         0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   1      237    1147
Q3         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control                0      187     515
Q3         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control                1       77     515
Q3         0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   0      190     515
Q3         0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   1       61     515
Q4         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control                0       25      62
Q4         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control                1        6      62
Q4         0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   0       26      62
Q4         0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                   1        5      62
Q4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0       30     233
Q4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1       16     233
Q4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0      136     233
Q4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1       51     233
Q3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0       24     210
Q3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1       28     210
Q3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0       75     210
Q3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1       83     210
Q1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0       25     194
Q1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1       29     194
Q1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0       62     194
Q1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1       78     194
Q2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0       20     166
Q2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1       26     166
Q2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0       51     166
Q2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1       69     166
Q1         0-24 months   ki1000304-ZnMort            INDIA                          Control                0      224    1108
Q1         0-24 months   ki1000304-ZnMort            INDIA                          Control                1      335    1108
Q1         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                   0      236    1108
Q1         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                   1      313    1108
Q2         0-24 months   ki1000304-ZnMort            INDIA                          Control                0      201     720
Q2         0-24 months   ki1000304-ZnMort            INDIA                          Control                1      149     720
Q2         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                   0      193     720
Q2         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                   1      177     720
Q3         0-24 months   ki1000304-ZnMort            INDIA                          Control                0       65     205
Q3         0-24 months   ki1000304-ZnMort            INDIA                          Control                1       39     205
Q3         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                   0       74     205
Q3         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                   1       27     205
Q4         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                   0        2       3
Q4         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                   1        1       3
Q2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0       58     305
Q2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1       85     305
Q2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0       80     305
Q2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1       82     305
Q1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0       62     428
Q1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1      134     428
Q1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0       77     428
Q1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1      155     428
Q3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0       46     191
Q3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1       42     191
Q3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0       59     191
Q3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1       44     191
Q4         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0       10      25
Q4         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1        2      25
Q4         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0        9      25
Q4         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1        4      25
Q1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0       15     337
Q1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1       71     337
Q1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0       68     337
Q1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1      183     337
Q2         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0        3      40
Q2         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1       10      40
Q2         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0        8      40
Q2         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       19      40
Q4         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0        1      16
Q4         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1        1      16
Q4         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0        4      16
Q4         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       10      16
Q3         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0        1      25
Q3         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1        4      25
Q3         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0        6      25
Q3         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       14      25
Q1         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       31     253
Q1         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1       30     253
Q1         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0       96     253
Q1         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       96     253
Q3         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       24     134
Q3         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1        9     134
Q3         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0       74     134
Q3         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       27     134
Q2         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       43     242
Q2         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1       25     242
Q2         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0      100     242
Q2         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       74     242
Q4         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0        3      12
Q4         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1        1      12
Q4         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0        8      12
Q4         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1        0      12
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      402    2082
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1      115    2082
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      405    2082
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1      111    2082
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      787    2082
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1      262    2082
Q3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0       18      92
Q3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1        7      92
Q3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0       18      92
Q3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1        2      92
Q3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0       43      92
Q3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1        4      92
Q1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0       11      69
Q1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1        6      69
Q1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0       12      69
Q1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1        7      69
Q1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0       26      69
Q1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1        7      69
Q4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0        1       4
Q4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1        1       4
Q4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0        1       4
Q4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1        0       4
Q4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0        1       4
Q4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1        0       4
Q1         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0     2831    4468
Q1         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1     1637    4468
Q4         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0      181     235
Q4         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1       54     235
Q2         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0      537     813
Q2         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1      276     813
Q4         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                0       32     107
Q4         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1       15     107
Q4         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       32     107
Q4         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1       28     107
Q1         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                0        7      40
Q1         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1       15      40
Q1         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0        5      40
Q1         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1       13      40
Q2         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                0       21      74
Q2         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1       18      74
Q2         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       14      74
Q2         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1       21      74
Q3         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                0        9      32
Q3         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1        8      32
Q3         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0        9      32
Q3         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1        6      32
Q3         0-24 months   ki1119695-PROBIT            BELARUS                        Control                0     5605   13286
Q3         0-24 months   ki1119695-PROBIT            BELARUS                        Control                1      924   13286
Q3         0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0     5929   13286
Q3         0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1      828   13286
Q4         0-24 months   ki1119695-PROBIT            BELARUS                        Control                0     1121    2803
Q4         0-24 months   ki1119695-PROBIT            BELARUS                        Control                1      140    2803
Q4         0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0     1412    2803
Q4         0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1      130    2803
Q2         0-24 months   ki1119695-PROBIT            BELARUS                        Control                0      199     615
Q2         0-24 months   ki1119695-PROBIT            BELARUS                        Control                1       47     615
Q2         0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0      312     615
Q2         0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1       57     615
Q1         0-24 months   ki1119695-PROBIT            BELARUS                        Control                0        5      31
Q1         0-24 months   ki1119695-PROBIT            BELARUS                        Control                1        2      31
Q1         0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0       17      31
Q1         0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1        7      31
Q3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      626    3807
Q3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      327    3807
Q3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     1794    3807
Q3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1     1060    3807
Q4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0     1304    7453
Q4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      574    7453
Q4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     3918    7453
Q4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1     1657    7453
Q1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0       28     177
Q1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1       17     177
Q1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0       69     177
Q1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1       63     177
Q2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0       55     355
Q2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1       37     355
Q2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0      161     355
Q2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      102     355
Q2         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       26     214
Q2         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1      111     214
Q2         0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0       15     214
Q2         0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1       62     214
Q1         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       78     979
Q1         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1      362     979
Q1         0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0      149     979
Q1         0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1      390     979
Q4         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1        2       2
Q3         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0        3      33
Q3         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1       18      33
Q3         0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0        5      33
Q3         0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1        7      33
Q1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       33     420
Q1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       37     420
Q1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      154     420
Q1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      196     420
Q3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       44     543
Q3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       43     543
Q3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      230     543
Q3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      226     543
Q4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       46     551
Q4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       46     551
Q4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      257     551
Q4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      202     551
Q2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       30     353
Q2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       27     353
Q2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      141     353
Q2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      155     353
Q1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       50     279
Q1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       45     279
Q1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0       94     279
Q1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       90     279
Q3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       63     329
Q3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       49     329
Q3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0      122     329
Q3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       95     329
Q4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       72     309
Q4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       31     309
Q4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0      127     309
Q4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       79     309
Q2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       43     239
Q2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       37     239
Q2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0       78     239
Q2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       81     239
Q1         0-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       61     575
Q1         0-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       79     575
Q1         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0      114     575
Q1         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1      175     575
Q1         0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       56     575
Q1         0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       90     575
Q2         0-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       26     216
Q2         0-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       26     216
Q2         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0       58     216
Q2         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       52     216
Q2         0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       23     216
Q2         0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       31     216
Q3         0-24 months   ki1148112-LCNI-5            MALAWI                         Control                0        5      22
Q3         0-24 months   ki1148112-LCNI-5            MALAWI                         Control                1        3      22
Q3         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0        2      22
Q3         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1        7      22
Q3         0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0        2      22
Q3         0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1        3      22
Q4         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0        1       1
Q3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     2578    8200
Q3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1     1540    8200
Q3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     2664    8200
Q3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1     1418    8200
Q1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     2106    8076
Q1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1     1886    8076
Q1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     2291    8076
Q1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1     1793    8076
Q2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     1406    5238
Q2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1     1148    5238
Q2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     1571    5238
Q2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1     1113    5238
Q4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0      554    1395
Q4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1      117    1395
Q4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0      574    1395
Q4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      150    1395
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0      284    2157
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1      296    2157
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      297    2157
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1      274    2157
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0      508    2157
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      498    2157
Q2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0        3      58
Q2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1       10      58
Q2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0       13      58
Q2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1        5      58
Q2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0       10      58
Q2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1       17      58
Q4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0        2      17
Q4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1        4      17
Q4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0        2      17
Q4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1        2      17
Q4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0        2      17
Q4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1        5      17
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0        9      74
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1       10      74
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0        9      74
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1       10      74
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0       16      74
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1       20      74
Q3         0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                0        4      13
Q3         0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                1        2      13
Q3         0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    0        4      13
Q3         0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    1        3      13
Q2         0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                0        2       6
Q2         0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    0        4       6
Q4         0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                0        6      14
Q4         0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                1        0      14
Q4         0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    0        6      14
Q4         0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    1        2      14
Q1         0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                0        6      10
Q1         0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                1        3      10
Q1         0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    0        1      10
Q1         0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    1        0      10
Q3         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0       65     166
Q3         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       19     166
Q3         6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       65     166
Q3         6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1       17     166
Q4         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0       73     175
Q4         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       15     175
Q4         6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       68     175
Q4         6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1       19     175
Q1         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0       51     144
Q1         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       23     144
Q1         6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       43     144
Q1         6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1       27     144
Q2         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0       49     131
Q2         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       17     131
Q2         6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       39     131
Q2         6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1       26     131
Q3         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0       63     220
Q3         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       49     220
Q3         0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       64     220
Q3         0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1       44     220
Q4         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0       72     205
Q4         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       31     205
Q4         0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       65     205
Q4         0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1       37     205
Q1         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0       50     184
Q1         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       45     184
Q1         0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       39     184
Q1         0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1       50     184
Q2         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0       43     162
Q2         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       37     162
Q2         0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       38     162
Q2         0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1       44     162


The following strata were considered:

* meducyrs: Q1, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q1, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* meducyrs: Q1, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* meducyrs: Q1, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q1, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* meducyrs: Q1, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* meducyrs: Q1, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q1, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* meducyrs: Q1, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q1, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q1, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q1, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q1, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* meducyrs: Q1, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* meducyrs: Q1, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q1, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q1, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* meducyrs: Q1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q1, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* meducyrs: Q1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q1, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* meducyrs: Q1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q1, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q1, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* meducyrs: Q1, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* meducyrs: Q1, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q1, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* meducyrs: Q1, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* meducyrs: Q1, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q1, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* meducyrs: Q1, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q1, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q1, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q1, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q1, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* meducyrs: Q1, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* meducyrs: Q1, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q1, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q1, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* meducyrs: Q1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q1, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* meducyrs: Q1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q2, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q2, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* meducyrs: Q2, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q2, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* meducyrs: Q2, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* meducyrs: Q2, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q2, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* meducyrs: Q2, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q2, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q2, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q2, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q2, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* meducyrs: Q2, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* meducyrs: Q2, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q2, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q2, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q2, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* meducyrs: Q2, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q2, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q2, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* meducyrs: Q2, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q2, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q2, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* meducyrs: Q2, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q2, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* meducyrs: Q2, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* meducyrs: Q2, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* meducyrs: Q2, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q2, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q2, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q2, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q2, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* meducyrs: Q2, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* meducyrs: Q2, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q2, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q2, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q2, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* meducyrs: Q2, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q2, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q2, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* meducyrs: Q2, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q2, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q2, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* meducyrs: Q2, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q2, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* meducyrs: Q2, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* meducyrs: Q2, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q2, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* meducyrs: Q2, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q2, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q2, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q2, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q2, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* meducyrs: Q2, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* meducyrs: Q2, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q2, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q2, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q2, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* meducyrs: Q2, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q2, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q2, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* meducyrs: Q2, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q3, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q3, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* meducyrs: Q3, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* meducyrs: Q3, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q3, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* meducyrs: Q3, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* meducyrs: Q3, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q3, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* meducyrs: Q3, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q3, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q3, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q3, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q3, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* meducyrs: Q3, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q3, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q3, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q3, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* meducyrs: Q3, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q3, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q3, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* meducyrs: Q3, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q3, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q3, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* meducyrs: Q3, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q3, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q3, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* meducyrs: Q3, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q4, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q4, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* meducyrs: Q4, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q4, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q4, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* meducyrs: Q4, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* meducyrs: Q4, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q4, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* meducyrs: Q4, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q4, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q4, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q4, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q4, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* meducyrs: Q4, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* meducyrs: Q4, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q4, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q4, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* meducyrs: Q4, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q4, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* meducyrs: Q4, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q4, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q4, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* meducyrs: Q4, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* meducyrs: Q3, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* meducyrs: Q2, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* meducyrs: Q4, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* meducyrs: Q4, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* meducyrs: Q4, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q2, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* meducyrs: Q2, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* meducyrs: Q4, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* meducyrs: Q4, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q4, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q4, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q4, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* meducyrs: Q2, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* meducyrs: Q4, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* meducyrs: Q2, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q2, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q4, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* meducyrs: Q2, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q3, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q2, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q4, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q3, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q2, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q1, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q2, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q2, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q1, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* meducyrs: Q1, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* meducyrs: Q1, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q3, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q4, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q2, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q4, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q3, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q3, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q2, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* meducyrs: Q2, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q3, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* meducyrs: Q3, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* meducyrs: Q1, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q3, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* meducyrs: Q3, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q4, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* meducyrs: Q2, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q4, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* meducyrs: Q3, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q2, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q4, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* meducyrs: Q1, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##           ever_stunted
## tr            0    1
##   Control     0    0
##   LNS         0    0
##   Maternal    0    0
##   Other       0    0
##   VitA        0    0
##   Zinc     2831 1637
##           ever_stunted
## tr          0
##   Control  23
##   LNS       0
##   Maternal 18
##   Other     0
##   VitA      0
##   Zinc      0
##           ever_stunted
## tr           0
##   Control  200
##   LNS        0
##   Maternal   0
##   Other      0
##   VitA       0
##   Zinc     211
##           ever_stunted
## tr            0    1
##   Control     0    0
##   LNS         0    0
##   Maternal    0    0
##   Other       0    0
##   VitA        0    0
##   Zinc     2883  346
##           ever_stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     537 276
##           ever_stunted
## tr           0
##   Control  180
##   LNS        0
##   Maternal   0
##   Other      0
##   VitA       0
##   Zinc     167
##           ever_stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     549  62
##           ever_stunted
## tr          0
##   Control  56
##   LNS       0
##   Maternal  0
##   Other     0
##   VitA      0
##   Zinc     70
##           ever_stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     181  54
##           ever_stunted
## tr          0
##   Control  22
##   LNS       0
##   Maternal  0
##   Other     0
##   VitA      0
##   Zinc     30
##           ever_stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     183  13
```




# Results Detail

## Results Plots
![](/tmp/cc88cff4-8b6c-4916-998c-9fefe4ba469d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cc88cff4-8b6c-4916-998c-9fefe4ba469d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cc88cff4-8b6c-4916-998c-9fefe4ba469d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cc88cff4-8b6c-4916-998c-9fefe4ba469d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


meducyrs   agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Q4         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.3009709   0.2561363   0.3458055
Q4         0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.3627451   0.3161091   0.4093811
Q4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2955224   0.2466435   0.3444013
Q4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1708861   0.1293685   0.2124037
Q4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2623457   0.2284619   0.2962294
Q4         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.1884328   0.1553166   0.2215491
Q4         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.1699717   0.1307767   0.2091667
Q4         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.1902778   0.1615978   0.2189578
Q4         0-24 months   ki1000304-EU                INDIA                          Control              NA                0.2857143   0.1170626   0.4543660
Q4         0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.1666667   0.0439650   0.2893683
Q4         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.1935484   0.1234429   0.2636539
Q4         0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.1612903   0.0960257   0.2265550
Q4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.3478261   0.3205948   0.3750574
Q4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.2727273   0.2213868   0.3240677
Q4         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.3191489   0.2603357   0.3779622
Q4         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.4666667   0.3955483   0.5377850
Q4         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1110230   0.0990643   0.1229817
Q4         0-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0843061   0.0732211   0.0953911
Q4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3056443   0.3003939   0.3108947
Q4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.2972197   0.2882451   0.3061944
Q4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5000000   0.4829252   0.5170748
Q4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4400871   0.4022231   0.4779512
Q4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3009709   0.2712999   0.3306419
Q4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.3834951   0.3390805   0.4279098
Q4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1743666   0.1562864   0.1924469
Q4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2071823   0.1898215   0.2245431
Q4         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.2500000   0.1939837   0.3060163
Q4         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.2456140   0.1822346   0.3089934
Q4         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0560520   0.0497518   0.0623521
Q4         0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0436535   0.0370006   0.0503063
Q4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1497920   0.1451611   0.1544229
Q4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1681416   0.1597669   0.1765163
Q4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2142857   0.1970661   0.2315054
Q4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2551020   0.2131860   0.2970181
Q4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1055363   0.0901686   0.1209040
Q4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.1138211   0.0993957   0.1282466
Q4         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.1704545   0.1306057   0.2103034
Q4         6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2183908   0.1749278   0.2618538
Q4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1208791   0.0821925   0.1595657
Q4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.0771930   0.0461928   0.1081931
Q4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1387900   0.1101939   0.1673862
Q4         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0504386   0.0303446   0.0705326
Q4         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0422078   0.0197451   0.0646705
Q4         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0568182   0.0385306   0.0751058
Q4         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0308191   0.0203523   0.0412860
Q4         6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0258449   0.0183707   0.0333191
Q4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1218206   0.1176495   0.1259917
Q4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1124353   0.1054849   0.1193858
Q4         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2333333   0.2159553   0.2507114
Q4         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.1612903   0.1269405   0.1956402
Q4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.1704545   0.1441164   0.1967927
Q4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2386364   0.1964520   0.2808208
Q4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.0683230   0.0557312   0.0809147
Q4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.1156716   0.0986940   0.1326493
Q1         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.4736842   0.4217034   0.5256650
Q1         0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.5617978   0.5118017   0.6117938
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4939759   0.4318470   0.5561049
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.4584838   0.3997777   0.5171898
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.5047801   0.4619100   0.5476502
Q1         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2858313   0.2604854   0.3111771
Q1         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2326797   0.2027332   0.2626262
Q1         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3102564   0.2872975   0.3332153
Q1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.2857143   0.2283439   0.3430847
Q1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.2333333   0.1809150   0.2857516
Q1         0-24 months   ki1000304-EU                INDIA                          Control              NA                0.5531401   0.5052197   0.6010605
Q1         0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.5304569   0.4811472   0.5797665
Q1         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.5400433   0.5236879   0.5563987
Q1         0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.5123318   0.4962153   0.5284484
Q1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.5370370   0.4999228   0.5741513
Q1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.5571429   0.4976112   0.6166745
Q1         0-24 months   ki1000304-ZnMort            INDIA                          Control              NA                0.5992844   0.5586426   0.6399262
Q1         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.5701275   0.5286976   0.6115574
Q1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.6836735   0.6437736   0.7235733
Q1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.6681034   0.6342674   0.7019395
Q1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.8255814   0.8050845   0.8460783
Q1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.7290837   0.6880721   0.7700953
Q1         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.4918033   0.4614948   0.5221118
Q1         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.5000000   0.4462216   0.5537784
Q1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.3529412   0.1241092   0.5817732
Q1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.3684211   0.1499331   0.5869090
Q1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2121212   0.0716191   0.3526234
Q1         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.6818182   0.5734082   0.7902281
Q1         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.7222222   0.6279234   0.8165210
Q1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3777778   0.3416616   0.4138940
Q1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.4772727   0.4135473   0.5409982
Q1         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.8227273   0.8066814   0.8387731
Q1         0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7235622   0.7027643   0.7443600
Q1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5285714   0.5090584   0.5480845
Q1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5600000   0.5166119   0.6033881
Q1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.4736842   0.4394348   0.5079336
Q1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.4891304   0.4414105   0.5368504
Q1         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.5642857   0.4820780   0.6464934
Q1         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.6055363   0.5491400   0.6619327
Q1         0-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.6164384   0.5374956   0.6953811
Q1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4724449   0.4632611   0.4816287
Q1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.4390304   0.4293288   0.4487319
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.5103448   0.4599547   0.5607349
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4798599   0.4305949   0.5291249
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4950298   0.4574164   0.5326432
Q1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3125000   0.2328221   0.3921779
Q1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.1515152   0.0889246   0.2141057
Q1         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4000000   0.3474730   0.4525270
Q1         0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.4166667   0.3625009   0.4708324
Q1         0-6 months    ki1000304-ZnMort            INDIA                          Control              NA                0.4666667   0.3201145   0.6132188
Q1         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                 NA                0.4791667   0.3370753   0.6212580
Q1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3416149   0.3262405   0.3569893
Q1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3432836   0.3069514   0.3796157
Q1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.4117647   0.3852574   0.4382720
Q1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.3705179   0.3258198   0.4152160
Q1         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.1475410   0.1260406   0.1690413
Q1         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.1406250   0.1032345   0.1780155
Q1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2812500   0.2452576   0.3172424
Q1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.2242991   0.1632395   0.2853587
Q1         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.3584906   0.3173991   0.3995820
Q1         0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.2769231   0.2344610   0.3193852
Q1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3658537   0.3398541   0.3918532
Q1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3333333   0.2782690   0.3883977
Q1         0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3478261   0.2098340   0.4858182
Q1         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3465347   0.2534894   0.4395799
Q1         0-6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.5106383   0.3673558   0.6539208
Q1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3282374   0.3186502   0.3378246
Q1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2672088   0.2584913   0.2759263
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2489627   0.2055537   0.2923716
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2389006   0.1962299   0.2815714
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2645688   0.2287902   0.3003473
Q1         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.3108108   0.2564317   0.3651899
Q1         6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.3857143   0.3300898   0.4413388
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2888889   0.2226298   0.3551480
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2052632   0.1477936   0.2627328
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2478873   0.2029402   0.2928345
Q1         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0710441   0.0545214   0.0875669
Q1         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0627010   0.0436460   0.0817560
Q1         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0881849   0.0719198   0.1044500
Q1         6-24 months   ki1000304-EU                INDIA                          Control              NA                0.0606061   0.0273294   0.0938827
Q1         6-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.0591133   0.0266305   0.0915961
Q1         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.1072165   0.0935687   0.1208643
Q1         6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.1052632   0.0916005   0.1189259
Q1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3916667   0.3121463   0.4711871
Q1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3873239   0.3557329   0.4189150
Q1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.6250000   0.5913800   0.6586200
Q1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.5539568   0.4896073   0.6183064
Q1         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.3095238   0.2775231   0.3415245
Q1         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.3450704   0.2845630   0.4055779
Q1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2162162   0.1802610   0.2521714
Q1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.2300000   0.1695735   0.2904265
Q1         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.6020942   0.5751739   0.6290146
Q1         6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.5165563   0.4819960   0.5511166
Q1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.1956522   0.1757900   0.2155144
Q1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2863636   0.2368650   0.3358623
Q1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3108108   0.2754214   0.3462003
Q1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.3061224   0.2564531   0.3557918
Q1         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3020833   0.2101172   0.3940495
Q1         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3333333   0.2680813   0.3985854
Q1         6-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.3163265   0.2241378   0.4085152
Q1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2429907   0.2323342   0.2536471
Q1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2569986   0.2459155   0.2680818
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3210412   0.2681017   0.3739807
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2788671   0.2291138   0.3286204
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2882883   0.2508995   0.3256770
Q2         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.4625000   0.4083788   0.5166212
Q2         0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.5365854   0.4817843   0.5913864
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4644068   0.4074707   0.5213429
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.4000000   0.3445404   0.4554596
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4684838   0.4280990   0.5088687
Q2         0-24 months   ki1000304-EU                INDIA                          Control              NA                0.4929577   0.4454527   0.5404628
Q2         0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4593176   0.4092470   0.5093882
Q2         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4007030   0.3807199   0.4206861
Q2         0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.4100346   0.3898202   0.4302490
Q2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.5652174   0.5253998   0.6050350
Q2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.5750000   0.5108685   0.6391315
Q2         0-24 months   ki1000304-ZnMort            INDIA                          Control              NA                0.4257143   0.3738774   0.4775512
Q2         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.4783784   0.4274438   0.5293129
Q2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.5944056   0.5768140   0.6119971
Q2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.5061728   0.4756652   0.5366805
Q2         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.3676471   0.3353783   0.3999158
Q2         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.4252874   0.3723609   0.4782138
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2224371   0.1865798   0.2582945
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2151163   0.1796540   0.2505786
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2497617   0.2235601   0.2759632
Q2         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.4615385   0.3785181   0.5445588
Q2         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.6000000   0.5227123   0.6772877
Q2         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1910569   0.1526945   0.2294193
Q2         0-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1544715   0.1276186   0.1813244
Q2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.4021739   0.3761711   0.4281767
Q2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.3878327   0.3441442   0.4315212
Q2         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.8102190   0.7680843   0.8523536
Q2         0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.8051948   0.7732906   0.8370990
Q2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4736842   0.4527241   0.4946444
Q2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5236486   0.4758716   0.5714257
Q2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.4625000   0.4258520   0.4991480
Q2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.5094340   0.4576313   0.5612366
Q2         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.5000000   0.3637853   0.6362147
Q2         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4727273   0.3792120   0.5662425
Q2         0-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.5740741   0.4418806   0.7062675
Q2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4494910   0.4379088   0.4610732
Q2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.4146796   0.4031794   0.4261798
Q2         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.2372881   0.1793273   0.2952490
Q2         0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3076923   0.2486586   0.3667260
Q2         0-6 months    ki1000304-ZnMort            INDIA                          Control              NA                0.3636364   0.1983422   0.5289306
Q2         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                 NA                0.3157895   0.1669459   0.4646331
Q2         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2682927   0.2566906   0.2798948
Q2         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3040000   0.2970964   0.3109036
Q2         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.3846154   0.2975703   0.4716604
Q2         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.4444444   0.3163176   0.5725713
Q2         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.1176471   0.0959950   0.1392992
Q2         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.1676301   0.1275903   0.2076698
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0682261   0.0464026   0.0900497
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0605469   0.0398835   0.0812103
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0760346   0.0599141   0.0921552
Q2         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.1074380   0.0849113   0.1299647
Q2         0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0940171   0.0768905   0.1111437
Q2         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2567568   0.2294272   0.2840863
Q2         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1989796   0.1583311   0.2396281
Q2         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.2333333   0.1484611   0.3182056
Q2         0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.3750000   0.2881091   0.4618909
Q2         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4117647   0.3880823   0.4354471
Q2         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2990196   0.2450557   0.3529835
Q2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3081502   0.2965761   0.3197242
Q2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2727273   0.2616168   0.2838377
Q2         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2575758   0.2042188   0.3109327
Q2         6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.4000000   0.3406797   0.4593203
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2374429   0.1810542   0.2938317
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1896552   0.1391807   0.2401297
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2427885   0.2015621   0.2840148
Q2         6-24 months   ki1000304-EU                INDIA                          Control              NA                0.0464135   0.0196000   0.0732270
Q2         6-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.0456621   0.0179843   0.0733399
Q2         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.0677507   0.0549555   0.0805458
Q2         6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.0727763   0.0595150   0.0860375
Q2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3505155   0.3045876   0.3964433
Q2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2086957   0.1971834   0.2202079
Q2         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.1851852   0.1561217   0.2142487
Q2         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.2661871   0.2131338   0.3192403
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1342593   0.1021005   0.1664180
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1116390   0.0815479   0.1417300
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1467136   0.1229486   0.1704786
Q2         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.2500000   0.1675958   0.3324042
Q2         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.4074074   0.3155859   0.4992289
Q2         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0429185   0.0232375   0.0625994
Q2         6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0502793   0.0380814   0.0624773
Q2         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2058824   0.1822471   0.2295176
Q2         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1961722   0.1554786   0.2368659
Q2         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.6216216   0.5462574   0.6969858
Q2         6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.6285714   0.5769331   0.6802097
Q2         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.1351351   0.1156804   0.1545898
Q2         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2023121   0.1528793   0.2517450
Q2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2575758   0.2217760   0.2933755
Q2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.3643411   0.3092615   0.4194207
Q2         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3157895   0.1675451   0.4640338
Q2         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2352941   0.1448418   0.3257464
Q2         6-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.3414634   0.1958685   0.4870584
Q2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1974701   0.1858105   0.2091298
Q2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2052288   0.1933675   0.2170900
Q3         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.4375000   0.3906215   0.4843785
Q3         0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.4074074   0.3618122   0.4530026
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3569024   0.3023954   0.4114093
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3207547   0.2694328   0.3720767
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3988095   0.3617738   0.4358453
Q3         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2346369   0.1987832   0.2704905
Q3         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2231638   0.1797764   0.2665513
Q3         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2718894   0.2376999   0.3060789
Q3         0-24 months   ki1000304-EU                INDIA                          Control              NA                0.3396226   0.2658993   0.4133460
Q3         0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.2823529   0.2145831   0.3501228
Q3         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.2916667   0.2635329   0.3198004
Q3         0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.2430279   0.2171417   0.2689141
Q3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.5384615   0.5048299   0.5720932
Q3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.5253165   0.4665937   0.5840392
Q3         0-24 months   ki1000304-ZnMort            INDIA                          Control              NA                0.3750000   0.2817285   0.4682715
Q3         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.2673267   0.1808049   0.3538485
Q3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.4772727   0.3849679   0.5695776
Q3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.4271845   0.3536494   0.5007196
Q3         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.2727273   0.2351660   0.3102885
Q3         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.2673267   0.2020277   0.3326258
Q3         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.4705882   0.3425222   0.5986543
Q3         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.4000000   0.2819289   0.5180711
Q3         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1415224   0.1281626   0.1548823
Q3         0-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1225396   0.1125877   0.1324915
Q3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3431270   0.3355806   0.3506733
Q3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.3714085   0.3581175   0.3846996
Q3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4942529   0.4774048   0.5111009
Q3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4956140   0.4570410   0.5341871
Q3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.4375000   0.4061763   0.4688237
Q3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.4377880   0.3941841   0.4813919
Q3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3739679   0.3656218   0.3823141
Q3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3473787   0.3388959   0.3558616
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.5263158   0.3077391   0.7448925
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.5263158   0.2935498   0.7590818
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.5555556   0.3880122   0.7230989
Q3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2054795   0.1548320   0.2561270
Q3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.1363636   0.0916163   0.1811109
Q3         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.1818182   0.1492892   0.2143472
Q3         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.0891089   0.0470726   0.1311452
Q3         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0690472   0.0589873   0.0791072
Q3         0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0639963   0.0566866   0.0713060
Q3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1956522   0.1884836   0.2028208
Q3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1912098   0.1789041   0.2035155
Q3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3469388   0.3276462   0.3662314
Q3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2793103   0.2350712   0.3235495
Q3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2374678   0.2295110   0.2454246
Q3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2000584   0.1928140   0.2073028
Q3         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2261905   0.1807811   0.2715999
Q3         6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2073171   0.1638434   0.2507907
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1848739   0.1355311   0.2342168
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1434109   0.1006221   0.1861996
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2027027   0.1680659   0.2373395
Q3         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0570776   0.0353427   0.0788126
Q3         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0492958   0.0241078   0.0744837
Q3         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0710059   0.0486406   0.0933712
Q3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2318841   0.1446294   0.3191387
Q3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2619048   0.2394907   0.2843189
Q3         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0412192   0.0332599   0.0491785
Q3         6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0382811   0.0344756   0.0420866
Q3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1557923   0.1491814   0.1624032
Q3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1725865   0.1608071   0.1843659
Q3         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.1481481   0.1330328   0.1632635
Q3         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2385965   0.1969334   0.2802596
Q3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2261905   0.1961895   0.2561914
Q3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2455090   0.2019919   0.2890261
Q3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1668630   0.1589072   0.1748187
Q3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.1750684   0.1660935   0.1840433


### Parameter: E(Y)


meducyrs   agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Q4         0-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.3317073   0.2668597   0.3965549
Q4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2486528   0.2251387   0.2721669
Q4         0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.1852082   0.1662211   0.2041953
Q4         0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.2187500   0.1166685   0.3208315
Q4         0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.1774194   0.0815515   0.2732872
Q4         0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.2875536   0.2293112   0.3457961
Q4         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.4018692   0.3085361   0.4952022
Q4         0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0963254   0.0787386   0.1139121
Q4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2993425   0.2889446   0.3097405
Q4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4500907   0.4085129   0.4916686
Q4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.3559871   0.3023880   0.4095861
Q4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1913978   0.1663350   0.2164607
Q4         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.2475248   0.1629378   0.3321117
Q4         0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0492647   0.0395447   0.0589847
Q4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1635286   0.1539566   0.1731006
Q4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2485714   0.2032290   0.2939139
Q4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1098072   0.0887328   0.1308816
Q4         6-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.1942857   0.1352004   0.2533710
Q4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1187500   0.0997961   0.1377039
Q4         6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0514493   0.0397896   0.0631089
Q4         6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0280817   0.0151547   0.0410087
Q4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1147955   0.1066889   0.1229021
Q4         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.1729730   0.1343822   0.2115638
Q4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2159091   0.1660192   0.2657990
Q4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.0932287   0.0719422   0.1145151
Q1         0-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.5163043   0.4439005   0.5887082
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4899905   0.4597248   0.5202561
Q1         0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2851100   0.2702484   0.2999716
Q1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2601626   0.1823126   0.3380126
Q1         0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.5420792   0.5077046   0.5764538
Q1         0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.5264317   0.5034611   0.5494023
Q1         0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.5515464   0.4813816   0.6217112
Q1         0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.5848375   0.5558106   0.6138645
Q1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.6752336   0.6227771   0.7276902
Q1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.7537092   0.7076407   0.7997777
Q1         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.4980237   0.4362911   0.5597563
Q1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2898551   0.1820206   0.3976895
Q1         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.7000000   0.5561780   0.8438220
Q1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.4519774   0.3784500   0.5255048
Q1         0-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7681307   0.7416812   0.7945803
Q1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5547619   0.5071747   0.6023491
Q1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4838710   0.4251261   0.5426158
Q1         0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5982609   0.5581549   0.6383669
Q1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.4555473   0.4420809   0.4690137
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4951321   0.4693979   0.5208664
Q1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2307692   0.1275465   0.3339920
Q1         0-6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4085366   0.3330736   0.4839995
Q1         0-6 months    ki1000304-ZnMort            INDIA                          NA                   NA                0.4731183   0.3710959   0.5751407
Q1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3425414   0.3026277   0.3824551
Q1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.3809524   0.3289500   0.4329547
Q1         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.1422925   0.0991596   0.1854254
Q1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2374101   0.1664190   0.3084011
Q1         0-6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.3135593   0.2542428   0.3728758
Q1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3390558   0.2781411   0.3999705
Q1         0-6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3865979   0.3178956   0.4553003
Q1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2972415   0.2840556   0.3104273
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2537231   0.2303756   0.2770706
Q1         6-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.3472222   0.2691913   0.4252531
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2468966   0.2154869   0.2783062
Q1         6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0764987   0.0665063   0.0864911
Q1         6-24 months   ki1000304-EU                INDIA                          NA                   NA                0.0598504   0.0366043   0.0830965
Q1         6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.1062308   0.0869193   0.1255424
Q1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3893130   0.3039707   0.4746553
Q1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.5698324   0.4970996   0.6425652
Q1         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.3369565   0.2684739   0.4054392
Q1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2262774   0.1559553   0.2965995
Q1         6-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.5496957   0.5057335   0.5936580
Q1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2706767   0.2171820   0.3241714
Q1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.3076923   0.2467043   0.3686803
Q1         6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3215190   0.2754008   0.3676372
Q1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2502374   0.2348893   0.2655856
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2946376   0.2685239   0.3207513
Q2         0-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.5000000   0.4227666   0.5772334
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4500846   0.4217108   0.4784584
Q2         0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.4770756   0.4425935   0.5115577
Q2         0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4054054   0.3769797   0.4338311
Q2         0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.5722892   0.4967992   0.6477791
Q2         0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.4527778   0.4163940   0.4891616
Q2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.5475410   0.4969739   0.5981080
Q2         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.4090909   0.3470169   0.4711649
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2343900   0.2161894   0.2525906
Q2         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.5270270   0.4124965   0.6415576
Q2         0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1691057   0.1209010   0.2173103
Q2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3915493   0.3407038   0.4423948
Q2         0-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.8084112   0.7555594   0.8612630
Q2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5155807   0.4633729   0.5677886
Q2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4937238   0.4302061   0.5572416
Q2         0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5046296   0.4377983   0.5714610
Q2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.4316533   0.4152807   0.4480259
Q2         0-6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.2702703   0.1872791   0.3532614
Q2         0-6 months    ki1000304-ZnMort            INDIA                          NA                   NA                0.3380282   0.2272140   0.4488423
Q2         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2862903   0.2670481   0.3055325
Q2         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.4250000   0.2698527   0.5801473
Q2         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.1535270   0.1079189   0.1991350
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0702519   0.0592236   0.0812803
Q2         0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0994941   0.0709605   0.1280277
Q2         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2148148   0.1657364   0.2638932
Q2         0-6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.2962963   0.1733634   0.4192292
Q2         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3151261   0.2559806   0.3742715
Q2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2901124   0.2740030   0.3062217
Q2         6-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.3282443   0.2475244   0.4089642
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2272203   0.1993115   0.2551291
Q2         6-24 months   ki1000304-EU                INDIA                          NA                   NA                0.0460526   0.0267937   0.0653115
Q2         6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.0702703   0.0518418   0.0886988
Q2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2735849   0.2072306   0.3399392
Q2         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.2435233   0.1828126   0.3042341
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1348974   0.1186774   0.1511173
Q2         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.3272727   0.2021242   0.4524212
Q2         6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0473773   0.0243035   0.0704512
Q2         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1985560   0.1514938   0.2456181
Q2         6-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.6238532   0.5324932   0.7152132
Q2         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.1904762   0.1372396   0.2437128
Q2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.3282051   0.2621300   0.3942803
Q2         6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.2804878   0.2115225   0.3494531
Q2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2014900   0.1848719   0.2181081
Q3         0-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.4227273   0.3573018   0.4881527
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3698524   0.3434670   0.3962377
Q3         0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2477302   0.2261765   0.2692840
Q3         0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.3100304   0.2599776   0.3600832
Q3         0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.2679612   0.2296726   0.3062498
Q3         0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.5285714   0.4608954   0.5962474
Q3         0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.3219512   0.2578364   0.3860661
Q3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.4502618   0.3302565   0.5702670
Q3         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.2686567   0.1933243   0.3439891
Q3         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.4375000   0.2628705   0.6121295
Q3         0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1318681   0.1141532   0.1495831
Q3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3643289   0.3490400   0.3796178
Q3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4953959   0.4533039   0.5374880
Q3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4376900   0.3840013   0.4913786
Q3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3607317   0.3487650   0.3726985
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.5405405   0.4248727   0.6562083
Q3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.1677019   0.0935764   0.2418273
Q3         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.1119403   0.0583561   0.1655245
Q3         0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0664850   0.0538957   0.0790744
Q3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1923208   0.1780791   0.2065624
Q3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2890855   0.2407561   0.3374150
Q3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2189443   0.2080552   0.2298335
Q3         6-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2168675   0.1539863   0.2797487
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1834320   0.1595990   0.2072649
Q3         6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0610252   0.0476368   0.0744137
Q3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2483660   0.1593596   0.3373724
Q3         6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0397187   0.0307751   0.0486624
Q3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1683068   0.1547965   0.1818170
Q3         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2241888   0.1797283   0.2686493
Q3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2390438   0.1861754   0.2919123
Q3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1709753   0.1589719   0.1829787


### Parameter: RR


meducyrs   agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Q4         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.2052498   0.9899641   1.4673533
Q4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.5782509   0.4309951   0.7758187
Q4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.8877354   0.7196904   1.0950182
Q4         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.9020279   0.6749993   1.2054150
Q4         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0097910   0.8010880   1.2728662
Q4         0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.5833333   0.2270407   1.4987522
Q4         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.8333333   0.4841320   1.4344114
Q4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           0.7840909   0.6394738   0.9614132
Q4         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           1.4622222   1.1512231   1.8572368
Q4         0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7593571   0.6406127   0.9001120
Q4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9724367   0.9392346   1.0068125
Q4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8801743   0.8023564   0.9655395
Q4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.2741935   1.0944163   1.4835025
Q4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.1881995   1.0399422   1.3575927
Q4         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           0.9824561   0.6980612   1.3827155
Q4         0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7788030   0.6448516   0.9405795
Q4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.1225008   1.0585889   1.1902713
Q4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1904762   0.9914813   1.4294103
Q4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.0785019   0.8892058   1.3080958
Q4         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q4         6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.2812261   0.9425178   1.7416542
Q4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.6385965   0.3821261   1.0672013
Q4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.1481721   0.7846952   1.6800144
Q4         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Q4         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8368154   0.4304441   1.6268315
Q4         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.1264822   0.6749895   1.8799731
Q4         6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q4         6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.8386000   0.5362434   1.3114380
Q4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9229583   0.8599876   0.9905399
Q4         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q4         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.6912442   0.5516297   0.8661945
Q4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.4000000   1.1070369   1.7704921
Q4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.6930122   1.3376601   2.1427644
Q1         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.1860175   1.0297479   1.3660018
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.9281500   0.7756570   1.1106230
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0218719   0.8779849   1.1893396
Q1         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8140457   0.6962603   0.9517568
Q1         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0854529   0.9670573   1.2183436
Q1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.8166667   0.6042105   1.1038280
Q1         0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.9589919   0.8445589   1.0889299
Q1         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.9486866   0.9081523   0.9910302
Q1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           1.0374384   0.9134757   1.1782235
Q1         0-24 months   ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Control           0.9513471   0.8613336   1.0507674
Q1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9772259   0.9045698   1.0557179
Q1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.8831154   0.8304516   0.9391189
Q1         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.0166667   0.8981376   1.1508382
Q1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0438596   0.4335511   2.5132976
Q1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.6010101   0.2378729   1.5185132
Q1         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           1.0592593   0.8622837   1.3012309
Q1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.2633690   1.0720415   1.4888428
Q1         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8794678   0.8494433   0.9105536
Q1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0594595   0.9723248   1.1544027
Q1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.0326087   0.9145301   1.1659328
Q1         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0731024   0.9027076   1.2756607
Q1         0-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.0924224   0.8998101   1.3262650
Q1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9292732   0.9023113   0.9570407
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9402660   0.8153531   1.0843158
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9699909   0.8564191   1.0986236
Q1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.4848485   0.2983865   0.7878308
Q1         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           1.0416667   0.8659239   1.2530772
Q1         0-6 months    ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                 Control           1.0267857   0.6666511   1.5814703
Q1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0048847   0.8966111   1.1262332
Q1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.8998293   0.7848296   1.0316795
Q1         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                Control           0.9531250   0.7038345   1.2907114
Q1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.7975078   0.5903335   1.0773888
Q1         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.7724696   0.6378799   0.9354572
Q1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9111111   0.7611529   1.0906133
Q1         0-6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9962871   0.6170738   1.6085401
Q1         0-6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.4680851   0.9030575   2.3866408
Q1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8140718   0.7791792   0.8505270
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9595842   0.7476244   1.2316370
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0626845   0.8522819   1.3250293
Q1         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.2409938   0.9892384   1.5568194
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7105263   0.4947610   1.0203869
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.8580715   0.6405411   1.1494761
Q1         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8825636   0.6019345   1.2940254
Q1         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.2412697   0.9224748   1.6702359
Q1         6-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.9753695   0.4485469   2.1209503
Q1         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.9817814   0.8185805   1.1775197
Q1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9889122   0.7942251   1.2313227
Q1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.8863309   0.7798306   1.0073759
Q1         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.1148429   0.9095144   1.3665256
Q1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0637500   0.7794793   1.4516923
Q1         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8579326   0.7915996   0.9298241
Q1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.4636364   1.1977742   1.7885103
Q1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.9849157   0.8078186   1.2008375
Q1         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1034483   0.7683540   1.5846837
Q1         6-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.0471499   0.6870313   1.5960305
Q1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.0576482   0.9945298   1.1247724
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8686333   0.6812762   1.1075154
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8979791   0.7280424   1.1075816
Q2         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.1601846   0.9932834   1.3551301
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8613139   0.7157851   1.0364306
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0087790   0.8683751   1.1718842
Q2         0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.9317585   0.8055897   1.0776875
Q2         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 Control           1.0232881   0.9539887   1.0976215
Q2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           1.0173077   0.8915817   1.1607629
Q2         0-24 months   ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Control           1.1237076   0.9558858   1.3209933
Q2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8515614   0.7960880   0.9109003
Q2         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.1567816   0.9933770   1.3470653
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9670880   0.7679464   1.2178703
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1228416   0.9263815   1.3609655
Q2         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           1.3000000   1.0419781   1.6219151
Q2         0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.8085106   0.6205311   1.0534354
Q2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9643408   0.8468813   1.0980915
Q2         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.9937990   0.9309040   1.0609434
Q2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1054805   0.9988781   1.2234597
Q2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.1014788   0.9682538   1.2530347
Q2         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9454545   0.6751870   1.3239063
Q2         0-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.1481481   0.8036742   1.6402718
Q2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9225537   0.8882747   0.9581555
Q2         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           1.2967033   0.9504891   1.7690256
Q2         0-6 months    ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                 Control           0.8684211   0.4511776   1.6715260
Q2         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.1330909   1.0790333   1.1898567
Q2         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           1.1555556   0.8009742   1.6671057
Q2         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.4248555   1.0539374   1.9263129
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8874442   0.5559047   1.4167126
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1144507   0.7592734   1.6357749
Q2         0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.8750822   0.6628181   1.1553227
Q2         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.7749731   0.6155256   0.9757244
Q2         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           1.6071429   1.0441332   2.4737342
Q2         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.7261905   0.6008827   0.8776298
Q2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8850466   0.8373387   0.9354727
Q2         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.5529412   1.2036843   2.0035372
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7987401   0.5591095   1.1410747
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0225129   0.7636229   1.3691741
Q2         6-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.9838107   0.4258478   2.2728389
Q2         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 Control           1.0741779   0.8262345   1.3965263
Q2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.5953964   0.5168280   0.6859089
Q2         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.4374101   1.1153410   1.8524807
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8315177   0.5797885   1.1925413
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0927635   0.8183647   1.4591685
Q2         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           1.6296296   1.0931343   2.4294296
Q2         6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           1.1715083   0.6986075   1.9645247
Q2         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9528366   0.7517152   1.2077681
Q2         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           1.0111801   0.8734260   1.1706604
Q2         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.4971098   1.1274277   1.9880102
Q2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.4145007   1.1519074   1.7369558
Q2         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.7450980   0.4061645   1.3668626
Q2         6-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.0813008   0.5734923   2.0387571
Q2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.0392901   0.9568160   1.1288732
Q3         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.9312169   0.7975562   1.0872776
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8987184   0.7203802   1.1212062
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.1174191   0.9345233   1.3361096
Q3         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.9511030   0.7427359   1.2179256
Q3         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.1587667   0.9507184   1.4123429
Q3         0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.8313725   0.6015189   1.1490583
Q3         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.8332385   0.7217074   0.9620053
Q3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           0.9755877   0.8583302   1.1088638
Q3         0-24 months   ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Control           0.7128713   0.4739557   1.0722214
Q3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8950532   0.6899396   1.1611455
Q3         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           0.9801980   0.7405080   1.2974716
Q3         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           0.8500000   0.5689265   1.2699355
Q3         0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.8658669   0.7652477   0.9797160
Q3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0824231   1.0378992   1.1288570
Q3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0027540   0.9210726   1.0916789
Q3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.0006583   0.8851435   1.1312483
Q3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9288998   0.8986722   0.9601440
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0000000   0.5451571   1.8343337
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0555556   0.6317996   1.7635299
Q3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.6636364   0.4402209   1.0004369
Q3         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                Control           0.4900990   0.2959174   0.8117031
Q3         0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.9268483   0.7704886   1.1149388
Q3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9772945   0.9075350   1.0524162
Q3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8050710   0.6806616   0.9522195
Q3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8424655   0.8019113   0.8850706
Q3         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q3         6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.9165597   0.6856201   1.2252875
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7757223   0.5198152   1.1576137
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0964373   0.7986387   1.5052800
Q3         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8636620   0.4566585   1.6334132
Q3         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.2440237   0.7589403   2.0391522
Q3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.1294643   0.7673398   1.6624832
Q3         6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q3         6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.9287208   0.7481475   1.1528774
Q3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.1077990   1.0222513   1.2005057
Q3         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q3         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.6105263   1.3156370   1.9715127
Q3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.0854081   0.8698559   1.3543746
Q3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.0491746   0.9782377   1.1252555


### Parameter: PAR


meducyrs   agecat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  ------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Q4         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0307364   -0.0161151    0.0775880
Q4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0468696   -0.0882191   -0.0055201
Q4         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0032246   -0.0301788    0.0237295
Q4         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0669643   -0.1851846    0.0512561
Q4         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0161290   -0.0815191    0.0492610
Q4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0602724   -0.1117568   -0.0087881
Q4         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0827202    0.0102491    0.1551914
Q4         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0146976   -0.0267472   -0.0026481
Q4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0063018   -0.0152768    0.0026733
Q4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0499093   -0.0878193   -0.0119992
Q4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0550162    0.0103789    0.0996535
Q4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0170312   -0.0003495    0.0344120
Q4         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0024752   -0.0658561    0.0609056
Q4         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0067873   -0.0139223    0.0003477
Q4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0137366    0.0053594    0.0221139
Q4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0342857   -0.0076597    0.0762312
Q4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0042709   -0.0101509    0.0186926
Q4         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0238312   -0.0197938    0.0674561
Q4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0021291   -0.0356893    0.0314311
Q4         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0010107   -0.0155083    0.0175297
Q4         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0027374   -0.0102279    0.0047530
Q4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0070251   -0.0139763   -0.0000740
Q4         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0603604   -0.0948169   -0.0259038
Q4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0454545    0.0030835    0.0878256
Q4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0249057    0.0077709    0.0420404
Q1         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0426201   -0.0077813    0.0930216
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0039854   -0.0582397    0.0502688
Q1         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0007213   -0.0212365    0.0197939
Q1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0255517   -0.0781755    0.0270721
Q1         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0110609   -0.0445985    0.0224768
Q1         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0136116   -0.0297407    0.0025176
Q1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0145094   -0.0450358    0.0740545
Q1         0-24 months   ki1000304-ZnMort            INDIA                          Control              NA                -0.0144469   -0.0432159    0.0143221
Q1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0084398   -0.0427047    0.0258250
Q1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0718722   -0.1131298   -0.0306146
Q1         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0062204   -0.0475597    0.0600006
Q1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0630861   -0.2585081    0.1323359
Q1         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0181818   -0.0763278    0.1126914
Q1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0741996    0.0101535    0.1382457
Q1         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0545965   -0.0756229   -0.0335702
Q1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0261905   -0.0172121    0.0695931
Q1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0101868   -0.0375409    0.0579145
Q1         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0339752   -0.0372688    0.1052191
Q1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0168976   -0.0267714   -0.0070238
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0152127   -0.0581228    0.0276974
Q1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0817308   -0.1473537   -0.0161078
Q1         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0085366   -0.0456443    0.0627174
Q1         0-6 months    ki1000304-ZnMort            INDIA                          Control              NA                 0.0064516   -0.0989116    0.1118148
Q1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0009265   -0.0354922    0.0373453
Q1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0308123   -0.0755517    0.0139270
Q1         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0052485   -0.0426407    0.0321437
Q1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0438399   -0.1050304    0.0173505
Q1         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0449312   -0.0877090   -0.0021534
Q1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0267979   -0.0818853    0.0282895
Q1         0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0387719   -0.0826023    0.1601460
Q1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0309959   -0.0401267   -0.0218651
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0047605   -0.0330083    0.0425292
Q1         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0364114   -0.0195505    0.0923733
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0419923   -0.0985330    0.0145483
Q1         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0054546   -0.0081945    0.0191036
Q1         6-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0007557   -0.0242969    0.0227855
Q1         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0009856   -0.0146485    0.0126772
Q1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0023537   -0.0341078    0.0294004
Q1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0551676   -0.1196638    0.0093286
Q1         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0274327   -0.0331134    0.0879788
Q1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0100612   -0.0503741    0.0704964
Q1         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0523985   -0.0871544   -0.0176426
Q1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0750245    0.0253539    0.1246952
Q1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0031185   -0.0527887    0.0465517
Q1         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0194357   -0.0610227    0.0998940
Q1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0072468   -0.0038026    0.0182961
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0264036   -0.0707395    0.0179323
Q2         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0375000   -0.0175989    0.0925989
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0143222   -0.0636038    0.0349594
Q2         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0158822   -0.0484885    0.0167242
Q2         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0047024   -0.0155138    0.0249187
Q2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0070718   -0.0570632    0.0712067
Q2         0-24 months   ki1000304-ZnMort            INDIA                          Control              NA                 0.0270635   -0.0103320    0.0644590
Q2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0468646   -0.0949835    0.0012543
Q2         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0414439   -0.0115836    0.0944713
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0119529   -0.0193275    0.0432332
Q2         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0654886   -0.0134093    0.1443864
Q2         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0219512   -0.0501385    0.0062361
Q2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0106246   -0.0543181    0.0330688
Q2         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0018078   -0.0337136    0.0300981
Q2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0418965   -0.0059191    0.0897121
Q2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0312238   -0.0206552    0.0831029
Q2         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0046296   -0.1140601    0.1233194
Q2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0178377   -0.0294494   -0.0062260
Q2         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0329821   -0.0264155    0.0923798
Q2         0-6 months    ki1000304-ZnMort            INDIA                          Control              NA                -0.0256082   -0.1447882    0.0935718
Q2         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0179976    0.0032717    0.0327235
Q2         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.0403846   -0.0880437    0.1688130
Q2         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0358799   -0.0042608    0.0760207
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0020258   -0.0169779    0.0210296
Q2         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0079439   -0.0254817    0.0095939
Q2         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0419419   -0.0827069   -0.0011770
Q2         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0629630   -0.0259708    0.1518967
Q2         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0966387   -0.1508358   -0.0424415
Q2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0180378   -0.0292333   -0.0068423
Q2         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0706685    0.0100984    0.1312386
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0102226   -0.0587225    0.0382773
Q2         6-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0003609   -0.0188683    0.0181466
Q2         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0025196   -0.0107429    0.0157821
Q2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0769306   -0.1291248   -0.0247364
Q2         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0583381    0.0050361    0.1116402
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0006381   -0.0271685    0.0284447
Q2         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0772727   -0.0169169    0.1714624
Q2         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0044589   -0.0074915    0.0164092
Q2         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0073264   -0.0480231    0.0333703
Q2         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0022316   -0.0494103    0.0538735
Q2         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0553411    0.0057866    0.1048955
Q2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0706294    0.0150929    0.1261659
Q2         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0353017   -0.1639423    0.0933390
Q2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0040199   -0.0078293    0.0158691
Q3         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0147727   -0.0604114    0.0308660
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0129500   -0.0349662    0.0608662
Q3         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0130933   -0.0161421    0.0423288
Q3         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0295922   -0.0814286    0.0222441
Q3         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0237055   -0.0496769    0.0022658
Q3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0098901   -0.0686179    0.0488377
Q3         0-24 months   ki1000304-ZnMort            INDIA                          Control              NA                -0.0530488   -0.1161630    0.0100654
Q3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0270109   -0.1014731    0.0474512
Q3         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0040706   -0.0693708    0.0612297
Q3         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0330882   -0.1518086    0.0856322
Q3         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0096543   -0.0205320    0.0012234
Q3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0212019    0.0079051    0.0344987
Q3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0011431   -0.0374300    0.0397162
Q3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0001900   -0.0434139    0.0437938
Q3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0132362   -0.0218142   -0.0046583
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0142248   -0.1771576    0.2056071
Q3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0377776   -0.0892785    0.0137233
Q3         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0698779   -0.1124587   -0.0272970
Q3         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0025622   -0.0099617    0.0048373
Q3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0033314   -0.0156373    0.0089745
Q3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0578532   -0.1021649   -0.0135415
Q3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0185235   -0.0259550   -0.0110919
Q3         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0093230   -0.0528205    0.0341745
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0014420   -0.0445674    0.0416834
Q3         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0039476   -0.0137989    0.0216941
Q3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0164820   -0.0090363    0.0420002
Q3         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0015005   -0.0054243    0.0024233
Q3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0125145    0.0007321    0.0242968
Q3         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0760406    0.0342284    0.1178529
Q3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0128533   -0.0306784    0.0563851
Q3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0041123   -0.0048731    0.0130978


### Parameter: PAF


meducyrs   agecat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  ------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Q4         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0926613   -0.0456900    0.2127079
Q4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1884941   -0.3667498   -0.0334870
Q4         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0174108   -0.1738619    0.1181885
Q4         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.3061224   -0.9678337    0.1330793
Q4         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0909091   -0.5793945    0.2464944
Q4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.2096042   -0.4478595   -0.0105554
Q4         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.2058387    0.0451369    0.3394947
Q4         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.1525832   -0.3091263   -0.0147592
Q4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0210520   -0.0521315    0.0091094
Q4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1108871   -0.2086107   -0.0210650
Q4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1545455    0.0407162    0.2548676
Q4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0889834    0.0019030    0.1684663
Q4         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0100000   -0.3047595    0.2181701
Q4         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1377717   -0.3170434    0.0170980
Q4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0840014    0.0357904    0.1298018
Q4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1379310   -0.0209052    0.2720549
Q4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0388943   -0.0961329    0.1572882
Q4         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.1226604   -0.1002118    0.3003849
Q4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0179294   -0.3436565    0.2288354
Q4         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0196442   -0.3602106    0.2934201
Q4         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0974816   -0.4363499    0.1614398
Q4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0611969   -0.1274815    0.0011908
Q4         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.3489583   -0.6490887   -0.1034510
Q4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.2105263    0.0367729    0.3529369
Q4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.2671461    0.1136484    0.3940612
Q1         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0825485   -0.0119545    0.1682261
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0081337   -0.1251695    0.0967285
Q1         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0025299   -0.0771305    0.0669039
Q1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0982143   -0.3457040    0.1037594
Q1         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0204046   -0.0842075    0.0396438
Q1         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0258563   -0.0577842    0.0051079
Q1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0263067   -0.0847145    0.1259648
Q1         0-24 months   ki1000304-ZnMort            INDIA                          Control              NA                -0.0247024   -0.0751239    0.0233544
Q1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0124991   -0.0652060    0.0375998
Q1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0953580   -0.1570478   -0.0369573
Q1         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0124902   -0.1001219    0.1135751
Q1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.2176471   -1.1182539    0.3000535
Q1         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0259740   -0.1148942    0.1490434
Q1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1641667    0.0360902    0.2752254
Q1         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0710771   -0.1008398   -0.0421192
Q1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0472103   -0.0303461    0.1189289
Q1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0210526   -0.0804435    0.1130143
Q1         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0567899   -0.0702642    0.1687610
Q1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0370929   -0.0598276   -0.0148460
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0307245   -0.1211241    0.0523859
Q1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.3541667   -0.8249376   -0.0048384
Q1         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0208955   -0.1179909    0.1425283
Q1         0-6 months    ki1000304-ZnMort            INDIA                          Control              NA                 0.0136364   -0.2362260    0.2129973
Q1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0027049   -0.1091650    0.1032916
Q1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0808824   -0.2157168    0.0389976
Q1         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0368852   -0.3485914    0.2027748
Q1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.1846591   -0.5346124    0.0854908
Q1         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1432942   -0.3117019    0.0034918
Q1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0790367   -0.2695198    0.0828656
Q1         0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1002899   -0.2755067    0.3653673
Q1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.1042786   -0.1388703   -0.0707376
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0187624   -0.1418925    0.1568145
Q1         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.1048649   -0.0527761    0.2389009
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1700807   -0.4227432    0.0377119
Q1         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0713029   -0.1251612    0.2334624
Q1         6-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0126263   -0.4932437    0.3132990
Q1         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0092783   -0.1478098    0.1125335
Q1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0060458   -0.0915399    0.0727521
Q1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0968137   -0.2284014    0.0206782
Q1         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0814132   -0.0996184    0.2326414
Q1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0444638   -0.2482026    0.2685087
Q1         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0953227   -0.1669809   -0.0280647
Q1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.2771739    0.1297166    0.3996466
Q1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0101351   -0.1871036    0.1404516
Q1         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0604495   -0.2262657    0.2801273
Q1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0289595   -0.0148968    0.0709208
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0896139   -0.2506056    0.0506532
Q2         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0750000   -0.0331219    0.1718064
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0318211   -0.1473499    0.0720750
Q2         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0332907   -0.1039881    0.0328794
Q2         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0115993   -0.0389421    0.0596820
Q2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0123570   -0.1047696    0.1170659
Q2         0-24 months   ki1000304-ZnMort            INDIA                          Control              NA                 0.0597721   -0.0266399    0.1389109
Q2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0855911   -0.1852354    0.0056760
Q2         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.1013072   -0.0233825    0.2108046
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0509957   -0.0922696    0.1754698
Q2         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.1242604   -0.0188521    0.2472706
Q2         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.1298077   -0.3383542    0.0462425
Q2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0271348   -0.1484097    0.0813332
Q2         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0022362   -0.0425829    0.0365491
Q2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0812608   -0.0080904    0.1626926
Q2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0632415   -0.0406719    0.1567790
Q2         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0091743   -0.2562939    0.2185463
Q2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0413241   -0.0697351   -0.0136677
Q2         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.1220339   -0.0959661    0.2966712
Q2         0-6 months    ki1000304-ZnMort            INDIA                          Control              NA                -0.0757576   -0.4930938    0.2249286
Q2         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0628650    0.0134772    0.1097804
Q2         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.0950226   -0.2251990    0.3315502
Q2         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.2337043    0.0012149    0.4120766
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0288365   -0.2830588    0.2649140
Q2         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0798431   -0.2889916    0.0953695
Q2         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.1952470   -0.4466570    0.0124713
Q2         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.2125000   -0.0736371    0.4223781
Q2         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.3066667   -0.5532772   -0.0992100
Q2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0621753   -0.1040460   -0.0218925
Q2         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.2152925    0.0512442    0.3509754
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0449899   -0.2817676    0.1480484
Q2         6-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0078360   -0.5016207    0.3235752
Q2         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0358557   -0.1645589    0.2017800
Q2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.2811945   -0.5508751   -0.0584084
Q2         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.2395587    0.0504549    0.3910021
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0047303   -0.2242995    0.1909154
Q2         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.2361111   -0.0292247    0.4330429
Q2         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0941140   -0.1698299    0.2985053
Q2         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0368984   -0.2728277    0.1552994
Q2         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0035771   -0.0824171    0.0827394
Q2         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.2905405    0.0766527    0.4548825
Q2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.2151989    0.0680621    0.3391053
Q2         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.1258581   -0.6918019    0.2507654
Q2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0199507   -0.0394253    0.0759350
Q3         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0349462   -0.1530112    0.0710292
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0350140   -0.1036439    0.1562514
Q3         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0528533   -0.0727891    0.1637807
Q3         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0954495   -0.2760685    0.0596041
Q3         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0884662   -0.1996940    0.0124493
Q3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0187110   -0.1384309    0.0884189
Q3         0-24 months   ki1000304-ZnMort            INDIA                          Control              NA                -0.1647727   -0.3786166    0.0159008
Q3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0599894   -0.2514760    0.1021981
Q3         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0151515   -0.2944798    0.2039021
Q3         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0756303   -0.4120565    0.1806415
Q3         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0732118   -0.1663001    0.0124466
Q3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0581944    0.0231649    0.0919678
Q3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0023074   -0.0784805    0.0770436
Q3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0004340   -0.1042746    0.0952140
Q3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0366927   -0.0616548   -0.0123177
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0263158   -0.4003367    0.3229764
Q3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.2252664   -0.6788751    0.1057836
Q3         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.6242424   -1.4144869   -0.0926394
Q3         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0385384   -0.1610759    0.0710666
Q3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0173222   -0.0845479    0.0457366
Q3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.2001249   -0.3994950   -0.0291569
Q3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0846035   -0.1221833   -0.0482821
Q3         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0429894   -0.2748754    0.1467190
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0078612   -0.2726463    0.2018330
Q3         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0646880   -0.2759848    0.3144052
Q3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0663616   -0.0396865    0.1615927
Q3         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0377777   -0.1460076    0.0602310
Q3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0743552    0.0071626    0.1370003
Q3         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.3391813    0.2011543    0.4533595
Q3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0537698   -0.1353922    0.2114165
Q3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0240523   -0.0286220    0.0740292
