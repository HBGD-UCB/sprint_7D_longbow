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
        value: TRUE        
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

**Intervention Variable:** tr.x

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* feducyrs
* agecat
* studyid
* country

## Data Summary

feducyrs   agecat        studyid                     country                        tr.x       ever_stunted   n_cell       n
---------  ------------  --------------------------  -----------------------------  --------  -------------  -------  ------
Q3         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       10      53
Q3         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        2      53
Q3         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       15      53
Q3         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        1      53
Q3         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       25      53
Q3         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        0      53
Q2         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       15      76
Q2         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        1      76
Q2         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       17      76
Q2         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        4      76
Q2         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       34      76
Q2         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        5      76
Q1         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       11      97
Q1         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        3      97
Q1         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       29      97
Q1         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        2      97
Q1         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       48      97
Q1         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        4      97
Q4         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0        1       5
Q4         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        0       5
Q4         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0        3       5
Q4         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        1       5
Q1         0-6 months    ki1000304-EU                INDIA                          Control               0        1       3
Q1         0-6 months    ki1000304-EU                INDIA                          Control               1        1       3
Q1         0-6 months    ki1000304-EU                INDIA                          Zinc                  0        0       3
Q1         0-6 months    ki1000304-EU                INDIA                          Zinc                  1        1       3
Q2         0-6 months    ki1000304-EU                INDIA                          Control               1        1       3
Q2         0-6 months    ki1000304-EU                INDIA                          Zinc                  1        2       3
Q4         0-6 months    ki1000304-EU                INDIA                          Control               0        1       6
Q4         0-6 months    ki1000304-EU                INDIA                          Control               1        2       6
Q4         0-6 months    ki1000304-EU                INDIA                          Zinc                  0        3       6
Q4         0-6 months    ki1000304-EU                INDIA                          Zinc                  1        0       6
Q3         0-6 months    ki1000304-EU                INDIA                          Zinc                  0        2       2
Q4         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0       61     152
Q4         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1       26     152
Q4         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0       51     152
Q4         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1       14     152
Q2         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0       24      55
Q2         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1        5      55
Q2         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0       14      55
Q2         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1       12      55
Q3         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0       14      51
Q3         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1        7      51
Q3         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0       19      51
Q3         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1       11      51
Q1         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0       19      76
Q1         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1       15      76
Q1         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0       25      76
Q1         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1       17      76
Q1         0-6 months    ki1000304-Vitamin-B12       INDIA                          Control               0        1       1
Q4         0-6 months    ki1000304-ZnMort            INDIA                          Other                 0       32      85
Q4         0-6 months    ki1000304-ZnMort            INDIA                          Other                 1       13      85
Q4         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0       28      85
Q4         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1       12      85
Q2         0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        7      44
Q2         0-6 months    ki1000304-ZnMort            INDIA                          Other                 1       12      44
Q2         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0       16      44
Q2         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        9      44
Q3         0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        7      21
Q3         0-6 months    ki1000304-ZnMort            INDIA                          Other                 1        3      21
Q3         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0        4      21
Q3         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        7      21
Q1         0-6 months    ki1000304-ZnMort            INDIA                          Other                 0        8      31
Q1         0-6 months    ki1000304-ZnMort            INDIA                          Other                 1        7      31
Q1         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0        7      31
Q1         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1        9      31
Q3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       84     201
Q3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1       15     201
Q3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       72     201
Q3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1       30     201
Q2         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       59     195
Q2         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1       29     195
Q2         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       72     195
Q2         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1       35     195
Q4         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       71     219
Q4         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1       23     219
Q4         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0      103     219
Q4         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1       22     219
Q1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       50     174
Q1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1       34     174
Q1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       57     174
Q1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1       33     174
Q3         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0       25     138
Q3         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       17     138
Q3         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       61     138
Q3         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       35     138
Q1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0       23     163
Q1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       14     163
Q1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       78     163
Q1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       48     163
Q2         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0       12      94
Q2         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       11      94
Q2         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       42      94
Q2         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       29      94
Q4         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        3      21
Q4         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        0      21
Q4         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       13      21
Q4         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        5      21
Q1         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control               0       60     287
Q1         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control               1       15     287
Q1         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                 0      176     287
Q1         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                 1       36     287
Q4         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control               0        3      17
Q4         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control               1        1      17
Q4         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                 0       11      17
Q4         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                 1        2      17
Q3         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control               0       21      83
Q3         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control               1        3      83
Q3         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                 0       55      83
Q3         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                 1        4      83
Q2         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control               0       58     253
Q2         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control               1        5     253
Q2         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                 0      167     253
Q2         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                 1       23     253
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0      443    1922
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       31    1922
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      902    1922
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       65    1922
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0      437    1922
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       44    1922
Q3         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       21      90
Q3         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        3      90
Q3         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       43      90
Q3         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        1      90
Q3         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       22      90
Q3         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        0      90
Q4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       51     200
Q4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        6     200
Q4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       89     200
Q4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        3     200
Q4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       48     200
Q4         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        3     200
Q1         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0        5      11
Q1         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        1      11
Q1         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0        5      11
Q1         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        0      11
Q3         0-6 months    ki1119695-PROBIT            BELARUS                        Control               0     5736   12666
Q3         0-6 months    ki1119695-PROBIT            BELARUS                        Control               1      426   12666
Q3         0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0     6081   12666
Q3         0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1      423   12666
Q4         0-6 months    ki1119695-PROBIT            BELARUS                        Control               0     1143    2590
Q4         0-6 months    ki1119695-PROBIT            BELARUS                        Control               1       64    2590
Q4         0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0     1327    2590
Q4         0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       56    2590
Q2         0-6 months    ki1119695-PROBIT            BELARUS                        Control               0      132     351
Q2         0-6 months    ki1119695-PROBIT            BELARUS                        Control               1        9     351
Q2         0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0      198     351
Q2         0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1       12     351
Q1         0-6 months    ki1119695-PROBIT            BELARUS                        Control               0       12      26
Q1         0-6 months    ki1119695-PROBIT            BELARUS                        Control               1        1      26
Q1         0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0        9      26
Q1         0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1        4      26
Q3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      223    1153
Q3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       55    1153
Q3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      700    1153
Q3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      175    1153
Q4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0     1608    7565
Q4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1      315    7565
Q4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0     4689    7565
Q4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      953    7565
Q2         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0       12      60
Q2         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1        3      60
Q2         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0       33      60
Q2         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       12      60
Q1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0        9      57
Q1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1        4      57
Q1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0       34      57
Q1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       10      57
Q1         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control               0       59     220
Q1         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control               1       35     220
Q1         0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                 0       91     220
Q1         0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                 1       35     220
Q2         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control               0       29      58
Q2         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control               1        9      58
Q2         0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                 0       14      58
Q2         0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                 1        6      58
Q4         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control               0        1       2
Q4         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control               1        1       2
Q3         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control               0        1       2
Q3         0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                 0        1       2
Q1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0       31     258
Q1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1       13     258
Q1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      143     258
Q1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       71     258
Q4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0       33     309
Q4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1        9     309
Q4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      214     309
Q4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       53     309
Q3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0       32     312
Q3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1       20     312
Q3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      180     312
Q3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       80     312
Q2         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0       23     242
Q2         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1       13     242
Q2         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      138     242
Q2         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       68     242
Q1         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        3      20
Q1         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        5      20
Q1         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        3      20
Q1         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        2      20
Q1         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        6      20
Q1         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        1      20
Q2         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        4      15
Q2         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        0      15
Q2         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        4      15
Q2         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        2      15
Q2         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        3      15
Q2         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        2      15
Q3         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        7      24
Q3         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        0      24
Q3         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        8      24
Q3         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        1      24
Q3         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        6      24
Q3         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        2      24
Q4         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        4      11
Q4         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        0      11
Q4         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        6      11
Q4         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        1      11
Q1         0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0       32     124
Q1         0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1       24     124
Q1         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0       44     124
Q1         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1       24     124
Q2         0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0       26      87
Q2         0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1       20      87
Q2         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0       27      87
Q2         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1       14      87
Q3         0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0       14      34
Q3         0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1        4      34
Q3         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0       12      34
Q3         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1        4      34
Q4         0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0        8      22
Q4         0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1        3      22
Q4         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0        9      22
Q4         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1        2      22
Q1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0     3007    8873
Q1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1     1345    8873
Q1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     3353    8873
Q1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1     1168    8873
Q2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0     1195    3459
Q2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      514    3459
Q2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     1294    3459
Q2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      456    3459
Q3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0     1613    4233
Q3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      529    4233
Q3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     1643    4233
Q3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      448    4233
Q4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0      911    2113
Q4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      154    2113
Q4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      929    2113
Q4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      119    2113
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               0      377    1905
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               1       99    1905
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      458    1905
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1      154    1905
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0      196    1905
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       71    1905
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 0      405    1905
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 1      145    1905
Q2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               0       39     246
Q2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               1       22     246
Q2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       65     246
Q2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       22     246
Q2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       32     246
Q2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       13     246
Q2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       45     246
Q2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 1        8     246
Q3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               0       85     412
Q3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               1       22     412
Q3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       93     412
Q3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       27     412
Q3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       48     412
Q3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       21     412
Q3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       82     412
Q3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       34     412
Q4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               0       10      27
Q4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               1        1      27
Q4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0        6      27
Q4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1        2      27
Q4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0        2      27
Q4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1        0      27
Q4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 0        4      27
Q4         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 1        2      27
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0      253    1221
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       58    1221
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0      275    1221
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       50    1221
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      474    1221
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1      111    1221
Q4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       16      95
Q4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        1      95
Q4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       17      95
Q4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        0      95
Q4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       59      95
Q4         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        2      95
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0      195     927
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       31     927
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0      215     927
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       21     927
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      404     927
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       61     927
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0      262    1474
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       91    1474
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0      314    1474
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       71    1474
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      539    1474
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1      197    1474
Q2         6-24 months   ki1000304-EU                INDIA                          Control               0       75     164
Q2         6-24 months   ki1000304-EU                INDIA                          Control               1        4     164
Q2         6-24 months   ki1000304-EU                INDIA                          Zinc                  0       79     164
Q2         6-24 months   ki1000304-EU                INDIA                          Zinc                  1        6     164
Q4         6-24 months   ki1000304-EU                INDIA                          Control               0      296     623
Q4         6-24 months   ki1000304-EU                INDIA                          Control               1        7     623
Q4         6-24 months   ki1000304-EU                INDIA                          Zinc                  0      310     623
Q4         6-24 months   ki1000304-EU                INDIA                          Zinc                  1       10     623
Q1         6-24 months   ki1000304-EU                INDIA                          Control               0      106     224
Q1         6-24 months   ki1000304-EU                INDIA                          Control               1       10     224
Q1         6-24 months   ki1000304-EU                INDIA                          Zinc                  0      100     224
Q1         6-24 months   ki1000304-EU                INDIA                          Zinc                  1        8     224
Q3         6-24 months   ki1000304-EU                INDIA                          Control               0       65     140
Q3         6-24 months   ki1000304-EU                INDIA                          Control               1        4     140
Q3         6-24 months   ki1000304-EU                INDIA                          Zinc                  0       65     140
Q3         6-24 months   ki1000304-EU                INDIA                          Zinc                  1        6     140
Q4         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0      489    1070
Q4         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       33    1070
Q4         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0      523    1070
Q4         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       25    1070
Q1         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0      185     378
Q1         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       18     378
Q1         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0      156     378
Q1         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       19     378
Q3         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0      184     417
Q3         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       15     417
Q3         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0      194     417
Q3         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       24     417
Q2         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0      137     302
Q2         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       18     302
Q2         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0      132     302
Q2         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       15     302
Q3         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       62     126
Q3         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1        4     126
Q3         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       56     126
Q3         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1        4     126
Q2         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       65     132
Q2         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1        7     132
Q2         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       49     132
Q2         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1       11     132
Q4         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       65     163
Q4         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1        2     163
Q4         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       90     163
Q4         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1        6     163
Q1         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       30      83
Q1         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1       11      83
Q1         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       37      83
Q1         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1        5      83
Q4         6-24 months   ki1000304-ZnMort            INDIA                          Other                 0      227     490
Q4         6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0      263     490
Q3         6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       43      66
Q3         6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       23      66
Q1         6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       67     133
Q1         6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       66     133
Q2         6-24 months   ki1000304-ZnMort            INDIA                          Other                 0       99     197
Q2         6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       98     197
Q3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       65     177
Q3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       23     177
Q3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       59     177
Q3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       30     177
Q2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       40     152
Q2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       25     152
Q2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       64     152
Q2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       23     152
Q4         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       66     201
Q4         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       24     201
Q4         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       86     201
Q4         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       25     201
Q1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       27     116
Q1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       26     116
Q1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       39     116
Q1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       24     116
Q3         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        7      80
Q3         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       12      80
Q3         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       27      80
Q3         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       34      80
Q1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        9      87
Q1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        9      87
Q1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       27      87
Q1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       42      87
Q2         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        2      45
Q2         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        7      45
Q2         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       20      45
Q2         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       16      45
Q4         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        1      14
Q4         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        1      14
Q4         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        6      14
Q4         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1        6      14
Q1         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               0       35     205
Q1         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               1       15     205
Q1         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 0      105     205
Q1         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 1       50     205
Q4         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               0        4      16
Q4         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               1        0      16
Q4         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 0       11      16
Q4         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 1        1      16
Q3         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               0       19      73
Q3         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               1        1      73
Q3         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 0       47      73
Q3         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 1        6      73
Q2         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               0       43     203
Q2         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               1        9     203
Q2         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 0      114     203
Q2         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 1       37     203
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0      342    1587
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       54    1587
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      698    1587
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1      102    1587
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0      326    1587
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       65    1587
Q3         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       17      73
Q3         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        3      73
Q3         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       29      73
Q3         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        4      73
Q3         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       20      73
Q3         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        0      73
Q4         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       42     170
Q4         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        7     170
Q4         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       70     170
Q4         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        8     170
Q4         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       39     170
Q4         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        4     170
Q1         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0        5       9
Q1         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0        4       9
Q3         6-24 months   ki1119695-PROBIT            BELARUS                        Control               0     5917   12773
Q3         6-24 months   ki1119695-PROBIT            BELARUS                        Control               1      253   12773
Q3         6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0     6357   12773
Q3         6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1      246   12773
Q4         6-24 months   ki1119695-PROBIT            BELARUS                        Control               0     1160    2604
Q4         6-24 months   ki1119695-PROBIT            BELARUS                        Control               1       38    2604
Q4         6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0     1363    2604
Q4         6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       43    2604
Q2         6-24 months   ki1119695-PROBIT            BELARUS                        Control               0      131     353
Q2         6-24 months   ki1119695-PROBIT            BELARUS                        Control               1        6     353
Q2         6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      204     353
Q2         6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       12     353
Q1         6-24 months   ki1119695-PROBIT            BELARUS                        Control               0       11      22
Q1         6-24 months   ki1119695-PROBIT            BELARUS                        Control               1        0      22
Q1         6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0       10      22
Q1         6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1        1      22
Q3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      250    1177
Q3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       47    1177
Q3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      712    1177
Q3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      168    1177
Q4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0     1713    7769
Q4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1      259    7769
Q4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0     5079    7769
Q4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      718    7769
Q2         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0       14      65
Q2         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1        2      65
Q2         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0       39      65
Q2         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       10      65
Q1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0        9      55
Q1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1        4      55
Q1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0       32      55
Q1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       10      55
Q1         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control               0       66     474
Q1         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control               1      110     474
Q1         6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 0      143     474
Q1         6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 1      155     474
Q2         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control               0       29     108
Q2         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control               1       46     108
Q2         6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 0       15     108
Q2         6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 1       18     108
Q4         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control               0        1       5
Q4         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control               1        3       5
Q4         6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 0        0       5
Q4         6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 1        1       5
Q3         6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 1        1       1
Q1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       45     282
Q1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        8     282
Q1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      175     282
Q1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       54     282
Q3         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       34     307
Q3         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       12     307
Q3         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      195     307
Q3         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       66     307
Q4         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       46     352
Q4         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       10     352
Q4         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      247     352
Q4         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       49     352
Q2         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       33     225
Q2         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1        6     225
Q2         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      140     225
Q2         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1       46     225
Q3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       66     277
Q3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       17     277
Q3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       63     277
Q3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       26     277
Q3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       81     277
Q3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       24     277
Q1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       60     277
Q1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       26     277
Q1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       65     277
Q1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       32     277
Q1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       60     277
Q1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       34     277
Q2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       48     178
Q2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       17     178
Q2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       42     178
Q2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       19     178
Q2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       42     178
Q2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       10     178
Q4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       64     199
Q4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       14     199
Q4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       45     199
Q4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       12     199
Q4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       46     199
Q4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       18     199
Q1         6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       90     264
Q1         6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       31     264
Q1         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       91     264
Q1         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       52     264
Q3         6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       35      87
Q3         6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       13      87
Q3         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       28      87
Q3         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       11      87
Q2         6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       56     178
Q2         6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       38     178
Q2         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       65     178
Q2         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       19     178
Q4         6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       14      48
Q4         6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1        6      48
Q4         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       20      48
Q4         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1        8      48
Q1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0     2144    5642
Q1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      615    5642
Q1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     2201    5642
Q1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      682    5642
Q2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      914    2342
Q2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      215    2342
Q2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      963    2342
Q2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      250    2342
Q4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      733    1725
Q4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1       84    1725
Q4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      795    1725
Q4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      113    1725
Q3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0     1270    3093
Q3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      274    3093
Q3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     1266    3093
Q3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      283    3093
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0      329    1801
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1      142    1801
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      381    1801
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1      164    1801
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0      178    1801
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       83    1801
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0      376    1801
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1      148    1801
Q3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       77     407
Q3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       35     407
Q3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       92     407
Q3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       32     407
Q3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       42     407
Q3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       18     407
Q3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       74     407
Q3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       37     407
Q2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       35     218
Q2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       16     218
Q2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       58     218
Q2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       20     218
Q2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       26     218
Q2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       12     218
Q2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       39     218
Q2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       12     218
Q4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0        8      31
Q4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1        4      31
Q4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0        8      31
Q4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1        3      31
Q4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0        2      31
Q4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1        0      31
Q4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0        4      31
Q4         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1        2      31
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0      248    1587
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1      159    1587
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0      269    1587
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1      140    1587
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      461    1587
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1      310    1587
Q4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       16     102
Q4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        2     102
Q4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       17     102
Q4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        1     102
Q4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       59     102
Q4         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        7     102
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0      190    1081
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       83    1081
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0      215    1081
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       49    1081
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      399    1081
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1      145    1081
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0      254    2036
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1      220    2036
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0      305    2036
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1      213    2036
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      531    2036
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1      513    2036
Q2         0-24 months   ki1000304-EU                INDIA                          Control               0       73     336
Q2         0-24 months   ki1000304-EU                INDIA                          Control               1       92     336
Q2         0-24 months   ki1000304-EU                INDIA                          Zinc                  0       78     336
Q2         0-24 months   ki1000304-EU                INDIA                          Zinc                  1       93     336
Q4         0-24 months   ki1000304-EU                INDIA                          Control               0      285     959
Q4         0-24 months   ki1000304-EU                INDIA                          Control               1      211     959
Q4         0-24 months   ki1000304-EU                INDIA                          Zinc                  0      306     959
Q4         0-24 months   ki1000304-EU                INDIA                          Zinc                  1      157     959
Q1         0-24 months   ki1000304-EU                INDIA                          Control               0      104     461
Q1         0-24 months   ki1000304-EU                INDIA                          Control               1      130     461
Q1         0-24 months   ki1000304-EU                INDIA                          Zinc                  0       97     461
Q1         0-24 months   ki1000304-EU                INDIA                          Zinc                  1      130     461
Q3         0-24 months   ki1000304-EU                INDIA                          Control               0       63     254
Q3         0-24 months   ki1000304-EU                INDIA                          Control               1       69     254
Q3         0-24 months   ki1000304-EU                INDIA                          Zinc                  0       63     254
Q3         0-24 months   ki1000304-EU                INDIA                          Zinc                  1       59     254
Q3         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0      183     710
Q3         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1      163     710
Q3         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0      190     710
Q3         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1      174     710
Q4         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0      476    1526
Q4         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1      276    1526
Q4         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0      518    1526
Q4         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1      256    1526
Q1         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0      183     760
Q1         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1      226     760
Q1         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0      155     760
Q1         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1      196     760
Q2         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0      136     544
Q2         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1      145     544
Q2         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0      129     544
Q2         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1      134     544
Q2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       60     233
Q2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1       56     233
Q2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       44     233
Q2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1       73     233
Q3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       59     188
Q3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1       43     188
Q3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       54     188
Q3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1       32     188
Q4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       63     218
Q4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1       37     218
Q4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       87     218
Q4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1       31     218
Q1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0       26     165
Q1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1       62     165
Q1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0       31     165
Q1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1       46     165
Q4         0-24 months   ki1000304-ZnMort            INDIA                          Other                 0      259     969
Q4         0-24 months   ki1000304-ZnMort            INDIA                          Other                 1      206     969
Q4         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0      291     969
Q4         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1      213     969
Q3         0-24 months   ki1000304-ZnMort            INDIA                          Other                 0       50     172
Q3         0-24 months   ki1000304-ZnMort            INDIA                          Other                 1       38     172
Q3         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       27     172
Q3         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1       57     172
Q1         0-24 months   ki1000304-ZnMort            INDIA                          Other                 0       75     397
Q1         0-24 months   ki1000304-ZnMort            INDIA                          Other                 1      130     397
Q1         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0       73     397
Q1         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1      119     397
Q2         0-24 months   ki1000304-ZnMort            INDIA                          Other                 0      106     498
Q2         0-24 months   ki1000304-ZnMort            INDIA                          Other                 1      149     498
Q2         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0      114     498
Q2         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1      129     498
Q3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       61     241
Q3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       53     241
Q3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       56     241
Q3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       71     241
Q2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       33     236
Q2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       75     236
Q2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       57     236
Q2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       71     236
Q4         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       57     266
Q4         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       63     266
Q4         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       77     266
Q4         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       69     266
Q1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       25     203
Q1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       70     203
Q1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       34     203
Q1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       74     203
Q3         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        7     138
Q3         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       35     138
Q3         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       27     138
Q3         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       69     138
Q1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0       10     165
Q1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       28     165
Q1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       30     165
Q1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       97     165
Q2         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        2      94
Q2         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       21      94
Q2         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       22      94
Q2         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       49      94
Q4         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        1      21
Q4         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        2      21
Q4         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0        7      21
Q4         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       11      21
Q1         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               0       35     287
Q1         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               1       40     287
Q1         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 0      105     287
Q1         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 1      107     287
Q4         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               0        3      17
Q4         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               1        1      17
Q4         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 0       11      17
Q4         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 1        2      17
Q3         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               0       19      84
Q3         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               1        5      84
Q3         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 0       47      84
Q3         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 1       13      84
Q2         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               0       44     253
Q2         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               1       19     253
Q2         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 0      115     253
Q2         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 1       75     253
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0      375    1941
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1      103    1941
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      748    1941
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1      230    1941
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0      357    1941
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1      128    1941
Q3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       17      90
Q3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1        7      90
Q3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       36      90
Q3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        8      90
Q3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       20      90
Q3         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        2      90
Q4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0       39     202
Q4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       19     202
Q4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0       77     202
Q4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       15     202
Q4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0       43     202
Q4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        9     202
Q1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0        5      11
Q1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1        1      11
Q1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0        5      11
Q1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1        0      11
Q3         0-24 months   ki1119695-PROBIT            BELARUS                        Control               0     5456   13107
Q3         0-24 months   ki1119695-PROBIT            BELARUS                        Control               1      909   13107
Q3         0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0     5918   13107
Q3         0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1      824   13107
Q4         0-24 months   ki1119695-PROBIT            BELARUS                        Control               0     1099    2666
Q4         0-24 months   ki1119695-PROBIT            BELARUS                        Control               1      125    2666
Q4         0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0     1319    2666
Q4         0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1      123    2666
Q2         0-24 months   ki1119695-PROBIT            BELARUS                        Control               0      123     362
Q2         0-24 months   ki1119695-PROBIT            BELARUS                        Control               1       19     362
Q2         0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0      190     362
Q2         0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1       30     362
Q1         0-24 months   ki1119695-PROBIT            BELARUS                        Control               0       12      26
Q1         0-24 months   ki1119695-PROBIT            BELARUS                        Control               1        1      26
Q1         0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0        6      26
Q1         0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1        7      26
Q3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      241    1518
Q3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1      140    1518
Q3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0      694    1518
Q3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      443    1518
Q4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0     1709    9804
Q4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1      776    9804
Q4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0     5051    9804
Q4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1     2268    9804
Q2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0       13      84
Q2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1        6      84
Q2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0       38      84
Q2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       27      84
Q1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0        9      70
Q1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1        6      70
Q1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0       30      70
Q1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1       25      70
Q1         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control               0       70     937
Q1         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control               1      341     937
Q1         0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 0      147     937
Q1         0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 1      379     937
Q2         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control               0       27     205
Q2         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control               1      110     205
Q2         0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 0       17     205
Q2         0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 1       51     205
Q4         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control               0        1       7
Q4         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control               1        5       7
Q4         0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 0        0       7
Q4         0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 1        1       7
Q3         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control               1        1       3
Q3         0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 1        2       3
Q1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       42     441
Q1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       35     441
Q1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      166     441
Q1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1      198     441
Q3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       29     491
Q3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       51     491
Q3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      194     491
Q3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1      217     491
Q4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       43     489
Q4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       34     489
Q4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      247     489
Q4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1      165     489
Q2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0       34     386
Q2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       29     386
Q2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      143     386
Q2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1      180     386
Q3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       65     333
Q3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       35     333
Q3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       62     333
Q3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       43     333
Q3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       78     333
Q3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       50     333
Q1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       57     354
Q1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       59     354
Q1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       61     354
Q1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       64     354
Q1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       57     354
Q1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       56     354
Q4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       62     231
Q4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       26     231
Q4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       44     231
Q4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       27     231
Q4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       43     231
Q4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       29     231
Q2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       44     238
Q2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       42     238
Q2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       39     238
Q2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       41     238
Q2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       37     238
Q2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       35     238
Q1         0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       78     373
Q1         0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       99     373
Q1         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       74     373
Q1         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1      122     373
Q2         0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       52     257
Q2         0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       81     257
Q2         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       57     257
Q2         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       67     257
Q3         0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       32     126
Q3         0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       37     126
Q3         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       26     126
Q3         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       31     126
Q4         0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0       11      57
Q4         0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       14      57
Q4         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0       18      57
Q4         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       14      57
Q1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0     2816   10507
Q1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1     2359   10507
Q1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     3080   10507
Q1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1     2252   10507
Q2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0     1129    4080
Q2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      873    4080
Q2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     1222    4080
Q2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      856    4080
Q4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0      933    2467
Q4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      291    2467
Q4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0      965    2467
Q4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      278    2467
Q3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0     1549    5023
Q3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      969    5023
Q3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     1606    5023
Q3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      899    5023
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0      305    2253
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1      266    2253
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      343    2253
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1      347    2253
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0      163    2253
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1      175    2253
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0      336    2253
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1      318    2253
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       73     509
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       64     509
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       84     509
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       64     509
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       36     509
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       46     509
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       67     509
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       75     509
Q2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0       33     281
Q2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1       41     281
Q2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0       54     281
Q2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1       42     281
Q2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0       23     281
Q2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1       27     281
Q2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0       36     281
Q2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1       25     281
Q4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0        8      34
Q4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1        5      34
Q4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0        8      34
Q4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1        3      34
Q4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0        1      34
Q4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1        2      34
Q4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0        4      34
Q4         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1        3      34


The following strata were considered:

* feducyrs: Q1, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q1, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* feducyrs: Q1, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* feducyrs: Q1, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q1, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* feducyrs: Q1, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* feducyrs: Q1, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* feducyrs: Q1, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q1, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q1, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q1, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q1, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* feducyrs: Q1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q1, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* feducyrs: Q1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q1, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q1, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* feducyrs: Q1, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* feducyrs: Q1, agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q1, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* feducyrs: Q1, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* feducyrs: Q1, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* feducyrs: Q1, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q1, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q1, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q1, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q1, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* feducyrs: Q1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q1, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* feducyrs: Q1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q1, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q1, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* feducyrs: Q1, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* feducyrs: Q1, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q1, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* feducyrs: Q1, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* feducyrs: Q1, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* feducyrs: Q1, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q1, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q1, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q1, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q1, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* feducyrs: Q1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q1, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* feducyrs: Q1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q2, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q2, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* feducyrs: Q2, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* feducyrs: Q2, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q2, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* feducyrs: Q2, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* feducyrs: Q2, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* feducyrs: Q2, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q2, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q2, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q2, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q2, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q2, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* feducyrs: Q2, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q2, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* feducyrs: Q2, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q2, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q2, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q2, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* feducyrs: Q2, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* feducyrs: Q2, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* feducyrs: Q2, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* feducyrs: Q2, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* feducyrs: Q2, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q2, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q2, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q2, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q2, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q2, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* feducyrs: Q2, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q2, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* feducyrs: Q2, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q2, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q2, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q2, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* feducyrs: Q2, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* feducyrs: Q2, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q2, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* feducyrs: Q2, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* feducyrs: Q2, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* feducyrs: Q2, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q2, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q2, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q2, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q2, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q2, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* feducyrs: Q2, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q2, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* feducyrs: Q2, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q2, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q3, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q3, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* feducyrs: Q3, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* feducyrs: Q3, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q3, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* feducyrs: Q3, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* feducyrs: Q3, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* feducyrs: Q3, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q3, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q3, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q3, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q3, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q3, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* feducyrs: Q3, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q3, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* feducyrs: Q3, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q3, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q3, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q3, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* feducyrs: Q3, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* feducyrs: Q3, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* feducyrs: Q3, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* feducyrs: Q3, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* feducyrs: Q3, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q3, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q3, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q3, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q3, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q3, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* feducyrs: Q3, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q3, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* feducyrs: Q3, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q3, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q3, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q3, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* feducyrs: Q3, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* feducyrs: Q3, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q3, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* feducyrs: Q3, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* feducyrs: Q3, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* feducyrs: Q3, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q3, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q3, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q3, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q3, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q3, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* feducyrs: Q3, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q3, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* feducyrs: Q3, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q3, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q4, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q4, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* feducyrs: Q4, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* feducyrs: Q4, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q4, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* feducyrs: Q4, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* feducyrs: Q4, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* feducyrs: Q4, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q4, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q4, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q4, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q4, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q4, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* feducyrs: Q4, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q4, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* feducyrs: Q4, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q4, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q4, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q4, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* feducyrs: Q4, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* feducyrs: Q4, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* feducyrs: Q4, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* feducyrs: Q4, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* feducyrs: Q4, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q4, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q4, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q4, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q4, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q4, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* feducyrs: Q4, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q4, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* feducyrs: Q4, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q4, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q4, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q4, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* feducyrs: Q4, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* feducyrs: Q4, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q4, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* feducyrs: Q4, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* feducyrs: Q4, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* feducyrs: Q4, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q4, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q4, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q4, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q4, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q4, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* feducyrs: Q4, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q4, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* feducyrs: Q4, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* feducyrs: Q4, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* feducyrs: Q3, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q2, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q1, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q4, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q1, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* feducyrs: Q2, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* feducyrs: Q4, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* feducyrs: Q3, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* feducyrs: Q1, agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q3, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* feducyrs: Q4, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* feducyrs: Q4, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q3, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q3, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q4, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q1, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q1, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q2, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q1, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q4, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q3, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q2, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q3, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q4, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* feducyrs: Q3, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* feducyrs: Q4, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* feducyrs: Q4, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q4, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q2, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* feducyrs: Q3, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* feducyrs: Q3, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q4, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* feducyrs: Q2, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* feducyrs: Q4, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* feducyrs: Q4, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q3, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q3, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q4, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q1, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q1, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q2, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q1, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* feducyrs: Q4, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q3, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q4, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* feducyrs: Q4, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* feducyrs: Q2, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* feducyrs: Q4, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* feducyrs: Q4, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* feducyrs: Q3, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q1, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* feducyrs: Q1, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* feducyrs: Q4, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q3, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* feducyrs: Q4, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   67
##   Zinc    66
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   99
##   Zinc    98
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   43
##   Zinc    23
##          ever_stunted
## tr.x        0
##   Control   0
##   LNS       0
##   MMN       0
##   Other   227
##   Zinc    263
```




# Results Detail

## Results Plots
![](/tmp/e97180a4-64a3-41f0-a1fd-8ca15f7df6ae/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 141 rows containing missing values (geom_errorbar).
```

![](/tmp/e97180a4-64a3-41f0-a1fd-8ca15f7df6ae/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/e97180a4-64a3-41f0-a1fd-8ca15f7df6ae/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e97180a4-64a3-41f0-a1fd-8ca15f7df6ae/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


feducyrs   agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Q4         0-24 months   ki1000304-EU                INDIA                          Control              NA                0.4254032   0.3818705   0.4689359
Q4         0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.3390929   0.2959495   0.3822362
Q4         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3670213   0.3500394   0.3840031
Q4         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.3307494   0.3139323   0.3475664
Q4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.3700000   0.3264928   0.4135072
Q4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.2627119   0.2196305   0.3057932
Q4         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.4430108   0.3978380   0.4881835
Q4         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.4226190   0.3794708   0.4657673
Q4         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.5250000   0.4552273   0.5947727
Q4         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.4726027   0.4047047   0.5405008
Q4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.3275862   0.2065005   0.4486719
Q4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1630435   0.0873715   0.2387154
Q4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1730769   0.0699965   0.2761574
Q4         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1021242   0.0884908   0.1157576
Q4         0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0852982   0.0729559   0.0976405
Q4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3122736   0.3076551   0.3168922
Q4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3098784   0.3019689   0.3177879
Q4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4415584   0.4240756   0.4590413
Q4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4004854   0.3605806   0.4403903
Q4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2954545   0.1995063   0.3914028
Q4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.3802817   0.2671183   0.4934451
Q4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.4027778   0.2887494   0.5168061
Q4         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.5600000   0.4738992   0.6461008
Q4         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4375000   0.3401487   0.5348513
Q4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2377451   0.2225086   0.2529816
Q4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2236525   0.2084445   0.2388604
Q4         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.2988506   0.2436136   0.3540875
Q4         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                NA                0.2153846   0.1725070   0.2582622
Q4         0-6 months    ki1000304-ZnMort            INDIA                          Other                NA                0.2888889   0.1556761   0.4221016
Q4         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                 NA                0.3000000   0.1571443   0.4428557
Q4         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2446809   0.1869743   0.3023874
Q4         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.1760000   0.1422170   0.2097830
Q4         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0530240   0.0442541   0.0617939
Q4         0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0404917   0.0321592   0.0488241
Q4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1638066   0.1596015   0.1680117
Q4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1689117   0.1616199   0.1762036
Q4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2142857   0.1973911   0.2311803
Q4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.1985019   0.1570940   0.2399097
Q4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1446009   0.1324852   0.1567167
Q4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1135496   0.1028649   0.1242344
Q4         6-24 months   ki1000304-EU                INDIA                          Control              NA                0.0231023   0.0061734   0.0400312
Q4         6-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.0312500   0.0121711   0.0503289
Q4         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.0632184   0.0530291   0.0734077
Q4         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.0456204   0.0366689   0.0545720
Q4         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2666667   0.2041591   0.3291742
Q4         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2252252   0.1827065   0.2677440
Q4         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0317195   0.0198342   0.0436049
Q4         6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0305832   0.0240094   0.0371570
Q4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1313387   0.1275544   0.1351230
Q4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1238572   0.1175293   0.1301851
Q4         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.1785714   0.1625903   0.1945526
Q4         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.1655405   0.1298853   0.2011958
Q4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.1794872   0.0936753   0.2652991
Q4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.2105263   0.1041373   0.3169153
Q4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.2812500   0.1702608   0.3922392
Q4         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3000000   0.2154326   0.3845674
Q4         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2857143   0.1870728   0.3843558
Q4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1028152   0.0899967   0.1156337
Q4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1244493   0.1094895   0.1394091
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4641350   0.4192279   0.5090422
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.4111969   0.3688131   0.4535807
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4913793   0.4610467   0.5217119
Q1         0-24 months   ki1000304-EU                INDIA                          Control              NA                0.5555556   0.4918196   0.6192915
Q1         0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.5726872   0.5082646   0.6371098
Q1         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.5525672   0.5266172   0.5785173
Q1         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.5584046   0.5343963   0.5824128
Q1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.7045455   0.6535507   0.7555402
Q1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.5974026   0.5461284   0.6486768
Q1         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.6341463   0.5681276   0.7001651
Q1         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.6197917   0.5510407   0.6885426
Q1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.7368421   0.6836384   0.7900458
Q1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.6851852   0.6358753   0.7344951
Q1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.7368421   0.7044998   0.7691844
Q1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.7637795   0.7067462   0.8208129
Q1         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.5333333   0.5037765   0.5628901
Q1         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.5047170   0.4549154   0.5545185
Q1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.4000000   0.3464911   0.4535089
Q1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.4545455   0.3504040   0.5586870
Q1         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.8296837   0.8137342   0.8456331
Q1         0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7205323   0.6989933   0.7420713
Q1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4545455   0.4351046   0.4739863
Q1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5439560   0.5016757   0.5862364
Q1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.5086207   0.4175164   0.5997250
Q1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.5120000   0.4242490   0.5997510
Q1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.4955752   0.4032594   0.5878910
Q1         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.5593220   0.5245684   0.5940757
Q1         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.6224490   0.5867390   0.6581590
Q1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4558454   0.4479289   0.4637619
Q1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.4223556   0.4141700   0.4305411
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.4658494   0.4137728   0.5179260
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.5028986   0.4559320   0.5498651
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.5177515   0.4458319   0.5896711
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4862385   0.4445283   0.5279488
Q1         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4411765   0.3660153   0.5163377
Q1         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                NA                0.4047619   0.3221808   0.4873430
Q1         0-6 months    ki1000304-ZnMort            INDIA                          Other                NA                0.4666667   0.2100260   0.7233073
Q1         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                 NA                0.5625000   0.3154080   0.8095920
Q1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.4047619   0.3754497   0.4340741
Q1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3666667   0.3173700   0.4159634
Q1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.3783784   0.3427969   0.4139598
Q1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.3809524   0.3152049   0.4466999
Q1         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.2000000   0.1763018   0.2236982
Q1         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.1698113   0.1324120   0.2072106
Q1         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.3723404   0.3304889   0.4141919
Q1         0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.2777778   0.2328842   0.3226713
Q1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2954545   0.2724190   0.3184901
Q1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3317757   0.2793479   0.3842035
Q1         0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.4285714   0.3697993   0.4873435
Q1         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3529412   0.2904006   0.4154818
Q1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3090533   0.3010873   0.3170193
Q1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2583499   0.2514708   0.2652291
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2079832   0.1670697   0.2488967
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2516340   0.2117488   0.2915192
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.2659176   0.2036700   0.3281652
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2636364   0.2229443   0.3043284
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2577904   0.2121442   0.3034366
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1844156   0.1456632   0.2231680
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2676630   0.2356663   0.2996598
Q1         6-24 months   ki1000304-EU                INDIA                          Control              NA                0.0862069   0.0350168   0.1373970
Q1         6-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.0740741   0.0245714   0.1235768
Q1         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.0886700   0.0676416   0.1096983
Q1         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.1085714   0.0872040   0.1299388
Q1         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.2682927   0.2008916   0.3356938
Q1         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.1190476   0.0691863   0.1689089
Q1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.4905660   0.3939712   0.5871608
Q1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3809524   0.3446570   0.4172478
Q1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.5000000   0.4519332   0.5480668
Q1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.6086957   0.5168368   0.7005545
Q1         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.3000000   0.2689436   0.3310564
Q1         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.3225806   0.2668018   0.3783595
Q1         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.6250000   0.5984148   0.6515852
Q1         6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.5201342   0.4844354   0.5558331
Q1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.1509434   0.1327973   0.1690895
Q1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2358079   0.1910810   0.2805347
Q1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3023256   0.2050849   0.3995663
Q1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.3298969   0.2361607   0.4236331
Q1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.3617021   0.2643923   0.4590120
Q1         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.2561983   0.2204811   0.2919156
Q1         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3636364   0.3208483   0.4064244
Q1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2229069   0.2135797   0.2322340
Q1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2365591   0.2270208   0.2460975
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3014862   0.2501258   0.3528466
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3009174   0.2550803   0.3467545
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.3180077   0.2366301   0.3993852
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2824427   0.2390451   0.3258404
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3906634   0.3432482   0.4380786
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3422983   0.2963002   0.3882964
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4020752   0.3674546   0.4366958
Q2         0-24 months   ki1000304-EU                INDIA                          Control              NA                0.5575758   0.4816787   0.6334728
Q2         0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.5438596   0.4690961   0.6186232
Q2         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.5160142   0.4858044   0.5462241
Q2         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.5095057   0.4802697   0.5387417
Q2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.4827586   0.4373888   0.5281284
Q2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.6239316   0.5797623   0.6681010
Q2         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.5843137   0.5237629   0.6448646
Q2         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.5308642   0.4680551   0.5936733
Q2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.6944444   0.6613316   0.7275573
Q2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.5546875   0.5011444   0.6082306
Q2         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.3015873   0.2733111   0.3298635
Q2         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.3947368   0.3424382   0.4470355
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2154812   0.1786129   0.2523494
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2351738   0.2085870   0.2617606
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2639175   0.2246814   0.3031537
Q2         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1338028   0.1064178   0.1611878
Q2         0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.1363636   0.1117902   0.1609370
Q2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3157895   0.2682297   0.3633493
Q2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.4153846   0.3221265   0.5086427
Q2         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.8029197   0.7582951   0.8475443
Q2         0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7500000   0.7157775   0.7842225
Q2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4603175   0.4402037   0.4804312
Q2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5572755   0.5118890   0.6026621
Q2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.4883721   0.3825039   0.5942403
Q2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.5125000   0.4027381   0.6222619
Q2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.4861111   0.3704204   0.6018018
Q2         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.6090226   0.5660214   0.6520237
Q2         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5403226   0.4979168   0.5827284
Q2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4360639   0.4238200   0.4483079
Q2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.4119346   0.4008746   0.4229945
Q2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.5540541   0.4362279   0.6718802
Q2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4375000   0.3345625   0.5404375
Q2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.5400000   0.3937287   0.6862713
Q2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4098361   0.2688220   0.5508501
Q2         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.1724138   0.0992559   0.2455717
Q2         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                NA                0.4615385   0.3701192   0.5529577
Q2         0-6 months    ki1000304-ZnMort            INDIA                          Other                NA                0.6315789   0.4121725   0.8509854
Q2         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                 NA                0.3600000   0.1696682   0.5503318
Q2         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3295455   0.2769456   0.3821453
Q2         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3271028   0.2876875   0.3665181
Q2         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.4782609   0.4280421   0.5284796
Q2         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.4084507   0.3216272   0.4952742
Q2         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.0793651   0.0627112   0.0960190
Q2         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.1210526   0.0861520   0.1559532
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0654008   0.0431382   0.0876635
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0672182   0.0514319   0.0830045
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0914761   0.0657063   0.1172459
Q2         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0638298   0.0454820   0.0821775
Q2         0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0571429   0.0421032   0.0721825
Q2         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.2368421   0.1475064   0.3261778
Q2         0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.3000000   0.2301412   0.3698588
Q2         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3611111   0.3377219   0.3845004
Q2         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3300971   0.2753208   0.3848733
Q2         0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.4347826   0.3585989   0.5109663
Q2         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3414634   0.2726627   0.4102642
Q2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3007607   0.2877830   0.3137383
Q2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2605714   0.2493031   0.2718397
Q2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3606557   0.2344577   0.4868538
Q2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2528736   0.1580125   0.3477347
Q2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.2888889   0.1392388   0.4385390
Q2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.1509434   0.0491969   0.2526899
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1864952   0.1431880   0.2298023
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1538462   0.1146040   0.1930883
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1897436   0.1579571   0.2215301
Q2         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.1161290   0.0901997   0.1420584
Q2         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.1020408   0.0781827   0.1258989
Q2         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.0972222   0.0597538   0.1346906
Q2         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.1833333   0.1386604   0.2280062
Q2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3846154   0.3204664   0.4487644
Q2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2643678   0.2167756   0.3119600
Q2         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.1730769   0.1466724   0.1994814
Q2         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.2450331   0.1938780   0.2961882
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1363636   0.1025531   0.1701742
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1275000   0.1043805   0.1506195
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1662404   0.1293269   0.2031539
Q2         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0437956   0.0157897   0.0718016
Q2         6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0555556   0.0418747   0.0692364
Q2         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.6133333   0.5364395   0.6902272
Q2         6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.5454545   0.4933028   0.5976063
Q2         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.1538462   0.1341749   0.1735175
Q2         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2473118   0.1959407   0.2986830
Q2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2615385   0.1543997   0.3686772
Q2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.3114754   0.1949346   0.4280163
Q2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.1923077   0.0848862   0.2997292
Q2         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.4042553   0.3517173   0.4567933
Q2         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2261905   0.1838510   0.2685299
Q2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1904340   0.1772318   0.2036363
Q2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2061006   0.1926020   0.2195991
Q2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3137255   0.1783508   0.4491002
Q2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2564103   0.1526883   0.3601322
Q2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.3157895   0.1803753   0.4512036
Q2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2352941   0.1043576   0.3662307
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3040293   0.2494383   0.3586203
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1856061   0.1386858   0.2325263
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2665441   0.2293717   0.3037166
Q3         0-24 months   ki1000304-EU                INDIA                          Control              NA                0.5227273   0.4373507   0.6081038
Q3         0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4836066   0.3947558   0.5724573
Q3         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4710983   0.4454489   0.4967477
Q3         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.4780220   0.4516953   0.5043487
Q3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.4215686   0.3694361   0.4737011
Q3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.3720930   0.3252364   0.4189496
Q3         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.4318182   0.3280254   0.5356109
Q3         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.6785714   0.5784067   0.7787361
Q3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.4649123   0.4002425   0.5295821
Q3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.5590551   0.5136048   0.6045054
Q3         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.8333333   0.7989057   0.8677609
Q3         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.7187500   0.6559559   0.7815441
Q3         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.2083333   0.1616324   0.2550343
Q3         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.2166667   0.1417611   0.2915723
Q3         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1428123   0.1290940   0.1565305
Q3         0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.1222189   0.1113809   0.1330570
Q3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3674541   0.3552998   0.3796084
Q3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3896218   0.3683835   0.4108602
Q3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.6375000   0.6203190   0.6546810
Q3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5279805   0.4875398   0.5684213
Q3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3500000   0.2563750   0.4436250
Q3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.4095238   0.3153246   0.5037230
Q3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.3906250   0.3059766   0.4752734
Q3         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.5362319   0.4715386   0.6009252
Q3         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5438596   0.4851326   0.6025867
Q3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3848292   0.3730460   0.3966124
Q3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.3588822   0.3481690   0.3695955
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.4671533   0.3797530   0.5545536
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4324324   0.3440013   0.5208636
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.5609756   0.4466365   0.6753147
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.5281690   0.4404224   0.6159156
Q3         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3333333   0.2494875   0.4171791
Q3         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                NA                0.3666667   0.2642217   0.4691116
Q3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.1515152   0.1265270   0.1765033
Q3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2941176   0.2797666   0.3084687
Q3         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.4047619   0.3594181   0.4501057
Q3         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.3645833   0.2973613   0.4318054
Q3         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0691334   0.0592140   0.0790528
Q3         0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0650369   0.0572359   0.0728379
Q3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1978417   0.1865459   0.2091376
Q3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.2000000   0.1798780   0.2201220
Q3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3846154   0.3625415   0.4066893
Q3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3076923   0.2608665   0.3545181
Q3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2469655   0.2366057   0.2573252
Q3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2142516   0.2039199   0.2245832
Q3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2056075   0.1233679   0.2878470
Q3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2250000   0.1463492   0.3036508
Q3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.3043478   0.1879346   0.4207611
Q3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2931034   0.2088721   0.3773348
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1371681   0.0922917   0.1820445
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.0889831   0.0526382   0.1253279
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1311828   0.1004814   0.1618842
Q3         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.0753769   0.0578517   0.0929020
Q3         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.1100917   0.0883441   0.1318394
Q3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2613636   0.2086388   0.3140885
Q3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3370787   0.2652219   0.4089355
Q3         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.6315789   0.5797405   0.6834174
Q3         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.5573770   0.4617356   0.6530185
Q3         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0410049   0.0329047   0.0491050
Q3         6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0372558   0.0329955   0.0415161
Q3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1582492   0.1477707   0.1687276
Q3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1909091   0.1714864   0.2103318
Q3         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2608696   0.2418251   0.2799141
Q3         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2528736   0.2079693   0.2977778
Q3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2048193   0.1178406   0.2917979
Q3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.2921348   0.1974882   0.3867815
Q3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.2285714   0.1481082   0.3090347
Q3         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.2708333   0.2010705   0.3405962
Q3         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2820513   0.2183743   0.3457282
Q3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1774611   0.1649889   0.1899334
Q3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1826985   0.1714542   0.1939428
Q3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3125000   0.2265835   0.3984165
Q3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2580645   0.1747538   0.3413752
Q3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.3000000   0.1800056   0.4199944
Q3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3333333   0.2365579   0.4301088


### Parameter: E(Y)


feducyrs   agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Q4         0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.3837331   0.3529392   0.4145269
Q4         0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3486239   0.3247068   0.3725409
Q4         0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.3119266   0.2502867   0.3735665
Q4         0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.4324045   0.4011959   0.4636132
Q4         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.4962406   0.3963574   0.5961238
Q4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2128713   0.1562824   0.2694602
Q4         0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0930233   0.0741330   0.1119135
Q4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3104855   0.3013262   0.3196448
Q4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4069530   0.3633662   0.4505398
Q4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.3549784   0.2929429   0.4170139
Q4         0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4912281   0.3602926   0.6221635
Q4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2306445   0.2091208   0.2521682
Q4         0-6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.2631579   0.1929227   0.3333931
Q4         0-6 months    ki1000304-ZnMort            INDIA                          NA                   NA                0.2941176   0.1966781   0.3915572
Q4         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2054795   0.1321878   0.2787711
Q4         0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0463320   0.0338058   0.0588583
Q4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1676140   0.1591964   0.1760316
Q4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2006472   0.1559214   0.2453731
Q4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1292002   0.1129957   0.1454047
Q4         6-24 months   ki1000304-EU                INDIA                          NA                   NA                0.0272873   0.0144839   0.0400907
Q4         6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.0542056   0.0406325   0.0677787
Q4         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2437811   0.1651214   0.3224408
Q4         6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0311060   0.0175204   0.0446916
Q4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1257562   0.1183827   0.1331297
Q4         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.1676136   0.1285375   0.2066898
Q4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2211055   0.1630509   0.2791601
Q4         6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.2916667   0.1617211   0.4216122
Q4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1142029   0.0944675   0.1339383
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4646365   0.4429671   0.4863059
Q1         0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.5639913   0.5186752   0.6093075
Q1         0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.5552632   0.5199100   0.5906163
Q1         0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.6545455   0.5817689   0.7273220
Q1         0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.6272040   0.5795784   0.6748296
Q1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.7093596   0.6369942   0.7817251
Q1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.7575758   0.6919873   0.8231642
Q1         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.5121951   0.4542648   0.5701254
Q1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.4428571   0.3256542   0.5600601
Q1         0-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7684098   0.7413848   0.7954349
Q1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5283447   0.4817010   0.5749883
Q1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.5056497   0.4534939   0.5578056
Q1         0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5924933   0.5425605   0.6424261
Q1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.4388503   0.4273624   0.4503382
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4909010   0.4654286   0.5163735
Q1         0-6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4210526   0.3093135   0.5327917
Q1         0-6 months    ki1000304-ZnMort            INDIA                          NA                   NA                0.5161290   0.3373027   0.6949553
Q1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3850575   0.3291843   0.4409306
Q1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.3803681   0.3056098   0.4551264
Q1         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.1777003   0.1333983   0.2220024
Q1         0-6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.3181818   0.2564942   0.3798694
Q1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3255814   0.2682918   0.3828710
Q1         0-6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3870968   0.3010170   0.4731766
Q1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2832188   0.2725409   0.2938966
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2461942   0.2240917   0.2682967
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2435550   0.2216353   0.2654746
Q1         6-24 months   ki1000304-EU                INDIA                          NA                   NA                0.0803571   0.0446777   0.1160365
Q1         6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.0978836   0.0678876   0.1278796
Q1         6-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.1927711   0.1073902   0.2781519
Q1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.4310345   0.3251417   0.5369272
Q1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.5862069   0.4821152   0.6902986
Q1         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.3170732   0.2532174   0.3809289
Q1         6-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.5590717   0.5143277   0.6038158
Q1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2198582   0.1714350   0.2682813
Q1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.3321300   0.2765660   0.3876940
Q1         6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3143939   0.2582834   0.3705045
Q1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2298830   0.2165468   0.2432192
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2981677   0.2722315   0.3241039
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3837429   0.3598099   0.4076759
Q2         0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.5505952   0.4973279   0.6038625
Q2         0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.5128676   0.4708265   0.5549088
Q2         0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.5536481   0.4896805   0.6176156
Q2         0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.5582329   0.5145739   0.6018920
Q2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.6186441   0.5359358   0.7013523
Q2         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.3715415   0.3118806   0.4312024
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2375064   0.2185698   0.2564431
Q2         0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1353591   0.0989645   0.1717538
Q2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3928571   0.2877888   0.4979255
Q2         0-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7853659   0.7290256   0.8417061
Q2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5414508   0.4916782   0.5912234
Q2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4957983   0.4321439   0.5594527
Q2         0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5758755   0.5153359   0.6364150
Q2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.4237745   0.4072154   0.4403337
Q2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4804270   0.4179865   0.5428676
Q2         0-6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3090909   0.1858358   0.4323460
Q2         0-6 months    ki1000304-ZnMort            INDIA                          NA                   NA                0.4772727   0.3279813   0.6265641
Q2         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3282051   0.2617153   0.3946950
Q2         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.4255319   0.3250459   0.5260179
Q2         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.1106719   0.0719375   0.1494064
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0728408   0.0612196   0.0844619
Q2         0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0598291   0.0361162   0.0835419
Q2         0-6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.2586207   0.1449463   0.3722951
Q2         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3347107   0.2751336   0.3942879
Q2         0-6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3908046   0.2876812   0.4939279
Q2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2804279   0.2631310   0.2977247
Q2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2642276   0.2053813   0.3230740
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1793612   0.1578329   0.2008894
Q2         6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.1092715   0.0740271   0.1445160
Q2         6-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.1363636   0.0775975   0.1951298
Q2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3157895   0.2308714   0.4007075
Q2         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.2266010   0.1688705   0.2843315
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1392565   0.1222176   0.1562953
Q2         6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0509915   0.0200202   0.0819628
Q2         6-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.5925926   0.4994928   0.6856924
Q2         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2311111   0.1759077   0.2863146
Q2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2584270   0.1939347   0.3229192
Q2         6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3202247   0.2514907   0.3889587
Q2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1985482   0.1796614   0.2174351
Q2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2752294   0.2127965   0.3376622
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2562442   0.2302080   0.2822805
Q3         0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.5039370   0.4423280   0.5655460
Q3         0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4746479   0.4378912   0.5114045
Q3         0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.3989362   0.3287520   0.4691204
Q3         0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.5523256   0.4777960   0.6268552
Q3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.5145228   0.4299259   0.5991197
Q3         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.7536232   0.6814685   0.8257779
Q3         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.2142857   0.1260107   0.3025608
Q3         0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1322194   0.1135446   0.1508943
Q3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3840580   0.3595829   0.4085330
Q3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5458248   0.5017401   0.5899096
Q3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.3843844   0.3320585   0.4367103
Q3         0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5396825   0.4523068   0.6270583
Q3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3718893   0.3559232   0.3878554
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4891945   0.4424528   0.5359362
Q3         0-6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3529412   0.2204808   0.4854016
Q3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2238806   0.1628579   0.2849032
Q3         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.3768116   0.2956670   0.4579562
Q3         0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0670298   0.0542515   0.0798082
Q3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1994796   0.1764038   0.2225554
Q3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3205128   0.2686470   0.3723786
Q3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2308056   0.2161117   0.2454995
Q3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2524272   0.2083565   0.2964978
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1218986   0.1008262   0.1429710
Q3         6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.0935252   0.0655454   0.1215049
Q3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2994350   0.2081161   0.3907540
Q3         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.5750000   0.4659909   0.6840091
Q3         6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0390668   0.0297892   0.0483444
Q3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1826678   0.1605840   0.2047516
Q3         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2540717   0.2052948   0.3028485
Q3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2418773   0.1913575   0.2923970
Q3         6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.2758621   0.1814004   0.3703237
Q3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1800841   0.1632938   0.1968743
Q3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2997543   0.2525001   0.3470085


### Parameter: RR


feducyrs   agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Q4         0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.7971093   0.6770284   0.9384883
Q4         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.9011722   0.8413011   0.9653039
Q4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           0.7100321   0.5802865   0.8687873
Q4         0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
Q4         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             0.9539702   0.8257870   1.1020507
Q4         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9001957   0.7399397   1.0951599
Q4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.4977117   0.2749792   0.9008568
Q4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.5283401   0.2621157   1.0649621
Q4         0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.8352399   0.6851748   1.0181719
Q4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9923297   0.9634834   1.0220395
Q4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9069817   0.8147675   1.0096326
Q4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.2871073   0.8285546   1.9994400
Q4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.3632479   0.8860745   2.0973911
Q4         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.7812500   0.5961106   1.0238898
Q4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9407237   0.8567923   1.0328771
Q4         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                Control           0.7207101   0.5492687   0.9456628
Q4         0-6 months    ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
Q4         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                 Other             1.0384615   0.5351966   2.0149651
Q4         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.7193043   0.5308434   0.9746730
Q4         0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           0.7636479   0.5864195   0.9944384
Q4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0311659   0.9806540   1.0842796
Q4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9263421   0.7411773   1.1577657
Q4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.7852620   0.6922837   0.8907279
Q4         6-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q4         6-24 months   ki1000304-EU                INDIA                          Zinc                 Control           1.3526786   0.5211607   3.5108930
Q4         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q4         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.7216324   0.5598050   0.9302406
Q4         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q4         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8445946   0.6239695   1.1432290
Q4         6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q4         6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.9641761   0.6254583   1.4863270
Q4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9430360   0.8893130   1.0000045
Q4         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q4         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9270270   0.7341716   1.1705424
Q4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.1729323   0.5849909   2.3517806
Q4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.5669643   0.8430035   2.9126535
Q4         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q4         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9523810   0.6098759   1.4872360
Q4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.2104180   1.0178870   1.4393657
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8859424   0.7691462   1.0204744
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0586991   0.9439063   1.1874523
Q1         0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           1.0308370   0.8778295   1.2105141
Q1         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           1.0105640   0.9482259   1.0770004
Q1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           0.8479263   0.7578763   0.9486759
Q1         0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             0.9773638   0.8394371   1.1379529
Q1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9298942   0.8403342   1.0289992
Q1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           1.0365579   0.9505524   1.1303452
Q1         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           0.9463443   0.8450843   1.0597376
Q1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.1363636   0.8715587   1.4816240
Q1         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8684422   0.8381191   0.8998623
Q1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1967033   1.0951078   1.3077240
Q1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.0066441   0.7856173   1.2898549
Q1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           0.9743513   0.7524580   1.2616790
Q1         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1128633   1.0226180   1.2110728
Q1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9265325   0.9027095   0.9509842
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0795303   0.9331230   1.2489091
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.1114139   0.9299788   1.3282462
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0437677   0.9065159   1.2018002
Q1         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                Control           0.9174603   0.7033176   1.1968042
Q1         0-6 months    ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
Q1         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                 Other             1.2053571   0.5962643   2.4366474
Q1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9058824   0.7804425   1.0514840
Q1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           1.0068027   0.8271546   1.2254682
Q1         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                Control           0.8490566   0.6611852   1.0903104
Q1         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.7460317   0.6127198   0.9083489
Q1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1229331   0.9415149   1.3393084
Q1         0-6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.8235294   0.6582165   1.0303611
Q1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8359397   0.8055186   0.8675096
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.2098765   0.9397114   1.5577137
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.2785533   0.9417418   1.7358247
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.2675849   0.9870848   1.6277948
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7153703   0.5434891   0.9416100
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0382973   0.8385678   1.2855982
Q1         6-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.8592593   0.3514560   2.1007648
Q1         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           1.2244444   0.8997025   1.6663999
Q1         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           0.4437229   0.2722715   0.7231387
Q1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.7765568   0.6247361   0.9652723
Q1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           1.2173913   1.0179396   1.4559228
Q1         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.0752688   0.8790059   1.3153530
Q1         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8322148   0.7676580   0.9022005
Q1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.5622271   1.2480076   1.9555597
Q1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.0911975   0.7104222   1.6760623
Q1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.1963993   0.7866220   1.8196432
Q1         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.4193548   1.1826653   1.7034136
Q1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.0612466   1.0013275   1.1247512
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9981135   0.7941663   1.2544356
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.0548001   0.7756775   1.4343631
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9368347   0.7447906   1.1783975
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8761975   0.7310737   1.0501295
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0292114   0.8869036   1.1943532
Q2         0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.9754005   0.8038316   1.1835888
Q2         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.9873869   0.9096737   1.0717392
Q2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           1.2924298   1.1489682   1.4538041
Q2         0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             0.9085260   0.7763034   1.0632691
Q2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.7987500   0.7167459   0.8901364
Q2         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.3088643   1.1127686   1.5395165
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0913892   0.8890323   1.3398056
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.2247823   0.9763826   1.5363770
Q2         0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           1.0191388   0.7739703   1.3419685
Q2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.3153846   1.0037902   1.7237034
Q2         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.9340909   0.8692790   1.0037350
Q2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.2106331   1.1037557   1.3278595
Q2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.0494048   0.7737486   1.4232664
Q2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           0.9953704   0.7214003   1.3733876
Q2         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.8871963   0.7983103   0.9859792
Q2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9446655   0.9086759   0.9820805
Q2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.7896341   0.5750095   1.0843684
Q2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           0.9746341   0.6906848   1.3753186
Q2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.7397041   0.4935920   1.1085313
Q2         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                Control           2.6769230   1.6759780   4.2756630
Q2         0-6 months    ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
Q2         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                 Other             0.5700000   0.3027836   1.0730436
Q2         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9925878   0.8151329   1.2086749
Q2         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.8540333   0.6737656   1.0825320
Q2         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.5252632   1.0677774   2.1787573
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0277880   0.6796698   1.5542079
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.3986989   0.8991447   2.1757996
Q2         0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           0.8952381   0.6050372   1.3246313
Q2         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           1.2666667   0.8131043   1.9732333
Q2         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9141150   0.7649602   1.0923525
Q2         0-6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.7853659   0.6013208   1.0257413
Q2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8663747   0.8150253   0.9209592
Q2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.7011494   0.4197701   1.1711423
Q2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           0.8010101   0.4288246   1.4962227
Q2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.4185249   0.1957977   0.8946127
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8249337   0.5842671   1.1647336
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0174182   0.7640914   1.3547330
Q2         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.8786848   0.6359559   1.2140575
Q2         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           1.8857142   1.1952390   2.9750688
Q2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.6873563   0.5386343   0.8771418
Q2         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.4157469   1.0931758   1.8335013
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9350000   0.6877130   1.2712062
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.2190963   0.8739524   1.7005455
Q2         6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           1.2685185   0.6402048   2.5134753
Q2         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8893281   0.7596044   1.0412056
Q2         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.6075269   1.2595810   2.0515891
Q2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.1909354   0.6838183   2.0741286
Q2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           0.7352941   0.3678107   1.4699338
Q2         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.5595238   0.4455048   0.7027240
Q2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.0822677   0.9838018   1.1905887
Q2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8173077   0.4523905   1.4765825
Q2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.0065789   0.5478506   1.8494115
Q2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.7500000   0.3708808   1.5166599
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.6104874   0.4477266   0.8324162
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.8767054   0.6984164   1.1005071
Q3         0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.9251604   0.7235279   1.1829836
Q3         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           1.0146970   0.9390808   1.0964018
Q3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           0.8826393   0.7398314   1.0530130
Q3         0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
Q3         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             1.5714286   1.1852052   2.0835107
Q3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.2024959   1.0236726   1.4125576
Q3         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.8625000   0.7830479   0.9500138
Q3         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.0400000   0.6887948   1.5702789
Q3         0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.8558014   0.7517884   0.9742050
Q3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0603279   0.9948308   1.1301373
Q3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8282048   0.7636138   0.8982592
Q3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.1700680   0.8222296   1.6650571
Q3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.1160714   0.7910095   1.5747161
Q3         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0142248   0.8626154   1.1924802
Q3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9325753   0.8935354   0.9733209
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9256757   0.7015898   1.2213341
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.2008384   0.9105964   1.5835917
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.1306118   0.8803414   1.4520310
Q3         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                Control           1.1000000   0.7553059   1.6019998
Q3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.9411765   1.6344993   2.3053947
Q3         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.9007353   0.7259393   1.1176198
Q3         0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           0.9407450   0.7807960   1.1334603
Q3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0109091   0.9004761   1.1348854
Q3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8000000   0.6799135   0.9412962
Q3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8675365   0.8138052   0.9248155
Q3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0943182   0.6432827   1.8615957
Q3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.4802372   0.8510505   2.5745851
Q3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.4255486   0.8710929   2.3329186
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.6487151   0.3843957   1.0947868
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9563649   0.6396270   1.4299486
Q3         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           1.4605505   1.0765111   1.9815937
Q3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.2896922   0.9621666   1.7287091
Q3         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Q3         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.8825137   0.7296482   1.0674053
Q3         6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Q3         6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.9085701   0.7236797   1.1406976
Q3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Q3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.2063830   1.0684818   1.3620821
Q3         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q3         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9693487   0.8000127   1.1745273
Q3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.4263054   0.8360651   2.4332398
Q3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.1159664   0.6428291   1.9373438
Q3         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Q3         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0414201   0.7393865   1.4668321
Q3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.0295128   0.9376958   1.1303203
Q3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Q3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8258065   0.5403791   1.2619960
Q3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           0.9600000   0.5908346   1.5598275
Q3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0666667   0.7151500   1.5909639


### Parameter: PAR


feducyrs   agecat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  ------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Q4         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0416702   -0.0713863   -0.0119540
Q4         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0183974   -0.0352391   -0.0015557
Q4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0580734   -0.1017380   -0.0144088
Q4         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0106062   -0.0431040    0.0218916
Q4         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0287594   -0.0986873    0.0411685
Q4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.1147149   -0.2118974   -0.0175324
Q4         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0091009   -0.0216416    0.0034397
Q4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0017881   -0.0096977    0.0061214
Q4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0346055   -0.0745324    0.0053214
Q4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0595238   -0.0181957    0.1372433
Q4         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0687719   -0.1674165    0.0298726
Q4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0071006   -0.0223020    0.0081008
Q4         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0356927   -0.0790732    0.0076878
Q4         0-6 months    ki1000304-ZnMort            INDIA                          Other                NA                 0.0052288   -0.0866984    0.0971559
Q4         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0392014   -0.0820180    0.0036152
Q4         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0066920   -0.0153135    0.0019296
Q4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0038075   -0.0034846    0.0110995
Q4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0136385   -0.0550507    0.0277738
Q4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0154007   -0.0261929   -0.0046086
Q4         6-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0041850   -0.0089202    0.0172903
Q4         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0090128   -0.0179798   -0.0000457
Q4         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0228856   -0.0671973    0.0214262
Q4         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0006135   -0.0071851    0.0059580
Q4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0055825   -0.0119109    0.0007458
Q4         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0109578   -0.0466166    0.0247010
Q4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0416183   -0.0288194    0.1120561
Q4         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0083333   -0.1069953    0.0903287
Q4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0113877   -0.0036367    0.0264121
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0005015   -0.0388332    0.0398363
Q1         0-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0084358   -0.0361946    0.0530661
Q1         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0026959   -0.0213132    0.0267051
Q1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0500000   -0.1019227    0.0019227
Q1         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0069423   -0.0530452    0.0391606
Q1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0274825   -0.0776607    0.0226957
Q1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.0207337   -0.0363261    0.0777934
Q1         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0211382   -0.0709611    0.0286846
Q1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0428571   -0.0614182    0.1471324
Q1         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0612739   -0.0830906   -0.0394572
Q1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0737992    0.0314001    0.1161983
Q1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0029710   -0.0776749    0.0717330
Q1         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0331713   -0.0026821    0.0690247
Q1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0169951   -0.0253742   -0.0086161
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0250516   -0.0194300    0.0695332
Q1         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0201238   -0.1028065    0.0625588
Q1         0-6 months    ki1000304-ZnMort            INDIA                          Other                NA                 0.0494624   -0.1352090    0.2341337
Q1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0197044   -0.0675848    0.0281760
Q1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.0019897   -0.0637580    0.0677375
Q1         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0222997   -0.0597306    0.0151313
Q1         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0541586   -0.0994777   -0.0088396
Q1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0301268   -0.0223276    0.0825813
Q1         0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0414747   -0.1043680    0.0214187
Q1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0258346   -0.0330388   -0.0186303
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0382110    0.0019402    0.0744818
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0142354   -0.0538091    0.0253383
Q1         6-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0058498   -0.0401926    0.0284931
Q1         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0092136   -0.0121772    0.0306045
Q1         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0755216   -0.1279332   -0.0231100
Q1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0595316   -0.1098731   -0.0091901
Q1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.0862069   -0.0061222    0.1785360
Q1         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0170732   -0.0387216    0.0728679
Q1         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0659283   -0.1019179   -0.0299386
Q1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0689148    0.0240202    0.1138093
Q1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0298044   -0.0518759    0.1114847
Q1         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0581956    0.0149212    0.1014700
Q1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0069762   -0.0025548    0.0165071
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0033185   -0.0472661    0.0406290
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0069205   -0.0477598    0.0339188
Q2         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0069805   -0.0612048    0.0472437
Q2         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0031466   -0.0323839    0.0260907
Q2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0708894    0.0257959    0.1159830
Q2         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0260808   -0.0687161    0.0165545
Q2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0758004   -0.1547395    0.0031388
Q2         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0699542    0.0174196    0.1224888
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0220253   -0.0103535    0.0544040
Q2         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0015563   -0.0228939    0.0260065
Q2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0770677   -0.0166202    0.1707556
Q2         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0175539   -0.0519467    0.0168390
Q2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0811333    0.0356059    0.1266608
Q2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0074262   -0.0771906    0.0920431
Q2         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0331471   -0.0757609    0.0094668
Q2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0122894   -0.0234220   -0.0011568
Q2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0736270   -0.1760774    0.0288234
Q2         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.1366771    0.0374817    0.2358725
Q2         0-6 months    ki1000304-ZnMort            INDIA                          Other                NA                -0.1543062   -0.3241660    0.0155536
Q2         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0013403   -0.0406149    0.0379342
Q2         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0527290   -0.1397664    0.0343085
Q2         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0313069   -0.0036646    0.0662784
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0074399   -0.0122124    0.0270923
Q2         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0040007   -0.0193015    0.0113001
Q2         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0217786   -0.0485136    0.0920708
Q2         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0264004   -0.0811943    0.0283936
Q2         0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0439780   -0.1134796    0.0255236
Q2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0203328   -0.0317841   -0.0088815
Q2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0964281   -0.2039043    0.0110481
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0071340   -0.0443302    0.0300622
Q2         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0068575   -0.0307288    0.0170138
Q2         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0391414   -0.0061309    0.0844137
Q2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0688259   -0.1311749   -0.0064769
Q2         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0535241    0.0021859    0.1048622
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0028928   -0.0264837    0.0322693
Q2         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0071959   -0.0059309    0.0203226
Q2         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0207407   -0.0732280    0.0317465
Q2         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0772650    0.0256853    0.1288446
Q2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0031115   -0.0882856    0.0820626
Q2         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0840306   -0.1283490   -0.0397122
Q2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0081142   -0.0053860    0.0216145
Q2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0384961   -0.1552699    0.0782776
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0477851   -0.0941835   -0.0013867
Q3         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0187903   -0.0780245    0.0404440
Q3         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0035496   -0.0227783    0.0298776
Q3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0226325   -0.0696221    0.0243572
Q3         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                 0.1205074    0.0476780    0.1933368
Q3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0496105   -0.0066638    0.1058849
Q3         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0797101   -0.1431219   -0.0162984
Q3         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0059524   -0.0689576    0.0808624
Q3         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0105928   -0.0224536    0.0012679
Q3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0166039   -0.0046400    0.0378478
Q3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0916752   -0.1322741   -0.0510762
Q3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0343844   -0.0446029    0.1133717
Q3         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0034507   -0.0552801    0.0621814
Q3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0129399   -0.0237181   -0.0021617
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0220412   -0.0535303    0.0976128
Q3         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0196078   -0.0829380    0.1221537
Q3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0723654    0.0172037    0.1275271
Q3         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0279503   -0.0952436    0.0393430
Q3         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0021036   -0.0099828    0.0057757
Q3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0016379   -0.0184842    0.0217600
Q3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0641026   -0.1110366   -0.0171685
Q3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0161599   -0.0266166   -0.0057032
Q3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0468197   -0.0252000    0.1188394
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0152695   -0.0536880    0.0231489
Q3         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0181483   -0.0036631    0.0399596
Q3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0380714   -0.0379213    0.1140641
Q3         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0565789   -0.1524735    0.0393156
Q3         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0019381   -0.0063238    0.0024477
Q3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0244186    0.0049790    0.0438583
Q3         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0067979   -0.0517033    0.0381075
Q3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0370580   -0.0376670    0.1117829
Q3         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0050287   -0.0586591    0.0687166
Q3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0026229   -0.0086225    0.0138683
Q3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0127457   -0.0872827    0.0617913


### Parameter: PAF


feducyrs   agecat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  ------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Q4         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.1085916   -0.1890000   -0.0336209
Q4         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0527716   -0.1049465   -0.0030602
Q4         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.1861765   -0.3667289   -0.0294760
Q4         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0245284   -0.1025224    0.0479481
Q4         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0579545   -0.2185178    0.0814514
Q4         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.5388933   -1.0652828   -0.1466675
Q4         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0978350   -0.2577236    0.0417277
Q4         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0057591   -0.0317100    0.0195390
Q4         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0850356   -0.1969568    0.0164205
Q4         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1676829   -0.0826074    0.3601081
Q4         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.1400000   -0.3951344    0.0684769
Q4         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0307859   -0.1010448    0.0349898
Q4         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.1356322   -0.3416908    0.0387797
Q4         0-6 months    ki1000304-ZnMort            INDIA                          Other                NA                 0.0177778   -0.3502117    0.2854746
Q4         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1907801   -0.4764368    0.0396085
Q4         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1444352   -0.3818262    0.0521731
Q4         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0227156   -0.0207434    0.0643243
Q4         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0679724   -0.3128820    0.1312510
Q4         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.1192007   -0.2173966   -0.0289253
Q4         6-24 months   ki1000304-EU                INDIA                          Control              NA                 0.1533683   -0.4839127    0.5169626
Q4         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.1662703   -0.3790492    0.0136781
Q4         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0938776   -0.3153055    0.0902736
Q4         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0197242   -0.2597730    0.1745834
Q4         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0443917   -0.0983105    0.0068801
Q4         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0653754   -0.3180475    0.1388591
Q4         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1882284   -0.1989072    0.4503552
Q4         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0285714   -0.4427291    0.2666959
Q4         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0997148   -0.0274904    0.2111718
Q1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0010794   -0.0872685    0.0822484
Q1         0-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0149573   -0.0674565    0.0910083
Q1         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0048552   -0.0391185    0.0469681
Q1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0763889   -0.1654772    0.0058895
Q1         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0110687   -0.0873244    0.0598391
Q1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0387427   -0.1148781    0.0321934
Q1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.0273684   -0.0487286    0.0979437
Q1         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0412698   -0.1476783    0.0552728
Q1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0967742   -0.1434309    0.2865184
Q1         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0797411   -0.1108825   -0.0494728
Q1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1396801    0.0675874    0.2061986
Q1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0058756   -0.1650165    0.1315268
Q1         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0559859   -0.0030030    0.1115055
Q1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0387265   -0.0587573   -0.0190746
Q1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0510319   -0.0441984    0.1375774
Q1         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0477941   -0.2753583    0.1391655
Q1         0-6 months    ki1000304-ZnMort            INDIA                          Other                NA                 0.0958333   -0.3452265    0.3922827
Q1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0511727   -0.1903748    0.0717511
Q1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.0052310   -0.1824740    0.1631399
Q1         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.1254902   -0.3901108    0.0887574
Q1         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1702128   -0.3510689   -0.0135663
Q1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0925325   -0.0662779    0.2276898
Q1         0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.1071429   -0.3033269    0.0595105
Q1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0912177   -0.1194217   -0.0637243
Q1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1552069   -0.0051828    0.2900043
Q1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0584485   -0.2340356    0.0921549
Q1         6-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0727969   -0.5963499    0.2790470
Q1         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0941286   -0.1284138    0.2727819
Q1         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.3917683   -0.8584189   -0.0422941
Q1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1381132   -0.2808203   -0.0113063
Q1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.1470588    0.0009286    0.2718152
Q1         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0538462   -0.1282934    0.2065831
Q1         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1179245   -0.1924893   -0.0480222
Q1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.3134510    0.1550114    0.4421824
Q1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0897371   -0.1925618    0.3052113
Q1         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1851041    0.0626071    0.2915933
Q1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0303466   -0.0107198    0.0697444
Q1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0111297   -0.1697930    0.1260135
Q2         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0180342   -0.1302213    0.0830171
Q2         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0126781   -0.1161214    0.0811779
Q2         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0061353   -0.0651601    0.0496188
Q2         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.1280406    0.0532122    0.1969551
Q2         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0467203   -0.1261057    0.0270688
Q2         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1225266   -0.2747766    0.0115397
Q2         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.1882810    0.0639694    0.2960831
Q2         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0927355   -0.0542665    0.2192402
Q2         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0114976   -0.1842668    0.1749012
Q2         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1961722   -0.0221734    0.3678773
Q2         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0223512   -0.0681357    0.0214708
Q2         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1498443    0.0750328    0.2186050
Q2         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0149783   -0.1713791    0.1716877
Q2         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0575594   -0.1389123    0.0179824
Q2         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0289999   -0.0564045   -0.0023062
Q2         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1532533   -0.3895625    0.0428692
Q2         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.4421907    0.1910255    0.6153757
Q2         0-6 months    ki1000304-ZnMort            INDIA                          Other                NA                -0.3233083   -0.7577658    0.0037667
Q2         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0040838   -0.1317437    0.1091761
Q2         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.1239130   -0.3795644    0.0843628
Q2         0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.2828798    0.0109321    0.4800545
Q2         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.1021398   -0.2120085    0.3348620
Q2         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0668693   -0.3783720    0.1742359
Q2         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0842105   -0.2040338    0.3034495
Q2         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0788752   -0.2708731    0.0841165
Q2         0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.1125320   -0.3305209    0.0697423
Q2         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0725064   -0.1173381   -0.0294734
Q2         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.3649433   -0.8418432   -0.0115248
Q2         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0397745   -0.2692466    0.1482104
Q2         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0627566   -0.3228306    0.1461858
Q2         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.2870370   -0.0116831    0.4975539
Q2         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.2179487   -0.4834291    0.0000202
Q2         6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.2362040    0.0392577    0.3927775
Q2         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0207733   -0.2146124    0.2105425
Q2         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.1411192   -0.1279091    0.3459790
Q2         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0350000   -0.1309774    0.0528326
Q2         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.3343195    0.1644853    0.4696317
Q2         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0120401   -0.4016217    0.2692570
Q2         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.2624113   -0.4558086   -0.0947060
Q2         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0408678   -0.0266756    0.1039677
Q2         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1398693   -0.6531091    0.2140252
Q3         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1864826   -0.3818901   -0.0187069
Q3         0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0372869   -0.1618582    0.0739282
Q3         0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0074784   -0.0491322    0.0610344
Q3         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0567320   -0.1890768    0.0608827
Q3         0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                 0.2181818    0.0709693    0.3420673
Q3         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0964205   -0.0091932    0.1909815
Q3         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.1057692   -0.2029743   -0.0164187
Q3         0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0277778   -0.3791461    0.3146368
Q3         0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0801155   -0.1824280    0.0133441
Q3         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0432328   -0.0111997    0.0947353
Q3         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1679571   -0.2583165   -0.0840863
Q3         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0894531   -0.1411339    0.2734458
Q3         0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0063939   -0.1078409    0.1088494
Q3         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0347951   -0.0652450   -0.0052156
Q3         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0450561   -0.1225091    0.1876077
Q3         0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0555556   -0.2632957    0.2939299
Q3         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.3232323    0.1301273    0.4734695
Q3         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0741758   -0.2844529    0.1016769
Q3         0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0313824   -0.1602264    0.0831534
Q3         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0082108   -0.0970549    0.1033760
Q3         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.2000000   -0.3898628   -0.0360735
Q3         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0700151   -0.1197022   -0.0225329
Q3         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1854781   -0.1561429    0.4261557
Q3         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1252643   -0.4883167    0.1492269
Q3         6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.1940472   -0.0220470    0.3644519
Q3         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.1271441   -0.1272495    0.3241271
Q3         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0983982   -0.2979959    0.0705067
Q3         6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0496094   -0.1750093    0.0624075
Q3         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1336779    0.0360448    0.2214223
Q3         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0267559   -0.2252659    0.1395928
Q3         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1532099   -0.2185120    0.4115335
Q3         6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0182292   -0.2367895    0.2206645
Q3         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0145650   -0.0489421    0.0742271
Q3         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0425205   -0.3239471    0.1790843
